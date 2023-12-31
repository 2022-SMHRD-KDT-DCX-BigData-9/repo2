package com.smhrd.bigdata.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.smhrd.bigdata.converter.ImageConverter;
import com.smhrd.bigdata.converter.ImageToBase64;
import com.smhrd.bigdata.entity.BoardInfo;
import com.smhrd.bigdata.entity.CommentInfo;
import com.smhrd.bigdata.entity.ReviewInfo;
import com.smhrd.bigdata.entity.UserInfo;

import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import com.smhrd.bigdata.service.BoardService;

@Controller
public class BoardController {
	@Autowired
	BoardService service;

	@GetMapping("/login")
	public String login() {
		return "login";
	}

	@GetMapping("/join")
	public String join() {
		return "join";
	}

	@GetMapping("/mypage")
	public String mypage(@ModelAttribute UserInfo userinfo, HttpSession session,
			@RequestParam(name = "page", defaultValue = "1") int page, Model model) throws IOException {
		// 세션에 저장되어있는 유저 정보 가져오기 (로그인 되어있는 값)
		UserInfo currentLogin = (UserInfo) session.getAttribute("loginUser");

		// 로그인이 안되어있으면 main으로 돌아가기
		if (currentLogin == null) {
			return "main";
		}

		userinfo.setUser_email(currentLogin.getUser_email());

		// 페이징 기능
		int postsPerPage = 8; // 한 페이지에 출력할 게시글 갯수
		int offset = (page - 1) * postsPerPage; // 어디서 부터 가져올지 설정하는 값; limit와 함께 쓰임

		List<BoardInfo> list = service.getUserPostsByPage(userinfo, offset, postsPerPage);

		for (BoardInfo b : list) {
			File file = new File("c:\\Users\\smhrd\\git\\project_1\\BootMember\\src\\main\\resources\\static\\image\\"
					+ b.getItem_img());
			ImageConverter<File, String> converter = new ImageToBase64();
			String fileStringValue = converter.convert(file);
			b.setItem_img(fileStringValue);
			model.addAttribute("userBoard", list);
		}

		// 사용자의 총 게시글 수 가져오기
		int totalUserPosts = service.getTotalUserPosts(userinfo);

		// 페이지 갯수 계산하는 식
		int totalPages = (int) Math.ceil((double) totalUserPosts / postsPerPage);

		model.addAttribute("userBoard", list);
		model.addAttribute("currentPage", page);
		model.addAttribute("totalPages", totalPages);

		int score = service.score_calculate(userinfo.getUser_email());
		model.addAttribute("score", score);
		// ==============================================================================
		// 사용자가 받은 후기 출력하기
		List<Map<String, Object>> review = service.getReviewsWithItemInfo(userinfo.getUser_email());
		model.addAttribute("review", review);

		return "mypage";
	}

	public String mypage() {
		return "mypage";
	}

	@GetMapping("/detail")
	public String detail() {
		return "detail";
	}

	@GetMapping("/upload")
	public String upload() {
		return "boardwrite";
	}

// --------------------------------------------------------------------------------------------------------------------------
	// 게시글 작성
	@PostMapping("/boardWrite")
	public String boardWrite(BoardInfo b, @RequestPart("photo") MultipartFile photo) {
		// 파일 이름이 겹치지 않도록 -> UUID (시스템 적으로 절대 겹치지 않는 문자열 생성)
		// UUID + OriginalFilename

		String newFileName = UUID.randomUUID().toString() + photo.getOriginalFilename();

		// 이미지 파일 저장 -> 지정한 경로에!
		// 런타임 오류: 코드가 실행되었을 때 발생하는 오류 -> 예외처리(try ~ catch)
		try { // 실행할 코드
			photo.transferTo(new File(newFileName));
		} catch (Exception e) { // 예외 발생했을 경우 어떻게 처리할 건지
			e.printStackTrace();
		}

		b.setItem_img(newFileName); // 새로 만들어준 이름으로 img 필드 초기화

		int result = service.boardWrite(b);
		if (result > 0)
			System.out.println("게시물 업로드 성공");
		return "redirect:/";
	}

// --------------------------------------------------------------------------------------------------------------------------
	// 게시글 상세 페이지 출력 기능
	@GetMapping("/board/{board_idx}")
	public String content(@PathVariable("board_idx") long board_idx, Model model) throws IOException {

		BoardInfo b = service.boardDetail(board_idx);

		File file = new File("c:\\Users\\smhrd\\git\\project_1\\BootMember\\src\\main\\resources\\static\\image\\"
				+ b.getItem_img());
		ImageConverter<File, String> converter = new ImageToBase64();
		String fileStringValue = converter.convert(file);

		b.setItem_img(fileStringValue);
		model.addAttribute("boardDetail", b);
		// 페이지에 출력하기 위해 model에 저장하기

		int result = service.view_increase(b);

		int score = service.score_calculate(b.getUser_email());
		model.addAttribute("score", score);

		return "detail"; // 페이지 이동
	}

// --------------------------------------------------------------------------------------------------------------------------
	// 카테고리 페이지 출력 기능
	@GetMapping("/product")
	public String boardCategory(HttpSession session, Model model) throws IOException {
		List<BoardInfo> list1 = service.electronics();

		ArrayList<BoardInfo> nlist1 = new ArrayList<BoardInfo>();

		for (BoardInfo b : list1) {
			File file = new File("c:\\Users\\smhrd\\git\\project_1\\BootMember\\src\\main\\resources\\static\\image\\"
					+ b.getItem_img());
			ImageConverter<File, String> converter = new ImageToBase64();
			String fileStringValue = converter.convert(file);
			b.setItem_img(fileStringValue);
			nlist1.add(b);
			model.addAttribute("boardDetail", b);

		}

		// -----------------------------------------------------------
		List<BoardInfo> list2 = service.books();
		ArrayList<BoardInfo> nlist2 = new ArrayList<BoardInfo>();

		for (BoardInfo b : list2) {
			File file = new File("c:\\Users\\smhrd\\git\\project_1\\BootMember\\src\\main\\resources\\static\\image\\"
					+ b.getItem_img());
			ImageConverter<File, String> converter = new ImageToBase64();
			String fileStringValue = converter.convert(file);
			b.setItem_img(fileStringValue);
			nlist2.add(b);
			model.addAttribute("boardDetail", b);

		}

		// -----------------------------------------------------------
		List<BoardInfo> list3 = service.sports();

		for (BoardInfo b : list3) {
			File file = new File("c:\\Users\\smhrd\\git\\project_1\\BootMember\\src\\main\\resources\\static\\image\\"
					+ b.getItem_img());
			ImageConverter<File, String> converter = new ImageToBase64();
			String fileStringValue = converter.convert(file);
			b.setItem_img(fileStringValue);
			model.addAttribute("boardDetail", b);
		}

		// -----------------------------------------------------------
		List<BoardInfo> list4 = service.clothes();

		for (BoardInfo b : list4) {
			File file = new File("c:\\Users\\smhrd\\git\\project_1\\BootMember\\src\\main\\resources\\static\\image\\"
					+ b.getItem_img());
			ImageConverter<File, String> converter = new ImageToBase64();
			String fileStringValue = converter.convert(file);
			b.setItem_img(fileStringValue);
			model.addAttribute("boardDetail", b);

		}
		// -----------------------------------------------------------
		List<BoardInfo> list5 = service.lifegoods();
		for (BoardInfo b : list5) {
			File file = new File("c:\\Users\\smhrd\\git\\project_1\\BootMember\\src\\main\\resources\\static\\image\\"
					+ b.getItem_img());
			ImageConverter<File, String> converter = new ImageToBase64();
			String fileStringValue = converter.convert(file);
			b.setItem_img(fileStringValue);
			model.addAttribute("boardDetail", b);

		}
		// -----------------------------------------------------------
		session.setAttribute("electronics", list1);
		session.setAttribute("books", list2);
		session.setAttribute("sports", list3);
		session.setAttribute("clothes", list4);
		session.setAttribute("lifegoods", list5);

		return "product"; // 페이지 이동
	}

//--------------------------------------------------------------------------------------------------------------------------------------------------
	// 각 카테고리 선택시 해당 카테고리에만 해당되는 게시물 출력 기능
	@GetMapping("/{item_category}")
	public String category(@PathVariable String item_category, HttpSession session,
			@RequestParam(name = "page", defaultValue = "1") int page, Model model) throws IOException {

		// 선택된 카테고리를 담는 List<BoardInfo>
		List<BoardInfo> categoryList = null;

		// 카테고리 선택시 해당 카테고리 관련된 메소드 불러오기
		if ("electronics".equals(item_category)) {
			categoryList = service.electronics();
		} else if ("books".equals(item_category)) {
			categoryList = service.books();
		} else if ("sports".equals(item_category)) {
			categoryList = service.sports();
		} else if ("clothes".equals(item_category)) {
			categoryList = service.clothes();
		} else if ("lifegoods".equals(item_category)) {
			categoryList = service.lifegoods();
		}

		// 페이징 관련 식 계산
		int postsPerPage = 8; // 페이지 당 게시글 수
		int offset = (page - 1) * postsPerPage; // 어디서 부터 가져올지 설정하는 값; limit와 함께 쓰인다

		// 선택된 카테고리 페이지에 해당하는 List<BoardInfo> 추출하기
		int fromIndex = offset; // 시작 인덱스
		int toIndex = Math.min(offset + postsPerPage, categoryList.size()); // 가장 작은 값을 반환한다
		List<BoardInfo> paginatedList = categoryList.subList(fromIndex, toIndex); // fromIndex부터 toIndex까지 반환한다

		// 사진 출력 관련 for문
		for (BoardInfo b : paginatedList) {
			File file = new File("c:\\Users\\smhrd\\git\\project_1\\BootMember\\src\\main\\resources\\static\\image\\"
					+ b.getItem_img());
			ImageConverter<File, String> converter = new ImageToBase64();
			String fileStringValue = converter.convert(file);
			b.setItem_img(fileStringValue);
		}

		// 카테고리와 페이징 기능이 적용된 게시글 리스트 저장
		model.addAttribute("category", item_category);
		model.addAttribute("categoryList", paginatedList);

		// 페이징 자체 설정
		int totalPosts = categoryList.size(); // 전체 게시글 수
		int totalPages = (int) Math.ceil((double) totalPosts / postsPerPage); // 페이징 갯수
		model.addAttribute("currentPage", page);
		model.addAttribute("totalPages", totalPages);

		return item_category;
	}

// ---------------------------------------------------------------------------------------------------------------
	// 메인페이지에 조회수가 높은 상위 8개 + 추천 기능 출력
	@GetMapping("/")
	public String boardRanking(@ModelAttribute UserInfo userinfo, HttpSession session) throws IOException {
		List<BoardInfo> boardRanking = service.boardRanking();

		// 세션에 저장되어있는 유저 정보 가져오기

		UserInfo result = (UserInfo) session.getAttribute("loginUser");

		// 세션에 저장되어있는 유저 정보 가져오기

		System.out.println(result);

		if (result != null) {
			List<BoardInfo> recommendation = service.recommendation(result);
			for (BoardInfo r : recommendation) {
				File file = new File(
						"c:\\Users\\smhrd\\git\\project_1\\BootMember\\src\\main\\resources\\static\\image\\"
								+ r.getItem_img());
				ImageConverter<File, String> converter = new ImageToBase64();
				String fileStringValue = converter.convert(file);
				r.setItem_img(fileStringValue);
			}
			session.setAttribute("recommendation", recommendation);
		}

		for (BoardInfo b : boardRanking) {

			File file = new File("c:\\Users\\smhrd\\git\\project_1\\BootMember\\src\\main\\resources\\static\\image\\"
					+ b.getItem_img());
			ImageConverter<File, String> converter = new ImageToBase64();
			String fileStringValue = converter.convert(file);
			b.setItem_img(fileStringValue);
		}

		// 조회수 높은 상위 8개 정보 세션에 저장
		session.setAttribute("boardRanking", boardRanking);
		// 페이지 이동
		return "main";
	}

// ---------------------------------------------------------------------------------------------------------------
	// 검색 기능
	@RequestMapping("/search")
	public String m1(@RequestParam(value = "item_name", required = false) String no, Model model) throws IOException {
		System.out.println(no);
		List<BoardInfo> list = service.search(no);
		System.out.println(list);

		for (BoardInfo b : list) {

			File file = new File("c:\\Users\\smhrd\\git\\project_1\\BootMember\\src\\main\\resources\\static\\image\\"
					+ b.getItem_img());
			ImageConverter<File, String> converter = new ImageToBase64();
			String fileStringValue = converter.convert(file);
			b.setItem_img(fileStringValue);
		}

		model.addAttribute("search_value", list);
		return "search";
	}

	// 거래 완료를 누르면 두 사람에게 review_authority를 줌
	/*
	 * @GetMapping("/review_ok") public String review_author(String user_emailone,
	 * String user_emailtwo) { System.out.println(user_email);
	 * System.out.println(user_emailone); System.out.println(user_emailtwo); int
	 * result = service.review_author(user_emailone, user_emailtwo);
	 * System.out.println(result); return "redirect:/"; }
	 */

	// 후기 작성 완료시 후기 내용 저장 및 review_authority 초기화
	@GetMapping("/review_save")
	public String review_save(ReviewInfo reviewinfo) {
		int result = service.review_save(reviewinfo);
		if (result > 0)
			System.out.println("후기 작성 성공");
		int result2 = service.review_noauthor(reviewinfo.getUser_email());
		return "redirect:/";
	}

	// 댓글 작성 기능
	@PostMapping("/submit_comment")
	public ResponseEntity<List<CommentInfo>> submitComment(@ModelAttribute CommentInfo commentInfo,
			HttpSession session) {
		// 현재 로그인한 사용자의 이메일 주소를 세션에서 가져와 CommentInfo 객체에 저장한다
		UserInfo currentLogin = (UserInfo) session.getAttribute("loginUser");
		commentInfo.setUser_email(currentLogin.getUser_email());

		// 댓글 추가 메소드
		int result = service.insert_comment(commentInfo);

		// 댓글 목록을 다시 불러오고 반환
		List<CommentInfo> comments = service.getCommentsForBoard(commentInfo.getBoard_idx());

		// HttpStatus.OK와 함께 댓글 목록을 반환
		// ResponseEntity : 응답에 포함할 데이터 (여기서는 댓글 목록)를 명시적으로 설정할 수 있음
		return new ResponseEntity<>(comments, HttpStatus.OK);
	}

	// 댓글 조회
	/*
	 * @GetMapping("/{board_idx}/comments")
	 * 
	 * @ResponseBody // 댓글 목록을 JSON 형식으로 응답하고, 이 응답은 클라이언트에서 처리된다 public
	 * List<CommentInfo> getCommentsForBoard(@PathVariable Long board_idx) { //
	 * board_idx에 해당하는 게시물에 대한 댓글 목록을 DB에서 가져온다 List<CommentInfo> comments =
	 * service.getCommentsForBoard(board_idx);
	 * 
	 * return comments; }
	 */

// ---------------------------------------------------------------------------------------------------------------
	// 댓글 작성 기능
	/*
	 * @PostMapping("/submit_comment") public ResponseEntity<List<CommentInfo>>
	 * submitComment(@ModelAttribute CommentInfo commentInfo, HttpSession session) {
	 * // 현재 로그인한 사용자의 이메일 주소를 세션에서 가져와 CommentInfo 객체에 저장한다 UserInfo currentLogin =
	 * (UserInfo) session.getAttribute("loginUser");
	 * commentInfo.setUser_email(currentLogin.getUser_email());
	 * 
	 * // 댓글 추가 메소드 int result = service.insert_comment(commentInfo);
	 * 
	 * // 댓글 목록을 다시 불러오고 반환 List<CommentInfo> comments =
	 * service.getCommentsForBoard(commentInfo.getBoard_idx());
	 * 
	 * // HttpStatus.OK와 함께 댓글 목록을 반환 // ResponseEntity : 응답에 포함할 데이터 (여기서는 댓글 목록)를
	 * 명시적으로 설정할 수 있음 return new ResponseEntity<>(comments, HttpStatus.OK); }
	 */

	// 댓글 조회
	@GetMapping("/{board_idx}/comments")
	@ResponseBody // 댓글 목록을 JSON 형식으로 응답하고, 이 응답은 클라이언트에서 처리된다
	public List<CommentInfo> getCommentsForBoard(@PathVariable Long board_idx) {
		// board_idx에 해당하는 게시물에 대한 댓글 목록을 DB에서 가져온다
		List<CommentInfo> comments = service.getCommentsForBoard(board_idx);

		return comments;
	}

// ---------------------------------------------------------------------------------------------------------------
	// 메일 입력하면 authority 1로 설정해주는 기능
	@GetMapping("/review_ok")
	public String review_author(String user_emailone, String user_emailtwo) {
		int result = service.review_author(user_emailone, user_emailtwo);
		return "redirect:/";
	}

	// 후기 작성 페이지로 이동하는 기능
	@PostMapping("/review_testPage")
	public String review_testPage() {
		return "test";
	}

	// 이메일 검색 시 해당 이메일로 작성된 게시글 불러오는 기능
	@PostMapping("/review_test")
	public String review_test(@RequestParam String writer_email, HttpSession session) {

		List<BoardInfo> list = service.review_test(writer_email);

		session.setAttribute("userPosts", list);

		return "test";
	}

	// 검색 결과를 선택하고 리뷰 작성 후 DB로 저장하는 기능
	@PostMapping("/selected_post")
	public String selected_post(ReviewInfo reviewinfo, HttpSession session) {
		UserInfo currentLogin = (UserInfo) session.getAttribute("loginUser");
		reviewinfo.setUser_email(currentLogin.getUser_email());

		List<BoardInfo> boardList = (List<BoardInfo>) session.getAttribute("userPosts");
		reviewinfo.setBoard_idx(boardList.get(0).getBoard_idx());
		reviewinfo.setWriter_email(boardList.get(0).getUser_email());

		Map<String, Object> paramMap = new HashMap<>();
		paramMap.put("user_emailone", reviewinfo.getUser_email());
		paramMap.put("board_idx", reviewinfo.getBoard_idx());
		paramMap.put("writer_email", reviewinfo.getWriter_email());
		paramMap.put("review_content", reviewinfo.getReview_content());
		paramMap.put("review_ratings", reviewinfo.getReview_ratings());

		service.selected_post(paramMap);
		service.review_noauthor(reviewinfo.getUser_email());

		return "main";
	}

}
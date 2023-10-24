package com.smhrd.bigdata.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.smhrd.bigdata.converter.ImageConverter;
import com.smhrd.bigdata.converter.ImageToBase64;
import com.smhrd.bigdata.entity.BoardInfo;
import com.smhrd.bigdata.entity.UserInfo;

import org.springframework.web.bind.annotation.RequestPart;
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
	public String mypage(@ModelAttribute UserInfo userinfo, HttpSession session) {
		// 세션에 저장되어있는 유저 정보 가져오기 (로그인 되어있는 값)
		UserInfo currentLogin = (UserInfo) session.getAttribute("loginUser");

		// 로그인이 안되어있으면 main으로 돌아가기
		if (currentLogin == null) {
			return "main";
		}

		userinfo.setUser_email(currentLogin.getUser_email());

		List<BoardInfo> list = service.userBoard(userinfo);

		System.out.println(list);

		session.setAttribute("userBoard", list);
		
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

	// 게시글 작성
	// --------------------------------------------------------------------------------------------------------------------------
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

	// 게시글 리스트 출력 기능 ---- 필요 없는듯?
	@GetMapping("/boardList")
	public String boardInfo(Model model) {
		List<BoardInfo> list = service.boardList();

		model.addAttribute("boardList", list);
		// 페이지에 출력하기 위해 model에 저장하기

		return ""; // 페이지 이동
	}


	// 게시글 상세 페이지 출력 기능
	@GetMapping("/board/{board_idx}")
	public String content(@PathVariable("board_idx") long board_idx, Model model) throws IOException {

		BoardInfo b = service.boardDetail(board_idx);

		File file = new File(
				"c:\\Users\\smhrd\\git\\project\\BootMember\\src\\main\\resources\\static\\image\\" + b.getItem_img());
//		c:\\uploadImage\\
		ImageConverter<File, String> converter = new ImageToBase64();
		String fileStringValue = converter.convert(file);

		b.setItem_img(fileStringValue);
		model.addAttribute("boardDetail", b);
		System.out.println(b);
		// 페이지에 출력하기 위해 model에 저장하기

		return "detail"; // 페이지 이동
	}


//-------------------------------------------------------------------------------------------------------------------------------------------



	// 카테고리 페이지 출력 기능
	@GetMapping("/product")
	public String boardCategory(HttpSession session, Model model) throws IOException {
		List<BoardInfo> list1 = service.electronics();

		ArrayList<BoardInfo> nlist1 = new ArrayList<BoardInfo>();

		for (BoardInfo b : list1) {
			/*
			 * long num = 100541759498485809L; if (b.getBoard_idx() == num) {
			 */
			File file = new File("c:\\Users\\smhrd\\git\\project\\BootMember\\src\\main\\resources\\static\\image\\"
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
			/*
			 * long num = 100541759498485809L; if (b.getBoard_idx() == num) {
			 */
			File file = new File("c:\\Users\\smhrd\\git\\project\\BootMember\\src\\main\\resources\\static\\image\\"
					+ b.getItem_img());
			ImageConverter<File, String> converter = new ImageToBase64();
			String fileStringValue = converter.convert(file);
			b.setItem_img(fileStringValue);
			nlist2.add(b);
			model.addAttribute("boardDetail", b);

		}

//		-----------------------------------------------------------------------------------------------
		List<BoardInfo> list3 = service.sports();
		ArrayList<BoardInfo> nlist3 = new ArrayList<BoardInfo>();

		for (BoardInfo b : list3) {
			/*
			 * long num = 100541759498485809L; if (b.getBoard_idx() == num) {
			 */
			File file = new File("c:\\Users\\smhrd\\git\\project\\BootMember\\src\\main\\resources\\static\\image\\"
					+ b.getItem_img());
			ImageConverter<File, String> converter = new ImageToBase64();
			String fileStringValue = converter.convert(file);
			b.setItem_img(fileStringValue);
			nlist3.add(b);
			model.addAttribute("boardDetail", b);

		}

//		-----------------------------------------------------------------------------------------------
		List<BoardInfo> list4 = service.clothes();
		ArrayList<BoardInfo> nlist4 = new ArrayList<BoardInfo>();

		for (BoardInfo b : list4) {
			/*
			 * long num = 100541759498485809L; if (b.getBoard_idx() == num) {
			 */
			File file = new File("c:\\Users\\smhrd\\git\\project\\BootMember\\src\\main\\resources\\static\\image\\"
					+ b.getItem_img());
			ImageConverter<File, String> converter = new ImageToBase64();
			String fileStringValue = converter.convert(file);
			b.setItem_img(fileStringValue);
			nlist4.add(b);
			model.addAttribute("boardDetail", b);

		}
		// -----------------------------------------------------------

		List<BoardInfo> list5 = service.lifegoods();
		ArrayList<BoardInfo> nlist5 = new ArrayList<BoardInfo>();
		for (BoardInfo b : list5) {
			/*
			 * long num = 100541759498485809L; if (b.getBoard_idx() == num) {
			 */
			File file = new File("c:\\Users\\smhrd\\git\\project\\BootMember\\src\\main\\resources\\static\\image\\"
					+ b.getItem_img());
			ImageConverter<File, String> converter = new ImageToBase64();
			String fileStringValue = converter.convert(file);
			b.setItem_img(fileStringValue);
			nlist5.add(b);
			model.addAttribute("boardDetail", b);

		}

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
	public String category(@PathVariable String item_category, HttpSession session, Model model) throws IOException {

		List<BoardInfo> list1 = service.electronics();

		ArrayList<BoardInfo> nlist1 = new ArrayList<BoardInfo>();

		for (BoardInfo b : list1) {

			File file = new File("c:\\Users\\smhrd\\git\\project\\BootMember\\src\\main\\resources\\static\\image\\"
					+ b.getItem_img());
			ImageConverter<File, String> converter = new ImageToBase64();
			String fileStringValue = converter.convert(file);
			b.setItem_img(fileStringValue);
			nlist1.add(b);
			model.addAttribute("boardDetail", b);

		}

		List<BoardInfo> list2 = service.books();

		ArrayList<BoardInfo> nlist2 = new ArrayList<BoardInfo>();

		for (BoardInfo b : list2) {
			/*
			 * long num = 100541759498485809L; if (b.getBoard_idx() == num) {
			 */
			File file = new File("c:\\Users\\smhrd\\git\\project\\BootMember\\src\\main\\resources\\static\\image\\"
					+ b.getItem_img());
			ImageConverter<File, String> converter = new ImageToBase64();
			String fileStringValue = converter.convert(file);
			b.setItem_img(fileStringValue);
			nlist2.add(b);
			model.addAttribute("boardDetail", b);

		}

		List<BoardInfo> list3 = service.sports();

		ArrayList<BoardInfo> nlist3 = new ArrayList<BoardInfo>();

		for (BoardInfo b : list3) {
			/*
			 * long num = 100541759498485809L; if (b.getBoard_idx() == num) {
			 */
			File file = new File("c:\\Users\\smhrd\\git\\project\\BootMember\\src\\main\\resources\\static\\image\\"
					+ b.getItem_img());
			ImageConverter<File, String> converter = new ImageToBase64();
			String fileStringValue = converter.convert(file);
			b.setItem_img(fileStringValue);
			nlist3.add(b);
			model.addAttribute("boardDetail", b);

		}

		List<BoardInfo> list4 = service.clothes();

		ArrayList<BoardInfo> nlist4 = new ArrayList<BoardInfo>();

		for (BoardInfo b : list4) {
			/*
			 * long num = 100541759498485809L; if (b.getBoard_idx() == num) {
			 */
			File file = new File("c:\\Users\\smhrd\\git\\project\\BootMember\\src\\main\\resources\\static\\image\\"
					+ b.getItem_img());
			ImageConverter<File, String> converter = new ImageToBase64();
			String fileStringValue = converter.convert(file);
			b.setItem_img(fileStringValue);
			nlist4.add(b);
			model.addAttribute("boardDetail", b);

		}

		List<BoardInfo> list5 = service.lifegoods();

		ArrayList<BoardInfo> nlist5 = new ArrayList<BoardInfo>();

		for (BoardInfo b : list5) {
			/*
			 * long num = 100541759498485809L; if (b.getBoard_idx() == num) {
			 */
			File file = new File("c:\\Users\\smhrd\\git\\project\\BootMember\\src\\main\\resources\\static\\image\\"
					+ b.getItem_img());
			ImageConverter<File, String> converter = new ImageToBase64();
			String fileStringValue = converter.convert(file);
			b.setItem_img(fileStringValue);
			nlist5.add(b);
			model.addAttribute("boardDetail", b);

		}

		session.setAttribute("category", item_category);

		session.setAttribute("electronics", list1);
		session.setAttribute("books", list2);
		session.setAttribute("sports", list3);
		session.setAttribute("clothes", list4);
		session.setAttribute("lifegoods", list5);

		return item_category;
	}


	// 메인페이지에
	// 조회수가 높은 상위 8개 출력
	// 추천 기능 출력

	// 메인페이지에 조회수가 높은 상위 8개
	// 출력---------------------------------------------------------------------------------------------------------------


	// 메인페이지에 조회수가 높은 상위 8개 출력

	@GetMapping("/")
	public String boardRanking(HttpSession session, Model model) throws IOException {
		List<BoardInfo> boardRanking = service.boardRanking();

		ArrayList<BoardInfo> nboardRanking = new ArrayList<BoardInfo>();
		for (BoardInfo b : boardRanking) {

			File file = new File("c:\\Users\\smhrd\\git\\project_1\\BootMember\\src\\main\\resources\\static\\image\\"
					+ b.getItem_img());
			ImageConverter<File, String> converter = new ImageToBase64();
			String fileStringValue = converter.convert(file);
			b.setItem_img(fileStringValue);
			nboardRanking.add(b);
			session.setAttribute("boardRanking", boardRanking);
			// 페이지에 출력하기 위해 model에 저장하기

			UserInfo result = (UserInfo) session.getAttribute("loginUser");

			// 세션에 저장되어있는 유저 정보 가져오기
			if (result != null) {
				List<BoardInfo> recommendation = service.recommendation(result);
				session.setAttribute("recommendation", recommendation);
			}

			// 조회수 높은 상위 8개 정보 세션에 저장
			session.setAttribute("boardRanking", boardRanking);

			return "main"; // 페이지 이동
		}
		return "main";

		// 페이지에 출력하기 위해 model에 저장하기
		session.setAttribute("boardRanking", boardRanking);

		return "main"; // 페이지 이동

	}
}
package com.smhrd.bigdata.controller;

import java.io.File;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.smhrd.bigdata.entity.BoardInfo;
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
	public String boardDetail(@PathVariable Long board_idx, Model model) {
		BoardInfo board = service.boardDetail(board_idx);

		model.addAttribute("boardDetail", board);
		// 페이지에 출력하기 위해 model에 저장하기

		return "detail"; // 페이지 이동
	}

	// 카테고리 페이지 출력 기능
	@GetMapping("/product")
	public String boardCategory(HttpSession session) {
		List<BoardInfo> list1 = service.electronics();
		List<BoardInfo> list2 = service.books();
		List<BoardInfo> list3 = service.sports();
		List<BoardInfo> list4 = service.clothes();
		List<BoardInfo> list5 = service.lifegoods();

		session.setAttribute("electronics", list1);
		session.setAttribute("books", list2);
		session.setAttribute("sports", list3);
		session.setAttribute("clothes", list4);
		session.setAttribute("lifegoods", list5);

		return "product"; // 페이지 이동
	}

	// 각 카테고리 선택시 해당 카테고리에만 해당되는 게시물 출력 기능
	@GetMapping("/{item_category}")
	public String category(@PathVariable String item_category, HttpSession session) {
		List<BoardInfo> list1 = service.electronics();
		List<BoardInfo> list2 = service.books();
		List<BoardInfo> list3 = service.sports();
		List<BoardInfo> list4 = service.clothes();
		List<BoardInfo> list5 = service.lifegoods();

		session.setAttribute("category", item_category);

		session.setAttribute("electronics", list1);
		session.setAttribute("books", list2);
		session.setAttribute("sports", list3);
		session.setAttribute("clothes", list4);
		session.setAttribute("lifegoods", list5);

		return item_category;
	}

	// 메인페이지에 조회수가 높은 상위 8개 출력
	@GetMapping("/")
	public String boardRanking(HttpSession session) {
		List<BoardInfo> boardRanking = service.boardRanking();
		// 페이지에 출력하기 위해 model에 저장하기
		session.setAttribute("boardRanking", boardRanking);

		return "main"; // 페이지 이동
	}
}
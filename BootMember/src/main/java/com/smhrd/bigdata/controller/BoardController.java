package com.smhrd.bigdata.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.smhrd.bigdata.entity.BoardInfo;
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
	public String boardWrite(@ModelAttribute BoardInfo boardinfo) {
		int result = service.boardWrite(boardinfo);

		if (result > 0) {
			// 게시글 업로드에 성공 했을 경우
			return ""; // 게시글 페이지로 리턴한다
		} else {
			// 실패 했을 경우
			return ""; // 다른 페이지로 리턴한다
		}
	}

	// 게시글 리스트 출력 기능
	@GetMapping("/boardList")
	public String boardInfo(Model model) {
		List<BoardInfo> list = service.boardList();

		model.addAttribute("boardList", list);
		// 페이지에 출력하기 위해 model에 저장하기

		return ""; // 페이지 이동
	}

	// 게시글 상세 페이지 출력 기능
	@GetMapping("/detailList")
	public String boardDetail(int board_idx, Model model) {
		BoardInfo board = service.boardDetail(board_idx);

		model.addAttribute("boardDetail", board);
		// 페이지에 출력하기 위해 model에 저장하기

		return "detail.jsp"; // 페이지 이동
	}

	// 카테고리 별 게시물 출력 기능
	@GetMapping("/product")
	public String boardCategory(String item_category, Model model) {
		List<BoardInfo> list = service.boardCategory(item_category);

		model.addAttribute("boardCategory", list);
		model.addAttribute("category", item_category);
		// 페이지에 출력하기 위해 model에 저장하기
		System.out.println(list);

		return "product"; // 페이지 이동
	}

	// 각 카테고리 선택시 해당 카테고리에만 해당되는 게시물 출력 기능
	@GetMapping("/{item_category}")
	public String category(@PathVariable String item_category, Model model) {
		List<BoardInfo> list1 = service.electronics();
		List<BoardInfo> list2 = service.books();
		List<BoardInfo> list3 = service.sports();
		List<BoardInfo> list4 = service.clothes();
		List<BoardInfo> list5 = service.lifegoods();
		
		model.addAttribute("category", item_category);
		
		model.addAttribute("electronics", list1);
		model.addAttribute("books", list2);
		model.addAttribute("sports", list3);
		model.addAttribute("clothes", list4);
		model.addAttribute("lifegoods", list5);
		
		System.out.println(list1);
		System.out.println(list2);
		
		return item_category;
	}
	
	

	// 메인페이지에 조회수가 높은 상위 8개 출력
	@GetMapping("/")
	public String boardRanking(Model model, HttpSession session) {
		List<BoardInfo> boardRanking = service.boardRanking();
		// 페이지에 출력하기 위해 model에 저장하기
		model.addAttribute("boardRanking", boardRanking);
		System.out.println(boardRanking);

		return "main"; // 페이지 이동
	}
}
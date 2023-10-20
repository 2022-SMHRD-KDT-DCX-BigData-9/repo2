package com.smhrd.bigdata.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.smhrd.bigdata.entity.BoardInfo;
import com.smhrd.bigdata.service.BoardService;

@Controller
public class BoardController {
	@Autowired
	BoardService service;
	
	@GetMapping("/")
	public String main() {
		return "main";
	}
	
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
	@GetMapping("/boardDetail")
	public String boardDetail(int board_idx, Model model) {
		BoardInfo board = service.boardDetail(board_idx);
		
		model.addAttribute("boardDetail", board);
		// 페이지에 출력하기 위해 model에 저장하기
		
		return ""; // 페이지 이동
	}
	
	// 카테고리 별 게시물 출력 기능
	@GetMapping("/boardCategory")
	public String boardCategory(String item_category, Model model) {
		List<BoardInfo> list = service.boardCategory(item_category);
		
		model.addAttribute("boardCategory", list);
		// 페이지에 출력하기 위해 model에 저장하기
		
		return ""; // 페이지 이동
	}
	
	// 조회수가 높은 상위 8개 출력
	@GetMapping("/boardRanking")
	public String boardRanking(Model model) {
		List<BoardInfo> list = service.boardRanking();
		model.addAttribute("boardRanking", list);
		// 페이지에 출력하기 위해 model에 저장하기
		
		return ""; // 페이지 이동
	}
	
}
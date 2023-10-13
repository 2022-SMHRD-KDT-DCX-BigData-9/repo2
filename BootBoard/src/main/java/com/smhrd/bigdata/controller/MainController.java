package com.smhrd.bigdata.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.smhrd.bigdata.entity.BootBoard;
import com.smhrd.bigdata.entity.BootMember;
import com.smhrd.bigdata.service.BoardService;

@Controller
public class MainController {

	// 코드 변경
	// 코드 변경2
	
	@Autowired
	BoardService service;
	@GetMapping("/")
	public String index(HttpSession session, Model model) {
		
		// loginMember 세션값을 확인 -> 0(게시물 정보 가져오기) / x (바로 index로 이동)
		BootMember member = (BootMember)session.getAttribute("loginMember"); //object로 나오니 downcasting 해줘야
		if (member != null) {
			List<BootBoard> list = service.boardList();
			
			model.addAttribute("list",list);
			
			// list 저장 공간 => 세션, request -> string에서는 request 안쓰고 model 사용
			System.out.println(list.size());
		}
		
		return "index";
	}
	
	@GetMapping("/boardform")
	public String boardForm() {
		return "boardform";
	}
	
	
}

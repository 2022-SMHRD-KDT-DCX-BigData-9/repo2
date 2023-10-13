package com.smhrd.bigdata.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.smhrd.bigdata.entity.BootMember;
import com.smhrd.bigdata.service.MemberService;

@Controller
public class MemberController {

	@Autowired
	MemberService service;
	
	@PostMapping("/member/login")
	public String login(BootMember member, HttpSession session) {
		
		BootMember result = service.login(member);
		if (result == null) {
			System.out.println("로그인 실패");
		}
		else {
			/*
			 * System.out.println(result.getId()); System.out.println(result.getPw());
			 * System.out.println(result.getNick());
			 */
			session.setAttribute("loginMember", result);
			
		}
		return "redirect:/";
		
	}
	
	@GetMapping("/member/logout")
	public String logout(HttpSession session) {
		
	//session.removeAttribute("loginMember");
		session.invalidate();
		return "redirect:/";
	}
	
}

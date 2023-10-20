package com.smhrd.bigdata.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.bind.annotation.RequestMethod;


import com.smhrd.bigdata.entity.UserInfo;
import com.smhrd.bigdata.service.UserService;

@Controller
public class UserController {
	
	
	@Autowired
	UserService service;
	
	// 회원가입

	@PostMapping("/join/success")
	public String join(@ModelAttribute UserInfo userinfo) {
		int result = service.join(userinfo);
		
		if (result > 0) {
			// 성공 했을 경우
			return ""; // 메인페이지로 리턴한다
		} else {
			// 실패 했을 경우
			return ""; // 다른 페이지로 리턴한다
		}
	}
	
	// 로그인

	@RequestMapping(value = "/login/success", method = {RequestMethod.POST})
	public String login(UserInfo userinfo, HttpSession session) {
		UserInfo result = service.login(userinfo);
		
		// 로그인이 성공 했을 경우
		if (result != null) {
			session.setAttribute("loginUser", result);
			return ""; // 세션에 값 저장 및 페이지 리턴해준다
		} else {
			// 로그인이 실패 했을 경우
			return ""; // 다른 페이지로 리턴한다
		}
	}
	
	// 로그아웃
	@RequestMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate(); // 세션에 저장된 유저 정보 삭제
		return ""; // 메인페이지로 리턴해주기
	}
	
	// 회원정보 수정 기능
	@PostMapping("/update")
	public String userUpdate(@ModelAttribute UserInfo userinfo) {
		int result = service.userUpdate(userinfo);
		
		if (result > 0) {
			// 회원 정보 수정에 성공 했을 경우
			return ""; // 마이페이지로 리턴한다
		} else {
			// 회원 정보 수정에 실패 했을 경우
			return ""; // 다른 페이지로 리턴한다
		}
	}
	
	// 마이페이지 출력 기능
	
}

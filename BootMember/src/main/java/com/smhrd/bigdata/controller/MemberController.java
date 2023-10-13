package com.smhrd.bigdata.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.smhrd.bigdata.entity.Member;
import com.smhrd.bigdata.service.MemberService;

@Controller
public class MemberController {
// main수정 안상우 16:36
// 하아ㅏ	
// 이게 맞아??????
// git 사용 가능?
	@Autowired
	MemberService service; 
	
	
	@GetMapping("/")
	public String mainPage() {
		return "main";
	}
	
	@GetMapping("/join")
	public String joinPage() {
		return "join";
	}
	
	@GetMapping("/login")
	public String loginPage() {
		return "login";
	}
	
	//localhost:8087/bigdata/member/join
	// 값 4개, email pw tel address 받아야함
	// @modelAttribute : 지정한 모델 형태로 요청 파라미터를 묶어서 받을 수 있다
	// 1. DB에 테이블 먼저 생성(구조, 컬럼) -> 2. 생성된 테이블 구조 그대로 Model(VO) 설계
	@PostMapping("/member/join")
	public String join(@ModelAttribute Member member) {
		
		/*
		 * System.out.println(member.getEmail()); System.out.println(member.getPw());
		 * System.out.println(member.getTel()); System.out.println(member.getAddress());
		 */
		
		// 1. controller: 요청 파라미터 받고, 응답 처리
		//2. 서비스 추가: controller의 짐 덜어줌, 파라미터 가공할 일을 원래 controller가 하지만 서비스가 대신 해줌
		// 즉 데이터 가공 처리(+ 추가적인 로직)
		// 3. mapper (mybatis) : spring <-인터페이스 -> db 
		// 3-1. mapper.xml : sql 문 작성
		
		int result = service.join(member);
		if (result > 0) {
			System.out.println("성공");
			// main.jsp를 리턴해주는 곳으로 클라이언트가 재요청(redirect), client가 요청한 것만 보이므로 
			return "redirect:/"; 
		
		}
		else {
			System.out.println("실패");
			//join.jsp를 리턴해주는 곳으로 클라이언트가 재요청
			return "redirect:/join";
			
		}
		
		
	}
	//1. controller
	//member/login post 방식으로 요청왔을 때 처리해줄 메서드
	@PostMapping("/member/login")
	public String login(Member member, HttpSession session) {
		
		// email, pw 받기
		//2. service에 메서드 추가
		
		
		Member result = service.login(member);
		
		/*
		 * System.out.println(result.getEmail()); System.out.println(result.getPw());
		 * System.out.println(result.getTel()); System.out.println(result.getAddress());
		 */
		
		// 로그인 성공 : member 객체 반환
		if (result != null) {
			session.setAttribute("loginMember", result); // 세션 -> 사용자 정보 저장(매개 인자에 세션 넣어줌)
			return "redirect:/";
		}
		// 로그인 실패: member 객체 -> xxx -> 클라이언트가 재요청하는 방식으로 로그인 페이지로 이동
		else return "redirect:/login";
		
		//3. mapper 추상메서드 추가 * select - > 반환타입 member
		
		//4. mapper.xml sql문(resultType **)
		
		// controller에서 service의 메서드를 호출해서 반환받은 member 객체 console 창에 출력하기
		
		
	}
	
	
	
}

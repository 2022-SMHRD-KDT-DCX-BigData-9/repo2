package com.smhrd.bigdata.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.smhrd.bigdata.entity.Member;
import com.smhrd.bigdata.mapper.MemberMapper;

@Service // spring framework에서 service 역할 부여
// controller 의 부담을 줄여줌

public class MemberService {
	// controller 호출: 사용자가 입력한 값 받아줘야함
	@Autowired
	MemberMapper mapper;
	
	
	public int join(Member member) {// 굳이 controller와 메소드 이름 맞출 필요 없으나 보기 좋게 하자
		
		int result = mapper.join(member);
		
		return result;
	}
	
	
	public Member login(Member member) {
		
		Member info = mapper.login(member);
		
		return info;
	}
}



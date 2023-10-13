package com.smhrd.bigdata.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.smhrd.bigdata.entity.BootMember;
import com.smhrd.bigdata.repository.MemberRepository;

@Service
public class MemberService {
	
	
	@Autowired
	MemberRepository repo;
	
	public BootMember login(BootMember member) {
		
		//mybatis 는 sql 작성 필수 but jpa는 sql 문 안쓰고 데이터 불러올 수 있음
		// select * from bootmember where id = ? and pw = ? 등의 조건이 필요함
		return repo.findByIdAndPw(member.getId(), member.getPw());
		
	}

}

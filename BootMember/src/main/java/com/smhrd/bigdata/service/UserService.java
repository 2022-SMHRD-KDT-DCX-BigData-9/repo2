package com.smhrd.bigdata.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.smhrd.bigdata.entity.UserInfo;
import com.smhrd.bigdata.mapper.UserMapper;

@Service
public class UserService {
	@Autowired
	UserMapper mapper;
	
	// 회원가입
	public int join(UserInfo userinfo) {
		int result = mapper.join(userinfo);
		return result;
	}
	
	// 로그인
	public UserInfo login(UserInfo userinfo) {
		UserInfo user = mapper.login(userinfo);
		return user;
	}
	
	// 회원정보 수정
	public int userUpdate(UserInfo userinfo) {
		int result = mapper.userupdate(userinfo);
		return result;
	}
	
	
}

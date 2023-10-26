package com.smhrd.bigdata.entity;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class UserInfo {
	// 회원 이메일
	private String user_email;

	// 회원 비밀번호
	private String user_pw;

	// 회원 이름
	private String user_name;

	// 회원 닉네임
	private String user_nick;

	// 회원 주소
	private String user_addr;

	// 관심 카테고리
	private String user_category;

	// 회원 전화번호
	private String user_phone;

	// 회원 가입일자
	private Timestamp user_joindate;
	
	private int review_authority;
}

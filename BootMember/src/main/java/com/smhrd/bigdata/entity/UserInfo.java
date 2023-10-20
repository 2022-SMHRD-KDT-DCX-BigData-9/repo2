package com.smhrd.bigdata.entity;

import java.sql.Timestamp;

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

	public String getUserEmail() {
		return user_email;
	}

	public void setUserEmail(String userEmail) {
		this.user_email = user_email;
	}

	public String getUserPw() {
		return user_pw;
	}

	public void setUserPw(String userPw) {
		this.user_pw = user_pw;
	}

	public String getUserName() {
		return user_name;
	}

	public void setUserName(String userName) {
		this.user_name = user_name;
	}

	public String getUserNick() {
		return user_nick;
	}

	public void setUserNick(String userNick) {
		this.user_nick = user_nick;
	}

	public String getUserAddr() {
		return user_addr;
	}

	public void setUserAddr(String userAddr) {
		this.user_addr = user_addr;
	}

	public String getUserCategory() {
		return user_category;
	}

	public void setUserCategory(String userCategory) {
		this.user_category = user_category;
	}

	public String getUserPhone() {
		return user_phone;
	}

	public void setUserPhone(String userPhone) {
		this.user_phone = user_phone;
	}

	public Timestamp getUserJoindate() {
		return user_joindate;
	}

	public void setUserJoindate(Timestamp userJoindate) {
		this.user_joindate = user_joindate;
	}

	// user_info 모델 복사
	public void CopyData(UserInfo param) {
		this.user_email = param.getUserEmail();
		this.user_pw = param.getUserPw();
		this.user_name = param.getUserName();
		this.user_nick = param.getUserNick();
		this.user_addr = param.getUserAddr();
		this.user_category = param.getUserCategory();
		this.user_phone = param.getUserPhone();
		this.user_joindate = param.getUserJoindate();
	}
}

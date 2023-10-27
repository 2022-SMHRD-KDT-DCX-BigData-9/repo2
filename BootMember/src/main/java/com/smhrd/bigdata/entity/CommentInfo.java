package com.smhrd.bigdata.entity;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
//덧글 정보 
public class CommentInfo {
	// 덧글 번호
	private String comment_idx;

	// 회원 이메일
	private String user_email;

	// 물품 글번호
	private Long board_idx;

	// 덧글 내용
	private String comment_content;

	// 덧글 작성날짜
	private Timestamp created_at;
}

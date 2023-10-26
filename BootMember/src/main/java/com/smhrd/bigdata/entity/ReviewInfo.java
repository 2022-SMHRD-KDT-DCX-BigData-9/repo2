package com.smhrd.bigdata.entity;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class ReviewInfo {
	// 리뷰 번호
	private String review_idx;

	// 회원 이메일
	private String user_email;

	// 물품 글번호
	private Long board_idx;

	// 후기 내용
	private String review_content;

	// 후기 점수
	private Integer review_ratings;

	// 후기 작성날짜
	private Timestamp created_at;
	
	// 거래한 대상 이메일
	private String writer_email;
}

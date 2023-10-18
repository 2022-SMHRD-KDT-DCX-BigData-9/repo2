package com.smhrd.bigdata.entity;

import java.sql.Timestamp;

public class ReviewInfo {
	// 후기점수

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

	public String getReviewIdx() {
		return review_idx;
	}

	public void setReviewIdx(String reviewIdx) {
		this.review_idx = review_idx;
	}

	public String getUserEmail() {
		return user_email;
	}

	public void setUserEmail(String userEmail) {
		this.user_email = user_email;
	}

	public Long getBoardIdx() {
		return board_idx;
	}

	public void setBoardIdx(Long boardIdx) {
		this.board_idx = board_idx;
	}

	public String getReviewContent() {
		return review_content;
	}

	public void setReviewContent(String reviewContent) {
		this.review_content = review_content;
	}

	public Integer getReviewRatings() {
		return review_ratings;
	}

	public void setReviewRatings(Integer reviewRatings) {
		this.review_ratings = review_ratings;
	}

	public Timestamp getCreatedAt() {
		return created_at;
	}

	public void setCreatedAt(Timestamp createdAt) {
		this.created_at = created_at;
	}

	// review_info 모델 복사
	public void CopyData(ReviewInfo param) {
		this.review_idx = param.getReviewIdx();
		this.user_email = param.getUserEmail();
		this.board_idx = param.getBoardIdx();
		this.review_content = param.getReviewContent();
		this.review_ratings = param.getReviewRatings();
		this.created_at = param.getCreatedAt();
	}
}

package com.smhrd.bigdata.entity;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class BoardInfo {
    // 물품 글번호 
    private Long board_idx;

    // 물품 이름 
    private String item_name;

    // 글 내용 
    private String board_content;

    // 회원 이메일 
    private String user_email;

    // 물품 이미지 파일 
    private String item_img;

    // 물품 카테고리 
    private String item_category;

    // 교환물품 카테고리 
    private String want_category;

    // 글 조회수 
    private Integer board_views;

    // 글 작성날짜 
    private Timestamp created_at;

    // 물품 거래장소 
    private String item_place;

}

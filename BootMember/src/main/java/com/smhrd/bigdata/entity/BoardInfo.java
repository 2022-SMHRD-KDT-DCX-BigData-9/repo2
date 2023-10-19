package com.smhrd.bigdata.entity;

import java.sql.Timestamp;

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

    public Long getBoardIdx() {
        return board_idx;
    }

    public void setBoardIdx(Long boardIdx) {
        this.board_idx = board_idx;
    }

    public String getItemName() {
        return item_name;
    }

    public void setItemName(String itemName) {
        this.item_name = item_name;
    }

    public String getBoardContent() {
        return board_content;
    }

    public void setBoardContent(String boardContent) {
        this.board_content = board_content;
    }

    public String getUserEmail() {
        return user_email;
    }

    public void setUserEmail(String userEmail) {
        this.user_email = user_email;
    }

    public String getItemImg() {
        return item_img;
    }

    public void setItemImg(String itemImg) {
        this.item_img = item_img;
    }

    public String getItemCategory() {
        return item_category;
    }

    public void setItemCategory(String itemCategory) {
        this.item_category = item_category;
    }

    public String getWantCategory() {
        return want_category;
    }

    public void setWantCategory(String wantCategory) {
        this.want_category = want_category;
    }

    public Integer getBoardViews() {
        return board_views;
    }

    public void setBoardViews(Integer boardViews) {
        this.board_views = board_views;
    }

    public Timestamp getCreatedAt() {
        return created_at;
    }

    public void setCreatedAt(Timestamp createdAt) {
        this.created_at = created_at;
    }

    public String getItemPlace() {
        return item_place;
    }

    public void setItemPlace(String itemPlace) {
        this.item_place = item_place;
    }

    // board_info 모델 복사
    public void CopyData(BoardInfo param)
    {
        this.board_idx = param.getBoardIdx();
        this.item_name = param.getItemName();
        this.board_content = param.getBoardContent();
        this.user_email = param.getUserEmail();
        this.item_img = param.getItemImg();
        this.item_category = param.getItemCategory();
        this.want_category = param.getWantCategory();
        this.board_views = param.getBoardViews();
        this.created_at = param.getCreatedAt();
        this.item_place = param.getItemPlace();
    }
}

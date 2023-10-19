package com.smhrd.bigdata.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.smhrd.bigdata.entity.BoardInfo;
import com.smhrd.bigdata.entity.ReviewInfo;
import com.smhrd.bigdata.entity.UserInfo;

@Mapper
public interface UserMapper {
	// 회원가입 -- 리턴타입 int
	public int join(UserInfo userinfo);

	// 로그인 -- 리턴타입 UserInfo
	public UserInfo login(UserInfo userinfo);

	// 게시글 작성 -- 리턴타입 int
	public int boardWrite(BoardInfo boardinfo);

	// 회원정보 수정 -- 리턴타입 int
	public int userupdate(UserInfo userinfo);

	// 게시글 리스트 출력 기능 -- 리턴타입 List<BoardInfo>
	public List<BoardInfo> boardList();

	// 게시글 상세 페이지 출력 기능 -- 리턴타입 BoardInfo
	public BoardInfo boardDetail(int board_idx);
	
	// 카테고리별 게시물 출력 기능  -- 리턴타입 List<BoardInfo>
	public List<BoardInfo> boardCategory(String item_category);
	
	// 후기 목록 출력 기능  -- 리턴타입 List<ReviewInfo>
	public List<ReviewInfo> reviewList();
	
	public List<BoardInfo> search(String search);
}
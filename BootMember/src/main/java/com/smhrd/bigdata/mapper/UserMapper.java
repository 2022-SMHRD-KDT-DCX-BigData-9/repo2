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
	public BoardInfo boardDetail(Long board_idx);
	
	// 카테고리별 게시물 출력 기능  -- 리턴타입 List<BoardInfo>
//	public List<BoardInfo> boardCategory();
	
	public List<BoardInfo> electronics();
	public List<BoardInfo> books();
	public List<BoardInfo> sports();
	public List<BoardInfo> clothes();
	public List<BoardInfo> lifegoods();
	
	
	// 후기 목록 출력 기능  -- 리턴타입 List<ReviewInfo>
	public List<ReviewInfo> reviewList();
	
	// 검색 기능 
	public List<BoardInfo> search(String search);
	
	// 조회수 높은 순서대로 출력하는 기능
	public List<BoardInfo> boardRanking();
}

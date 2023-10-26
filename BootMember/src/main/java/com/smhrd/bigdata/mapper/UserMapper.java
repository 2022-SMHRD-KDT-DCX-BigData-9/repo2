package com.smhrd.bigdata.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.smhrd.bigdata.entity.BoardInfo;
import com.smhrd.bigdata.entity.CommentInfo;
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
	public int userUpdate(UserInfo userinfo);

	// 게시글 리스트 출력 기능 -- 리턴타입 List<BoardInfo>
	public List<BoardInfo> boardList();

	// 게시글 상세 페이지 출력 기능 -- 리턴타입 BoardInfo
	public BoardInfo boardDetail(Long board_idx);

	public List<BoardInfo> electronics();

	public List<BoardInfo> books();

	public List<BoardInfo> sports();

	public List<BoardInfo> clothes();

	public List<BoardInfo> lifegoods();

	// 후기 목록 출력 기능 -- 리턴타입 List<ReviewInfo>
	public List<ReviewInfo> reviewList();

	// 조회수 높은 순서대로 출력하는 기능
	public List<BoardInfo> boardRanking();

	// 카테고리에 맞춰 추천하는 기능
	public List<BoardInfo> recommendation(UserInfo userinfo);

	// 유저가 작성한 게시글 보여주는 기능
	public List<BoardInfo> userBoard(UserInfo userinfo);
	
	// 페이징 기능
	public int countUserPosts(String user_email);
	public List<BoardInfo> getUserPostsByPage(@Param("user_email") String user_email, @Param("offset") int offset, @Param("limit") int limit);
	
	// 검색 기능
	public List<BoardInfo> search(String item_name);
	
	// 조회수 기능
	public int view_increase(BoardInfo b);
	
	// 댓글 추가 기능
	public int insert_comment(CommentInfo commentInfo);
	
	// 댓글 불러오기 기능
	public List<CommentInfo> getCommentsForBoard(Long board_idx);
}

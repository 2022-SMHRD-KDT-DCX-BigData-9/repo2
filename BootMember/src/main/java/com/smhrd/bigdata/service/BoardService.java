package com.smhrd.bigdata.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.smhrd.bigdata.entity.BoardInfo;
import com.smhrd.bigdata.entity.CommentInfo;
import com.smhrd.bigdata.entity.ReviewInfo;
import com.smhrd.bigdata.entity.UserInfo;
import com.smhrd.bigdata.mapper.UserMapper;

@Service
public class BoardService {
	@Autowired
	UserMapper mapper;

	// 게시글 작성 -- 리턴타입 int
	public int boardWrite(BoardInfo boardinfo) {
		int result = mapper.boardWrite(boardinfo);
		return result;
	};

	// 게시글 리스트 출력 -- 리턴타입 List<BoardInfo>
	public List<BoardInfo> boardList() {
		List<BoardInfo> list = mapper.boardList();
		return list;
	}

	// 게시글 상세 페이지 출력 -- 리턴타임 BoardInfo
	public BoardInfo boardDetail(Long board_idx) {
		BoardInfo board = mapper.boardDetail(board_idx);
		return board;
	}

	public List<BoardInfo> electronics() {
		List<BoardInfo> list = mapper.electronics();
		return list;
	}

	public List<BoardInfo> books() {
		List<BoardInfo> list = mapper.books();
		return list;
	}

	public List<BoardInfo> sports() {
		List<BoardInfo> list = mapper.sports();
		return list;
	}

	public List<BoardInfo> clothes() {
		List<BoardInfo> list = mapper.clothes();
		return list;
	}

	public List<BoardInfo> lifegoods() {
		List<BoardInfo> list = mapper.lifegoods();
		return list;
	}

	// 조회수가 높은 상위 8개 출력
	public List<BoardInfo> boardRanking() {
		List<BoardInfo> list = mapper.boardRanking();
		return list;
	}

	// 카테고리에 맞춰 8개 추천
	public List<BoardInfo> recommendation(UserInfo userinfo) {
		List<BoardInfo> list = mapper.recommendation(userinfo);
		return list;
	}

	// 유저가 작성한 게시글 보여주는 기능
	public List<BoardInfo> userBoard(UserInfo userinfo) {
		List<BoardInfo> list = mapper.userBoard(userinfo);
		return list;
	}

	// 페이징 기능
	public List<BoardInfo> getUserPostsByPage(UserInfo userinfo, int offset, int limit) {
		List<BoardInfo> userPosts = mapper.getUserPostsByPage(userinfo.getUser_email(), offset, limit);
		return userPosts;
	}

	public int getTotalUserPosts(UserInfo userinfo) {
		// 사용자가 가지고 있는 총 게시글 갯수 계산하는 기능
		int totalUserPosts = mapper.countUserPosts(userinfo.getUser_email());
		return totalUserPosts;
	}

	// 검색 기능
	public List<BoardInfo> search(String item_name) {
		List<BoardInfo> list = mapper.search(item_name);
		return list;
	}

	// 조회수 기능
	public int view_increase(BoardInfo b) {
		int result = mapper.view_increase(b);
		return result;
	}

	// 댓글 추가 기능
	public int insert_comment(CommentInfo commentInfo) {
		int result = mapper.insert_comment(commentInfo);
		return result;
	}

	// 댓글 출력 기능
	public List<CommentInfo> getCommentsForBoard(Long board_idx) {
		return mapper.getCommentsForBoard(board_idx);
	}

	public int review_author(String user_emailone, String user_emailtwo) {
		int result = mapper.review_author(user_emailone, user_emailtwo);
		return result;
	}

	public int review_noauthor(String user_email) {
		int result = mapper.review_noauthor(user_email);
		return result;
	}

	public int review_save(ReviewInfo reviewinfo) {
		int result = mapper.review_save(reviewinfo);
		return result;
	}

}

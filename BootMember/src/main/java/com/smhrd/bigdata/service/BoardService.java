package com.smhrd.bigdata.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.smhrd.bigdata.entity.BoardInfo;
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

	// 카테고리 별 게시물 출력 -- 리턴타입 List<BoardInfo>
//	public List<BoardInfo> boardCategory(){
//		List<BoardInfo> list = mapper.boardCategory(item_category);
//		return list;
//	}

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

}

package com.smhrd.bigdata.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RestController;

import com.smhrd.bigdata.entity.BoardInfo;
import com.smhrd.bigdata.mapper.UserMapper;

@RestController
public class BoardRestController {
	@Autowired
	UserMapper mapper;
	
	public List<BoardInfo> search(String search){
		List<BoardInfo> list = mapper.search(search);
		return list;
	}
}

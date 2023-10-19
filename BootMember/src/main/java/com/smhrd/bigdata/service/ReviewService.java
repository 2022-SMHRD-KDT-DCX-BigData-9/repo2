package com.smhrd.bigdata.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.smhrd.bigdata.entity.ReviewInfo;
import com.smhrd.bigdata.mapper.UserMapper;

@Service
public class ReviewService {
	@Autowired
	UserMapper mapper;
	
	// 후기 목록 출력 기능
	public List<ReviewInfo> reviewList(){
		List<ReviewInfo> list = mapper.reviewList();
		return list;
	}
}

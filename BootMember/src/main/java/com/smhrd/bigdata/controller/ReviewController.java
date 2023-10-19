package com.smhrd.bigdata.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import com.smhrd.bigdata.entity.ReviewInfo;
import com.smhrd.bigdata.service.ReviewService;

@Controller
public class ReviewController {
	@Autowired
	ReviewService service;

	// 후기 목록 출력 기능
	public String reviewList(Model model) {
		List<ReviewInfo> list = service.reviewList();

		model.addAttribute("reviewList", list);
		// 페이지에 출력하기 위해 model에 저장하기

		return ""; // 페이지 이동
	}
}

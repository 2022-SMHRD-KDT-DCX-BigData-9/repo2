package com.smhrd.bigdata.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.smhrd.bigdata.entity.BootBoard;
import com.smhrd.bigdata.repository.BoardRepository;

@Service
public class BoardService {
	
	@Autowired
	BoardRepository repo;
	
	
	public List<BootBoard> boardList() {
		List<BootBoard> list = repo.findAll();
		return list;
		
	}
	
	public void write(BootBoard b) {
		
		//save~ : insert
		repo.save(b); // 일발적으로 insert하면 int형이지만 repo의 save는 매개변수를 return해줌
	}
	
	public BootBoard content(long idx) {
		BootBoard b = repo.findByIdx(idx);
		return b;
	}

}

package com.smhrd.bigdata.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.smhrd.bigdata.entity.BootBoard;
import com.smhrd.bigdata.entity.BootMember;

public interface BoardRepository extends JpaRepository<BootBoard, Long> {

	public BootBoard findByIdx(long idx); // 카멜 케이스로 작성해야 함
	
	
}

package com.smhrd.bigdata.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.smhrd.bigdata.entity.BootMember;

@Repository // mapper 대신에 사용한다 jpa repository 상속받아야 함
public interface MemberRepository extends JpaRepository<BootMember, Long>{ // 다룰 entity 형태, long

	
	public BootMember findByIdAndPw(String id, String pw); // 카멜 케이스로 작성해야 함
}

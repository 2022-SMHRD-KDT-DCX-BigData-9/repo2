package com.smhrd.bigdata.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.springframework.beans.factory.annotation.Autowired;

import com.smhrd.bigdata.entity.Member;

@Mapper
public interface MemberMapper {
	
	// mapper.xml 원래 페키지 안에 같이 넣어줬지만 이제는 같이 넣어주면 안됨 resource에 넣어야함  폴더 경로 com/smhrd/bigdata/mapper여야!!
	// xml 파일 이름 인터페이스 파일 이름과 똑같아야 한다!!
	
	
	
	// 회원가입         // 실제 입력한 값 --> db
	public int join(Member member); 
	
	
	// 로그인 
	@Select("select * from member where email = #{email} and pw = #{pw}")
	public Member login(Member member);
	
	
}

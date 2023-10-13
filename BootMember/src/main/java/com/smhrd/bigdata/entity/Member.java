package com.smhrd.bigdata.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Setter // 세터
@NoArgsConstructor // 기본 생성자
@Getter // 
@AllArgsConstructor // 전체 파라미터 초기화 생성자
// @data만 추가하면 게터 세터 만들 수 있다

public class Member {
	// 필드 -> 테이블 컬럼 타입, 이름 그대로 작성
	private String email;
	private String pw;
	private String tel;
	private String address;
	
	// 기본 생성자 + setter 있어야 => ModelAtrribute 사용가능
	// jsp 의 name과 dto의 변수명 다르면 setter 메소드 작동 안하니 주의
}

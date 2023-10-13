package com.smhrd.bigdata.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Table(name = "bootmember") // 테이블 이름 지정
@NoArgsConstructor // lombok
@Getter
@Setter
public class BootMember {

	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY) // 자동적으로 늘어나는 숫자
	private long idx;
	@Column(name="id", length = 50)
	private String id;
	@Column(name="pw", length = 50)
	private String pw;
	@Column(name="nick", length = 50)
	private String nick;
	
}

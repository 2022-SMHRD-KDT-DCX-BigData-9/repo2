package com.smhrd.bigdata.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.hibernate.annotations.ColumnDefault;
import org.hibernate.annotations.CreationTimestamp;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Table(name = "bootboard") // 소문자로 쓰자 BootBoard -> boot_board
@NoArgsConstructor
@Setter
@Getter
public class BootBoard {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private long idx;
	
	@Column(name = "title", length = 100)
	private String title;
	@Column(name = "writer", length = 100)
	private String writer;
	@Column(name = "content", length = 1000)
	private String content;
	
	@Temporal(TemporalType.TIMESTAMP) // 날짜, 시간 -> db 저장 시 형태 지정
	@CreationTimestamp // 현재 시간
	@Column(name = "indate")
	private Date indate;//date -> java.util로 import
	
	@ColumnDefault("0") // 기본값
	@Column(name = "count")
	private int count;
	@Column(name="img", length = 200)
	private String img; //파일의 경로를 지정할 것
	

}

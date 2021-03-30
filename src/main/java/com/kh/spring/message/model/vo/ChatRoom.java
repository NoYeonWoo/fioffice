package com.kh.spring.message.model.vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Setter
@Getter
@NoArgsConstructor
@AllArgsConstructor
@ToString
public class ChatRoom {
	
	private int chatRoomNo;
	private String member1;
	private String member2;
	private String chatRoomStatus;
	
}
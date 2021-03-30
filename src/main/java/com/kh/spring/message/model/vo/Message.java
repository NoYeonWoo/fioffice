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
public class Message {
	
	private int msgNo;
	private String chatNo; //채팅방 번호
	private String msgSender;
	private String msgReceiver;
	private String msgType;
	private String msgContent;
	private Date msgDate;
	private String msgReadStatus;
	private String msgOrigin;
	private String msgChange;
	private Date msgFileDate;
	private String msgFileStatus;
	
	
	
}
package com.kh.spring.email.model.vo;

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
public class Email {
	public int emailNo;
	public String emailTitle;
	public String emailContent;
	public String emailOFile;
	public String emailNFile;
	public String emailTime;
	public String status;
	public String emailImportant;
	public String emailSend;
	public String emailReceive;
	
	public String emailSendEmail;
	public String emailReceiveEmail;

	
}

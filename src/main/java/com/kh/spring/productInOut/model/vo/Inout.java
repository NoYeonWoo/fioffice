package com.kh.spring.productInOut.model.vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@ToString

public class Inout {
	private String inoutNo;
	private String sortaion;
	private String quantity;
	private String price;
	private Date inoutDate;
	private String comment;
	private char status;
	private String cliNo;
	private String proNo;
}

package com.kh.spring.survey.model.vo;

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
public class Survey {
	
	private String surNo;
	private String surWriter;
	private String empName;
	private String surTitle;
	private String surContent;
	private Date surEnd;
	private Date surDate;
	private String surEndS;
	private String surDateS;
	private String status;
	private String surqContent;
	private String surqType;
	private String surqStatus;
	private String deptCode;
	private String deptName;
	private String profile;
	private int count;
	
}
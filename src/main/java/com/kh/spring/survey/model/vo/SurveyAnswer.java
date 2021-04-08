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
public class SurveyAnswer {
	
	private String suraNo;
	private String surNo;
	private String suraWriter;
	private String suroNo;
	private String option;
	private int optionCount;
	private String suraContent;
}

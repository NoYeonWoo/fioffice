package com.kh.spring.work.model.vo;

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
public class Work {
	public int workNo;
	public Date workStart;
	public Date workEnd;
	public Date workStack;
	public Date workExceed;
	public Date workRemain;
	public Date workDate;
	public String status;
	public String empNo;
	public int workSum;
	public String workDayReset;

	
}

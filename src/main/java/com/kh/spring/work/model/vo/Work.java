package com.kh.spring.work.model.vo;

import java.sql.Date;

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
	
	
	
	
	public Work() {
	}




	public Work(int workNo, String empNo, Date workStart, Date workEnd, Date workStack, Date workExceed, Date workRemain,
			Date workDate, String status) {
		super();
		this.workNo = workNo;
		this.empNo = empNo;
		this.workStart = workStart;
		this.workEnd = workEnd;
		this.workStack = workStack;
		this.workExceed = workExceed;
		this.workRemain = workRemain;
		this.workDate = workDate;
		this.status = status;
	}




	public int getWorkNo() {
		return workNo;
	}




	public void setWorkNo(int workNo) {
		this.workNo = workNo;
	}




	public String getEmpNo() {
		return empNo;
	}




	public void setEmpNo(String empNo) {
		this.empNo = empNo;
	}




	public Date getWorkStart() {
		return workStart;
	}




	public void setWorkStart(Date workStart) {
		this.workStart = workStart;
	}




	public Date getWorkEnd() {
		return workEnd;
	}




	public void setWorkEnd(Date workEnd) {
		this.workEnd = workEnd;
	}




	public Date getWorkStack() {
		return workStack;
	}




	public void setWorkStack(Date workStack) {
		this.workStack = workStack;
	}




	public Date getWorkExceed() {
		return workExceed;
	}




	public void setWorkExceed(Date workExceed) {
		this.workExceed = workExceed;
	}




	public Date getWorkRemain() {
		return workRemain;
	}




	public void setWorkRemain(Date workRemain) {
		this.workRemain = workRemain;
	}




	public Date getWorkDate() {
		return workDate;
	}




	public void setWorkDate(Date workDate) {
		this.workDate = workDate;
	}




	public String getStatus() {
		return status;
	}




	public void setStatus(String status) {
		this.status = status;
	}




	@Override
	public String toString() {
		return "Work [workNo=" + workNo + ", empNo=" + empNo + ", workStart=" + workStart + ", workEnd=" + workEnd
				+ ", workStack=" + workStack + ", workExeed=" + workExceed + ", workRemain=" + workRemain + ", workDate="
				+ workDate + ", status=" + status + "]";
	}

	
	
	
	
}

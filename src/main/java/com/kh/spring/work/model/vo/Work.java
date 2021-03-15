package com.kh.spring.work.model.vo;

import java.sql.Date;

public class Work {
	public int workNo;
	public int empNo;
	public Date workStart;
	public Date workEnd;
	public Date workStack;
	public Date workExeed;
	public Date workRemain;
	public Date workDate;
	public Date status;
	
	
	
	
	public Work() {
	}




	public Work(int workNo, int empNo, Date workStart, Date workEnd, Date workStack, Date workExeed, Date workRemain,
			Date workDate, Date status) {
		super();
		this.workNo = workNo;
		this.empNo = empNo;
		this.workStart = workStart;
		this.workEnd = workEnd;
		this.workStack = workStack;
		this.workExeed = workExeed;
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




	public int getEmpNo() {
		return empNo;
	}




	public void setEmpNo(int empNo) {
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




	public Date getWorkExeed() {
		return workExeed;
	}




	public void setWorkExeed(Date workExeed) {
		this.workExeed = workExeed;
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




	public Date getStatus() {
		return status;
	}




	public void setStatus(Date status) {
		this.status = status;
	}




	@Override
	public String toString() {
		return "Work [workNo=" + workNo + ", empNo=" + empNo + ", workStart=" + workStart + ", workEnd=" + workEnd
				+ ", workStack=" + workStack + ", workExeed=" + workExeed + ", workRemain=" + workRemain + ", workDate="
				+ workDate + ", status=" + status + "]";
	}

	
	
	
	
}

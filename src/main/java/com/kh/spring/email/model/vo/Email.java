package com.kh.spring.email.model.vo;

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
	
	public Email() {
		
	}
	
	public Email(int emailNo, String emailTitle, String emailContent, String emailOFile, String emailNFile,
			String emailTime, String status, String emailImportant, String emailSend, String emailReceive) {
		super();
		this.emailNo = emailNo;
		this.emailTitle = emailTitle;
		this.emailContent = emailContent;
		this.emailOFile = emailOFile;
		this.emailNFile = emailNFile;
		this.emailTime = emailTime;
		this.status = status;
		this.emailImportant = emailImportant;
		this.emailSend = emailSend;
		this.emailReceive = emailReceive;
	}

	public int getEmailNo() {
		return emailNo;
	}

	public void setEmailNo(int emailNo) {
		this.emailNo = emailNo;
	}

	public String getEmailTitle() {
		return emailTitle;
	}

	public void setEmailTitle(String emailTitle) {
		this.emailTitle = emailTitle;
	}

	public String getEmailContent() {
		return emailContent;
	}

	public void setEmailContent(String emailContent) {
		this.emailContent = emailContent;
	}

	public String getEmailOFile() {
		return emailOFile;
	}

	public void setEmailOFile(String emailOFile) {
		this.emailOFile = emailOFile;
	}

	public String getEmailNFile() {
		return emailNFile;
	}

	public void setEmailNFile(String emailNFile) {
		this.emailNFile = emailNFile;
	}

	public String getEmailTime() {
		return emailTime;
	}

	public void setEmailTime(String emailTime) {
		this.emailTime = emailTime;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getEmailImportant() {
		return emailImportant;
	}

	public void setEmailImportant(String emailImportant) {
		this.emailImportant = emailImportant;
	}

	public String getEmailSend() {
		return emailSend;
	}

	public void setEmailSend(String emailSend) {
		this.emailSend = emailSend;
	}

	public String getEmailReceive() {
		return emailReceive;
	}

	public void setEmailReceive(String emailReceive) {
		this.emailReceive = emailReceive;
	}

	@Override
	public String toString() {
		return "Email [emailNo=" + emailNo + ", emailTitle=" + emailTitle + ", emailContent=" + emailContent
				+ ", emailOFile=" + emailOFile + ", emailNFile=" + emailNFile + ", emailTime=" + emailTime + ", status="
				+ status + ", emailImportant=" + emailImportant + ", emailSend=" + emailSend + ", emailReceive="
				+ emailReceive + "]";
	}
	
	
	
	
	
}

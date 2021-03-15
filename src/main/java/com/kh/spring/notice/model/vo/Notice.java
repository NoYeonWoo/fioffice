package com.kh.spring.notice.model.vo;

public class Notice {

	public String notice_no;
	public String noticeWriter;
	public String noticeTitle;
	public String noticeContent;
	public String noticeDate;
	public String status;
	
	
	public Notice() {
		
	}


	public Notice(String notice_no, String noticeWriter, String noticeTitle, String noticeContent, String noticeDate,
			String status) {
		super();
		this.notice_no = notice_no;
		this.noticeWriter = noticeWriter;
		this.noticeTitle = noticeTitle;
		this.noticeContent = noticeContent;
		this.noticeDate = noticeDate;
		this.status = status;
	}


	public String getNotice_no() {
		return notice_no;
	}


	public void setNotice_no(String notice_no) {
		this.notice_no = notice_no;
	}


	public String getNoticeWriter() {
		return noticeWriter;
	}


	public void setNoticeWriter(String noticeWriter) {
		this.noticeWriter = noticeWriter;
	}


	public String getNoticeTitle() {
		return noticeTitle;
	}


	public void setNoticeTitle(String noticeTitle) {
		this.noticeTitle = noticeTitle;
	}


	public String getNoticeContent() {
		return noticeContent;
	}


	public void setNoticeContent(String noticeContent) {
		this.noticeContent = noticeContent;
	}


	public String getNoticeDate() {
		return noticeDate;
	}


	public void setNoticeDate(String noticeDate) {
		this.noticeDate = noticeDate;
	}


	public String getStatus() {
		return status;
	}


	public void setStatus(String status) {
		this.status = status;
	}


	@Override
	public String toString() {
		return "Notice [notice_no=" + notice_no + ", noticeWriter=" + noticeWriter + ", noticeTitle=" + noticeTitle
				+ ", noticeContent=" + noticeContent + ", noticeDate=" + noticeDate + ", status=" + status + "]";
	}


	
	
	
}

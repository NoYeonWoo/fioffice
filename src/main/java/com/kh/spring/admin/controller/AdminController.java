package com.kh.spring.admin.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.kh.spring.board.common.Pagination;
import com.kh.spring.board.common.model.vo.PageInfo;
import com.kh.spring.board.notice.model.service.NoticeService;
import com.kh.spring.board.notice.model.vo.Notice;

@Controller
public class AdminController {
	
	@Autowired
	private NoticeService noticeService;

	@RequestMapping("authority.ad")
	public String authorityView() {
		return "admin/authorityView";
	}
	
	@RequestMapping("dept.ad")
	public String deptView() {
		return "admin/deptAdminView";
	}
	
	@RequestMapping("notice.ad")
	public String noticeView() {
		return "admin/noticeAdminView";
	}
	
	@RequestMapping("address.ad")
	public String addressView() {
		return "admin/addressAdminView";
	}
	
	@RequestMapping("calendar.ad")
	public String calendarView() {
		return "admin/calendarAdminView";
	}
	
	@RequestMapping("survey.ad")
	public String surveyView() {
		return "admin/surveyAdminView";
	}
	
	@RequestMapping("meetingRoom.ad")
	public String meetingRoomView() {
		return "admin/meetingRoomAdminView";
	}
}

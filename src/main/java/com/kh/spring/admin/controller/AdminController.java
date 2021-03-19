package com.kh.spring.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminController {

	@RequestMapping("authority.ad")
	public String authorityView() {
		return "admin/authorityView";
	}
	
	@RequestMapping("dept.ad")
	public String deptView() {
		return "admin/deptAdminView";
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

package com.kh.spring.meetingroom.controller;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.spring.meetingroom.model.service.MeetingroomService;
import com.kh.spring.meetingroom.model.vo.Meetingroom;

@Controller
public class MeetingroomController {
	
	//회의실 관련 : .r 예약관련 : .re
	
	@Autowired
	private MeetingroomService  meetingService;
	//--------------------------------------------------------회의실--------------------------------------------------------//
	//@RequestMapping("enrollForm.re")
	//public String authorityView() {
	//	return "reservation/reservationInsertForm";
	//}
	
	@RequestMapping("insertRoom.r")
	public String insertRoom(Meetingroom room) {
		int result = meetingService.insertRoom(room);
		if(result > 0) {
			return null;
		}else {
			return null;
		}
		
	}
}

package com.kh.spring.meetingroom.controller;
import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kh.spring.meetingroom.model.service.MeetingroomService;
import com.kh.spring.meetingroom.model.vo.Meetingroom;

@Controller
public class MeetingroomController {
	
	//회의실 관련 : .r 예약관련 : .re
	
	@Autowired
	private MeetingroomService  meetingService;
	//--------------------------------------------------------회의실--------------------------------------------------------//
	@RequestMapping("enrollForm.re")
	public String authorityView() {
		return "reservation/reservationInsertForm";
	}
	
	@RequestMapping("meetingRoom.ad")
	public String meetingRoomView(Model model) {
		ArrayList<Meetingroom> rList = meetingService.selectRoomList();
		System.out.println("rList : "+ rList.toString());
		model.addAttribute("rList",rList);
		return "admin/meetingRoomAdminView";
	}
	@RequestMapping("insertRoom.r")
	public String insertRoom(Meetingroom room,Model model) {
		int result = meetingService.insertRoom(room);
		if(result > 0) {
			return "admin/meetingRoomAdminView";
		}else {
			model.addAttribute("msg","추가에 실패하였습니다.");
			return "admin/meetingRoomAdminView";
		}
		
	}
}

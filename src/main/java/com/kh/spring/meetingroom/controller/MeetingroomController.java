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
	
	//회의실예약화면
	@RequestMapping("enrollForm.re")
	public String authorityView(Model model) {
		ArrayList<Meetingroom> rList = meetingService.selectRoomList();
		System.out.println(rList);
		model.addAttribute("rList",rList);
		return "reservation/reservationInsertForm";
	}
	
	//회의실관리화면
	@RequestMapping("meetingRoom.ad")
	public String meetingRoomView(Model model) {
		ArrayList<Meetingroom> rList = meetingService.selectAllRoomList();
		model.addAttribute("rList",rList);
		return "admin/meetingRoomAdminView";
	}
	
	//회의실 추가
	@RequestMapping("insertRoom.r")
	public String insertRoom(Meetingroom room,Model model) {
		int result = meetingService.insertRoom(room);
		if(result > 0) {
			return "redirect:meetingRoom.ad";
		}else {
			model.addAttribute("msg","추가에 실패하였습니다.");
			return "admin/meetingRoomAdminView";
		}
		
	}
	
	//회의실 수정
	@RequestMapping("updateRoom.r")
	public String updateRoom(Meetingroom room,Model model) {
		System.out.println(room);
		int result = meetingService.updateRoom(room);
		if(result > 0) {
			return "redirect:meetingRoom.ad";
		}else {
			model.addAttribute("msg","수정에 실패하였습니다.");
			return "forward:meetingRoom.ad";
		}
		
	}
	
	//회의실 삭제
	@RequestMapping("deleteRoom.r")
	public String deleteRoom(int roomNo,Model model) {
		System.out.println(roomNo);
		int result = meetingService.deleteRoom(roomNo);
		if(result > 0) {
			return "redirect:meetingRoom.ad";
		}else {
			model.addAttribute("msg","삭제에 실패하였습니다.");
			return "forward:meetingRoom.ad";
		}
		
	}
}

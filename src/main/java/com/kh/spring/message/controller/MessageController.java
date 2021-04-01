package com.kh.spring.message.controller;

import org.springframework.beans.factory.annotation.Autowired;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.GsonBuilder;
import com.google.gson.JsonIOException;
import com.kh.spring.board.common.model.vo.Reply;
import com.kh.spring.employee.model.service.EmployeeService;
import com.kh.spring.employee.model.vo.Employee;
import com.kh.spring.mainCalendar.model.vo.Calendar;
import com.kh.spring.message.model.service.MessageService;
import com.kh.spring.message.model.vo.ChatRoom;
import com.kh.spring.message.model.vo.Message;
import com.kh.spring.todo.model.vo.Todo;


@Controller
public class MessageController {
	
	@Autowired
	private MessageService messageService;
	
	@Autowired 
	private EmployeeService employeeService;
	
 

	/* 메세지를 보낼 수 있는 사원 리스트 (본인 제외) */
	@RequestMapping("chat.mo")
	public String selectEmpList(Model model, HttpSession session) throws Exception {
		
		Employee empNo = (Employee)session.getAttribute("loginUser");

		ArrayList<Employee> list = messageService.msgEmpList(empNo);

		System.out.println("메신저 로그인 : " + empNo);
		model.addAttribute("list", list);
		
		return "message/msgChat";
		
	}
	
	
	/*  채팅방 생성... */
	@RequestMapping("insertChat.ca")
	public String insertChatroom(ChatRoom cr, HttpServletRequest request, Model model) {
		System.out.println("채팅방 생성:::" + cr);

		//int result = messageService.insertChatroom(cr);

		return "redirect:chat.mo";

	}
	
	/*  채팅방 확인... */
	@RequestMapping("selectChat.ca")
	@ResponseBody
	public Object selectMsg(String msgNo) {
		
		Message msg = messageService.selectMsg(msgNo);
		System.out.println("넘어옴 : " + msg);
		
		return msg;
		
		
	}
	
	/*  메세지 생성  
	@RequestMapping("insertMsg.ca")
	@ResponseBody
	public Object insertMsg(Message msg) {

		int result = messageService.insertMsg(msg);

		return "redirect:chat.mo";
	}*/
	
	
	@ResponseBody
	@RequestMapping("insertMsg.ca")
	public String insertReply(Message msg) {
		int result = messageService.insertMsg(msg);
		
		return String.valueOf(result);
		
	}
	
	@ResponseBody
	@RequestMapping(value="selectMsg.ca", produces="application/json; charset=UTF-8")
	public String selectReplyList(int msgNo) {
		
		ArrayList <Message> list = messageService.selectMsgList(msgNo);
		
		return new GsonBuilder().setDateFormat("yy년 MM월 dd일 HH:mm").create().toJson(list);
		
	}
	
	

	/* 사원 클릭하면 채팅방 (채팅방번호, 멤버1=나, 멤버2=보내는사람, 채팅방상태) 생성
	 * -> 오른쪽에 채팅방 리스트
	 * 클릭시 채팅방 모달후 메세지 전송, 메세지 리스트 출력

	@RequestMapping("chatinsert.mo")
	public String insertMsg(Message msg, Model model) {
		System.out.println("거쳐감");

		System.out.println(msg.toString());
		
		//int result = messageService.insertMsg(msg);
		//System.out.println("메세지 등록 : " + msg);

		return "redirect:chat.mo";

	}*/
	
	/*
	@ResponseBody
	@RequestMapping("insertMsg.ca")
	public String insertMessage(Message msg) {
		int result = messageService.insertMessage(msg);
		
		return String.valueOf(result);
		
	}
	
	@ResponseBody
	@RequestMapping(value="listMsg.ca", produces="application/json; charset=UTF-8")
	public String selectMessageList(String chatRoomNo) {
		
		ArrayList <Reply> list = messageService.selectMessageList(chatRoomNo);
		
		return new GsonBuilder().setDateFormat("yy년 MM월 dd일 HH:mm").create().toJson(list);
		
	}
	*/

	
}

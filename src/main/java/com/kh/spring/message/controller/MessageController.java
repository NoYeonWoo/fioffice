package com.kh.spring.message.controller;

import org.springframework.beans.factory.annotation.Autowired;


import java.util.ArrayList;


import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.google.gson.GsonBuilder;

import com.kh.spring.employee.model.service.EmployeeService;
import com.kh.spring.employee.model.vo.Employee;
import com.kh.spring.message.model.service.MessageService;
import com.kh.spring.message.model.vo.Message;



@Controller
public class MessageController {
	
	@Autowired
	private MessageService messageService;
	
	@Autowired 
	private EmployeeService employeeService;
	
 

	/* 메세지를 보낼 수 있는 사원 리스트 (본인 제외) */
	@RequestMapping("msgView.ma")
	public String selectEmpList(Model model, HttpSession session) throws Exception {
		
		Employee empNo = (Employee)session.getAttribute("loginUser");

		ArrayList<Employee> list = messageService.msgEmpList(empNo);

		System.out.println("메신저 로그인 : " + empNo);
		model.addAttribute("list", list);
		
		return "message/msgChat";
		
	}
	
	
	@ResponseBody
	@RequestMapping("minsert.ma")
	public String insertMsg(Message msg) {
		System.out.println("등록 거쳐감");

		System.out.println(msg.toString());
		
		int result = messageService.insertMsg(msg);

		System.out.println("등록 : " + msg);
		
		return String.valueOf(result);
		
	}
	
	@RequestMapping(value="mlist.ma")
	@ResponseBody
	public String selectmList(String chatNo) {
		System.out.println("넘어옴");
		ArrayList<Message> msgList = messageService.selectMsgList(chatNo);
		return new GsonBuilder().setDateFormat("YYYY/MM/dd/HH:mm").create().toJson(msgList);
		
	}
	
	
	
}

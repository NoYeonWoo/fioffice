package com.kh.spring.mainCalendar.controller;

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
import com.kh.spring.employee.model.vo.Employee;
import com.kh.spring.mainCalendar.model.service.CalendarService;
import com.kh.spring.mainCalendar.model.vo.Calendar;

@Controller
public class CalendarController {
	
	@Autowired
	private CalendarService calendarService;
	
 
	@RequestMapping("cmain.ca")
	public String mainView() {
		
		return "mainCalendar/fullCalendar";
		  
	}
	
	@ResponseBody
	@RequestMapping("clist.ca")
	public String listCalendar(Calendar ca, Model model, HttpSession session) throws Exception {
		Employee emp= (Employee)session.getAttribute("loginUser");

		ArrayList<Calendar> list = calendarService.listCalendar(ca);
		System.out.println("ca : " + ca);
		System.out.println("DB에 있는 캘린더 : " + list);
		System.out.println("로그인 : " + emp);
		
		//모델 뷰단으로 보냄
		model.addAttribute("list", list);
		
		
		return "mainCalendar/test/fullCalendar";
	}
	
	@RequestMapping("cinsert.ca")
	public String insertCalendar(Calendar ca, Model model) {
		System.out.println("거쳐감");
		
		//ca.setCalSDate(java.sql.Date.valueOf(ca.getCalSDates()));
		//ca.setCalEDate(java.sql.Date.valueOf(ca.getCalEDates()));
	
		System.out.println(ca.toString());
		
		int result = calendarService.insertCalendar(ca);
		System.out.println("일정 등록 : " + ca);

		return "redirect:cmain.ca";

	}

}

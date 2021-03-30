package com.kh.spring.mainCalendar.controller;

import org.springframework.beans.factory.annotation.Autowired;

import java.io.File;
import java.io.IOException;
import java.text.DateFormat;
import java.text.ParseException;
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
import com.kh.spring.board.deptboard.model.vo.DeptBoard;
import com.kh.spring.common.exception.CommException;
import com.kh.spring.employee.model.vo.Employee;
import com.kh.spring.mainCalendar.model.service.CalendarService;
import com.kh.spring.mainCalendar.model.vo.Calendar;

@Controller
public class CalendarController {
	
	@Autowired
	private CalendarService calendarService;
	
 
	/* 메인 캘린더 */
	@RequestMapping("cmain.ca")
	public String mainView(Calendar ca, Model model, HttpSession session) throws Exception {
		Employee emp= (Employee)session.getAttribute("loginUser");

		ArrayList<Calendar> list = calendarService.listCalendar(ca);

		//System.out.println("DB에 있는 캘린더 : " + list);
		//System.out.println("로그인 : " + emp);
		
		model.addAttribute("list", list);
		
		return "mainCalendar/fullCalendar";
		  
	}
	
	/* 일정 상세 보기 모달 확인용 */
	@RequestMapping("selectCalendar")
	@ResponseBody
	public Object selectEmployee(String calNo) {
		
		System.out.println("넘어옴 : " + calNo);
		
		Calendar ca = calendarService.selectCalendar(calNo);
		System.out.println(ca.toString());
		
		return ca;
	}
	
	/* 일정 추가 */
	@RequestMapping("cinsert.ca")
	public String insertCalendar(Calendar ca, Model model) {
		System.out.println("거쳐감");
		
		//ca.setCalSDates(java.sql.Date.valueOf(ca.getCalSDate())); 
		//ca.setCalEDates();
		
		/*
		DateFormat dateParser = new SimpleDateFormat("yyyy-MM-dd HH:mm");
        Date date, date2;
		try {
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss");
			SimpleDateFormat output = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			Date ds = sdf.parse(ca.getCalSDates());
			Date de = sdf.parse(ca.getCalEDates());
			
			String formattedTimeS = output.format(ds);
			String formattedTimeE = output.format(de);
			
			System.out.println(formattedTimeS);
			
			ca.setCalSDate(java.sql.Date.valueOf(formattedTimeS));
			ca.setCalSDate(java.sql.Date.valueOf(formattedTimeE));
			
			
			
			//date = dateParser.parse(ca.getCalSDate());
			//date2 = dateParser.parse(ca.getCalEDate());
			//System.out.println(date.getClass().getName() + ", " + date2 );

		
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
       */
		
		System.out.println(ca.toString());
		
		int result = calendarService.insertCalendar(ca);
		System.out.println("일정 등록 : " + ca);

		return "redirect:cmain.ca";

	}
	
	/* 일정 수정 */
	@RequestMapping("cupdate.ca")
	public String updateCalendar(Calendar ca, Model model) {
		
		System.out.print("수정된 일정 넘어옴 : " + ca);
		
		int result = calendarService.updateCalendar(ca);
		
		
		model.addAttribute(ca);
		
		return "redirect:cmain.ca";
		
	}
	
	/* 일정 삭제 */
	@RequestMapping("cdelete.ca")
	public String deleteCalendar(int calNo, HttpServletRequest request, Model model) {
		
		int result = calendarService.deleteCalendar(calNo);
		System.out.println("삭제된 일정 넘어옴 : " + calNo);
		
		
		return "redirect:cmain.ca";
		
		
	}
	
}

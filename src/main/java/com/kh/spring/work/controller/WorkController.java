package com.kh.spring.work.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cglib.core.Local;

import java.io.File;
import java.io.IOException;
import java.sql.PreparedStatement;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.text.SimpleDateFormat;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.GsonBuilder;
import com.google.gson.JsonIOException;

import com.kh.spring.address.model.vo.PageInfo;
import com.kh.spring.common.Pagination;
import com.kh.spring.work.model.service.WorkService;
import com.kh.spring.work.model.vo.Work;



@Controller
public class WorkController {
	
	@Autowired
	private WorkService workService;

	@RequestMapping("view.work")
	//viewwork
	public String selectList(/*@RequestParam(value="currentPage",required=false, defaultValue="1") int currentPage, Model model*/) {

			
			
			/*
			int listCount = workService.selectListCount();
			System.out.println(listCount);
			
			PageInfo pi = Pagination.getPageInfo(listCount, currentPage,10,10);
			
			ArrayList<Work> list = workService.selectListCount(pi);
			
			model.addAttribute("list",list);
			model.addAttribute("pi",pi);
	*/
		
		return "work/workTest";
	}
	
	
	
	
	
	
	@RequestMapping("view.workMain")
	public String viewWorkMain() {
		
		return "work/workMain";
	}
	@RequestMapping("view.workMain2")
	public String viewWorkMain2() {
		
		return "work/workMain2";
	}
	
	

	
	////////////////////////////////////////////////////////////////시작
	
	
	@RequestMapping(value="start.work",method=RequestMethod.POST)//원래 eno timeNow // Work work //@RequestParam("empNo") String empNo
	public String workStart(Work Times,@RequestParam("empNo") String empNo, HttpServletRequest request, Model model,HttpSession session) {
		
		
		//System.out.println(timeNow);//2021-03-27 03:41:43
		//System.out.println(timeNow.getClass().getName());//java.lang.String
		//System.out.println(eno);//951220103
		// 찍어보기

		
		
		/*
		SimpleDateFormat dateParser = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        Date timeNow2 = null;
		try {
			timeNow2 = (Date) dateParser.parse(timeNow);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        System.out.println("gfdkl"+timeNow2);
        java.sql.Date timeNowT = new java.sql.Date(timeNow2.getTime());
		System.out.println("시간변환 1: ");
		System.out.println("시간변환 2: "+timeNowT);
		*/
		/*
		//SimpleDateFormat dateParser = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		//SimpleDateFormat dateParser2 = new SimpleDateFormat("HH:mm:ss");
		//SimpleDateFormat dateParser3 = new SimpleDateFormat("HH:mm:ss");
        Date date = null;
        LocalDateTime date2 = null;

		try {
			date = dateParser.parse(timeNow);

		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println("date 타임 "+date);
		date2=LocalDateTime.now();
		//System.out.println("지금시간"+LocalDateTime.now());
        java.sql.Date s = new java.sql.Date(date.getTime());
        System.out.println("s 타임"+s);
		*/
        //SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd kk:mm:ss");
		//timeNow = dateFormat.format(Calendar.getInstance().getTime());
		//
		//System.out.println("시간"+timeNow);
		
		
		
		/////////////////////////////////////////////
		
		//System.out.println("empNo"+.getEmpNo());//951220103
		System.out.println("empNo 컨"+empNo);
		//PreparedStatement pstmt = null;
		//System.out.println("w 출력 "+empNo);
		Work preWork = workService.selectTimes(empNo);
		System.out.println("preWork :: "+preWork.toString());
		//System.out.println("list :: "+list);
		
		//System.out.println("시간들"+Times);
		//session.setAttribute("Times", Times);
		
		Times.setWorkStack(preWork.getWorkStack());
		Times.setWorkExceed(preWork.getWorkExceed());
		Times.setWorkRemain(preWork.getWorkRemain());
		
		System.out.println("Times들 :: "+Times.toString());
		
		//model.addAttribute("Times", Times);
		
		
		int result= workService.insertWork(Times);
		
		//model.addAttribute("loginUser", loginUser);
		///////////////////////////////
		
		
		//int result = workService.insertWork(work);
		
		if (result>0) {
			return "work/workMain2";
		}else {
			return "location.reload";
		}
		
	}
	
	@RequestMapping("end.work")//@RequestParam("empNo") String empNo
	public String workEnd(@RequestParam("empNo") String empNo ,String timeNow, HttpServletRequest request) {
		
		//SimpleDateFormat transFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		//Date timeNow = transFormat.parse(time);
		
		
		
		//Work work = workService.selectWork(empNo);

		
		int result = workService.updateWork1(empNo);
		int result2 = workService.updateWork2(empNo);
		int result3 = workService.updateWork3(empNo);
		
		if (result>0) {
			return "work/workMain2";
		}else {
			return "location.reload";
		}
		
	}
	
	
	////////////////시작
}
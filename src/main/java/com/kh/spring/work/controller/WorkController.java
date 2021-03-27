package com.kh.spring.work.controller;

import org.springframework.beans.factory.annotation.Autowired;

import java.io.File;
import java.io.IOException;
import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.ArrayList;


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
	
	
	@RequestMapping("start.work")
	public String workStart(String eno,String timeNow, HttpServletRequest request) {
		
		System.out.println(timeNow);//2021-03-27 03:41:43
		System.out.println(timeNow.getClass().getName());//java.lang.String
		System.out.println(eno);//951220103
		// 찍어보기

		System.out.println("time위"+timeNow);
		Date timeNow2=java.sql.Date.valueOf(timeNow);
		System.out.println("time아래"+timeNow2);
		//work.setEmpNo(eno);
		//work.setWorkStart(timeNow);
		
		//int result = workService.insertWork(work);
		
		//if (result>0) {
		//	return "location.reload";
		//}else {
			return "location.reload";
		//}
		
	}
	
	@RequestMapping("end.work")
	public String workEnd(String eno,Date timeNow, HttpServletRequest request) {
		
		//SimpleDateFormat transFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		//Date timeNow = transFormat.parse(time);
		Work work = workService.selectWork(eno);
		work.setEmpNo(eno);
		work.setWorkEnd(timeNow);
		
		int result = workService.updateWork(work);
		
		if (result>0) {
			return "location.reload";
		}else {
			return "location.reload";
		}
		
	}
	
	
	////////////////시작
}
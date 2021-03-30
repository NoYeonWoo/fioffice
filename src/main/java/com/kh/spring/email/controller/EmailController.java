package com.kh.spring.email.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cglib.core.Local;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

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
import com.kh.spring.email.model.service.EmailService;
import com.kh.spring.email.model.vo.Email;
import com.kh.spring.employee.model.vo.Employee;



@Controller
public class EmailController {
	

	@Autowired
	private EmailService emailService;
	
	@RequestMapping("view.email")
	public String selectList(@RequestParam(value="currentPage",required=false, defaultValue="1") int currentPage, Model model,HttpSession session,HttpServletRequest request, HttpServletResponse response) {
		
		Employee emp= (Employee) session.getAttribute("loginUser");
		
		int listCount = emailService.selectListCount();
		
		PageInfo pi = Pagination.getPageInfo(listCount, currentPage,10,10);//페이지리밋 10 보드 이미지 5
		
		ArrayList<Email> list = emailService.selectListCount(pi,emp);
		
		model.addAttribute("list",list);
		model.addAttribute("pi",pi);
		

		return "email/emailTest";
		
	}

	@RequestMapping("send.email")
	public String sendEmail() {
		return "email/emailSend";
	}
	@RequestMapping("detail.email")
	public String detailEmail() {
		return "email/emailDetail";
	}
	
	
	////////////////시작
}
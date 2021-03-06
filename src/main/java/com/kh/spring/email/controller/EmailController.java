package com.kh.spring.email.controller;

import org.springframework.beans.factory.annotation.Autowired;

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



@Controller
public class EmailController {
	


	@RequestMapping("view.email")
	public String viewEmail() {
		return "email/email";
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
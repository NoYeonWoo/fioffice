package com.kh.spring.board.notice.controller;

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


import com.kh.spring.board.notice.model.service.NoticeService;

@Controller
public class NoticeController {
	
	@Autowired
	private NoticeService noticeService;
	
	@RequestMapping("nlist.bo")
	public String boardList() {
		
		return "board/notice/noticeListView";
		  
	}
	
	@RequestMapping("ninsertForm.bo")
	public String boardInsertForm() {
		
		return "board/notice/noticeInsertForm";
		  
	}
	
	@RequestMapping("nupdateForm.bo")
	public String boardUpdateForm() {
		
		return "board/notice/noticeUpdateForm";
		  
	}
	
	@RequestMapping("ndetail.bo")
	public String boardDetailView() {
		
		return "board/notice/noticeDetailView";
		  
	}

}

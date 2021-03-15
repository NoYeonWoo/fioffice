package com.kh.spring.board.community.controller;

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


import com.kh.spring.board.community.model.service.CommunityService;

@Controller
public class CommunityController {
	
	@Autowired
	private CommunityService communityService;
	
	@RequestMapping("clist.bo")
	public String boardList() {
		
		return "board/community/communityListView";
		  
	}
	
	@RequestMapping("cinsertForm.bo")
	public String boardInsertForm() {
		
		return "board/community/communityInsertForm";
		  
	}
	
	@RequestMapping("cupdateForm.bo")
	public String boardUpdateForm() {
		
		return "board/community/communityUpdateForm";
		  
	}
	
	
	@RequestMapping("cdetail.bo")
	public String boardDetailView() {
		
		return "board/community/communityDetailView";
		  
	}

}

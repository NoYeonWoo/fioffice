package com.kh.spring.board.deptboard.controller;

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


import com.kh.spring.board.deptboard.model.service.DeptService;


@Controller
public class DeptController {
	
	@Autowired
	private DeptService deptService;
	
	@RequestMapping("dlist.bo")
	public String boardList() {
		
		return "board/deptboard/dboardListView";
		  
	}
	
	@RequestMapping("dinsertForm.bo")
	public String boardInsertForm() {
		
		return "board/deptboard/dboardInsertForm";
		  
	}
	
	@RequestMapping("dupdateForm.bo")
	public String boardUpdateForm() {
		
		return "board/deptboard/dboardUpdateForm";
		  
	}
	
	@RequestMapping("ddetail.bo")
	public String boardDetailView() {
		
		return "board/deptboard/dboardDetailView";
		  
	}

}

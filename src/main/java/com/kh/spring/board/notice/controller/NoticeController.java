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
import com.kh.spring.board.common.Pagination;
import com.kh.spring.board.common.model.vo.PageInfo;
import com.kh.spring.board.common.model.vo.Reply;
import com.kh.spring.board.notice.model.service.NoticeService;
import com.kh.spring.board.notice.model.vo.Notice;

@Controller
public class NoticeController {
	
	@Autowired
	private NoticeService noticeService;
	
	@RequestMapping("nlist.bo")
	public String selectNlist(@RequestParam(value="currentPage", required=false, defaultValue="1") int currentPage, Model model) {
		
		int listCount = noticeService.selectLictCount();
		
		PageInfo pi = Pagination.getPageInfo(listCount, currentPage, 10, 5);
		
		ArrayList<Notice> list = noticeService.selectList(pi);
		
		model.addAttribute("list", list);
		model.addAttribute("pi", pi);
		
		return "board/notice/noticeListView";
		  
	}
	
	@RequestMapping("ninsertForm.bo")
	public String noticeInsertForm() {
		
		return "board/notice/noticeInsertForm";
		  
	}
	
	/*@RequestMapping("ninsert.bo")
	public String insertBoard(Notice n, HttpServletRequest request, Model model,
							@RequestParam(name="uploadFile", required=false) MultipartFile file) {
	
		System.out.println(n);
		System.out.println("file : " + file);
		
		
		
		int result = noticeService.insertNotice(n);
		
		if(result > 0) {
			return "redirect:nlist.bo";
		}else {
			throw new Exception("게시물 작성에 실패하였습니다.");
		}
	}*/
	
	
	@RequestMapping("nupdateForm.bo")
	public String noticeUpdateForm() {
		
		return "board/notice/noticeUpdateForm";
		  
	}
	
	@RequestMapping("ndetail.bo")
	public ModelAndView selectNotice(int noticeNo, ModelAndView mv) {
		
		int result = noticeService.updateIncreaseCount(noticeNo);
		
		if(result > 0) {
			Notice n = noticeService.selectBoard(noticeNo);
			mv.addObject("n", n).setViewName("board/notice/noticeDetailView");
		}else {
			
		}
		
		return mv;
	}
	
	@ResponseBody
	@RequestMapping("rinsert.bo")
	public String insertReply(Reply r) {
		int result = noticeService.insertReply(r);
		
		return String.valueOf(result);
		
	}
	
	@ResponseBody
	@RequestMapping(value="rlist.bo", produces="application/json; charset=UTF-8")
	public String selectReplyList(int noticeNo) {
		
		ArrayList <Reply> list = noticeService.selectReplyList(noticeNo);
		
		return new GsonBuilder().setDateFormat("yyyy년 MM월 dd일").create().toJson(list);
		
	}
		

}

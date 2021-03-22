package com.kh.spring.board.notice.controller;

import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.GsonBuilder;
import com.google.gson.JsonIOException;
import com.google.gson.JsonObject;
import com.kh.spring.board.common.Pagination;
import com.kh.spring.board.common.model.vo.PageInfo;
import com.kh.spring.board.common.model.vo.Reply;
import com.kh.spring.board.notice.model.service.NoticeService;
import com.kh.spring.board.notice.model.vo.Notice;
import com.kh.spring.common.exception.CommException;
import com.kh.spring.employee.model.vo.Employee;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Controller
public class NoticeController {
	
	@Autowired
	private NoticeService noticeService;
	
	@RequestMapping("nlist.bo")
	public String selectNlist(@RequestParam(value="currentPage", required=false, defaultValue="1") int currentPage, Model model) {
		
		int listCount = noticeService.selectLictCount();
		
		PageInfo pi = Pagination.getPageInfo(listCount, currentPage, 10, 10);
		
		ArrayList<Notice> list = noticeService.selectList(pi);
		
		model.addAttribute("list", list);
		model.addAttribute("pi", pi);
		
		return "board/notice/noticeListView";
		  
	}
	
	
	@RequestMapping("ninsertForm.bo")
	public String noticeInsertForm() {
		
		return "board/notice/noticeInsertForm";
		  
	}
	
	@RequestMapping("ninsert.bo")
	public String insertNotice(Notice n, HttpServletRequest request, Model model,
			@RequestParam(name="uploadFile", required=false) MultipartFile file) {
		
		System.out.println(n);
		System.out.println("file : " + file);
		
		if(!file.getOriginalFilename().equals("")) {
		
		String changeName = saveFile(file,request);
		
		if(changeName != null) {
		
		//파일이 저장된 경우
		n.setOriginName(file.getOriginalFilename());
		n.setChangeName(changeName);
		}
		
		}
		
		int result = noticeService.insertNotice(n);
		
		if(result > 0) {
		return "redirect:list.bo";
		}else {
		throw new CommException("게시물 작성에 실패하였습니다.");
		}
		}
	
	
	private String saveFile(MultipartFile file, HttpServletRequest request) {
		
		// 파일이 저장될 경로 설정
		String resources = request.getSession().getServletContext().getRealPath("resources");
		
		// 파일의 경로 : resources 하위 upload_files 폴더 생성
		// "/폴더명/"로 해줄 것
		String savePath = resources + "/upload_files/";
		
		System.out.println("savePath : " + savePath);
		
		String originName = file.getOriginalFilename();
		String currentTime = new SimpleDateFormat("yyyyMMddHHmmss").format(new Date());
		
		String ext = originName.substring(originName.lastIndexOf("."));
		
		String changeName = currentTime + ext;
		
		try {
			file.transferTo(new File(savePath + changeName));
		} catch (IllegalStateException | IOException e) {
			System.out.println("파일 업로드 에러 : " + e.getMessage());
		}
		
		return changeName;
	}
	
	
	@RequestMapping("getchagePhoto.do")
	@ResponseBody
	public String savePhoto(MultipartFile file, HttpServletRequest request) {
		
		String root = request.getSession().getServletContext().getRealPath("resources");
		String savePath = root + "\\upload_files";
			File folder = new File(savePath);
		if (!folder.exists()) {
			folder.mkdirs();
		}
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
		String originalFileName = file.getOriginalFilename();
		String renameFileName = sdf.format(new java.sql.Date(System.currentTimeMillis())) + "."
				+ originalFileName.substring(originalFileName.lastIndexOf(".") + 1);
		
		String renamePath = folder + "\\" + renameFileName;
		try {
			file.transferTo(new File(renamePath));
		} catch (IOException e) {
			e.printStackTrace();
		}
			return renameFileName;
	}
	
	
	@RequestMapping("nupdateForm.bo")
	public String noticeUpdateForm() {
		
		return "board/notice/noticeUpdateForm";
		  
	}
	
	@RequestMapping("ndetail.bo")
	public ModelAndView selectNotice(int nno, ModelAndView mv) {
		int result = noticeService.updateIncreaseCount(nno);
		
		if(result > 0) {
			Notice n = noticeService.selectBoard(nno);
			
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
	public String selectReplyList(int nno) {
		
		ArrayList <Reply> list = noticeService.selectReplyList(nno);
		
		return new GsonBuilder().setDateFormat("yyyy년 MM월 dd일").create().toJson(list);
		
	}
		

}

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
	
	@RequestMapping("notice.ad")
	public String adminNoticeView(@RequestParam(value="currentPage", required=false, defaultValue="1") int currentPage, Model model) {
		
		int listCount = noticeService.selectLictCount();
		
		PageInfo pi = Pagination.getPageInfo(listCount, currentPage, 10, 10);
		
		ArrayList<Notice> list = noticeService.selectList(pi);
		
		model.addAttribute("list", list);
		model.addAttribute("pi", pi);
		
		return "admin/noticeListView";
		  
	}
	
	@RequestMapping("ndetail.ad")
	public ModelAndView adminNoticeSelect(int nno, ModelAndView mv) {
		int result = noticeService.updateIncreaseCount(nno);
		
		if(result > 0) {
			Notice n = noticeService.selectBoard(nno);
			
			mv.addObject("n", n).setViewName("admin/noticeDetailView");
		}else {
			
		}
		
		return mv;
	}
	
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
		return "redirect:notice.ad";
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
		String savePath = root + "/upload_files/";
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
	
	@RequestMapping("ndelete.bo")
	public String deleteBoard(int nno, String fileName, HttpServletRequest request, Model model) {
		
		int result = noticeService.deleteNotice(nno);
		System.out.println("넘어옴" + nno);
		
		if(result > 0) {
			if(fileName.equals("")) {
				deleteFile(fileName, request);
			}
			return "redirect:notice.ad";
		}else {
			throw new CommException("게시물 삭제에 실패하였습니다.");
		}
		
	}
	
	private void deleteFile(String fileName, HttpServletRequest request) {
		
		String resources = request.getSession().getServletContext().getRealPath("resources");
		String savePath = resources + "/upload_files/";
		
		File deleteFile = new File(savePath + fileName);
		deleteFile.delete();
		
		
	}
	
	@RequestMapping("nupdateForm.bo")
	public ModelAndView updateForm(ModelAndView mv, int nno) {
		
		mv.addObject("n", noticeService.selectBoard(nno)).
		setViewName("board/notice/noticeUpdateForm");
		
		return mv;
		
	}
	
	@RequestMapping("nupdate.bo")
	public ModelAndView updateBoard(Notice n, ModelAndView mv, HttpServletRequest request,
									@RequestParam(value="reUploadFile", required=false) MultipartFile file) {
		
		// null이 아닌 경우!
		if(!file.getOriginalFilename().equals("")) { // 새로 넘어온 파일이 있는 경우 
			
			if(n.getChangeName() != null) { // 새로 넘어온 파일이 있는데 기존 파일도 있는 경우 -> 업로드 되어 있는 기존 파일 삭제
				deleteFile(n.getChangeName(), request);
			}
			
			String changeName = saveFile(file, request); // 새로 넘어온 파일을 서버에 업로드 하는 과정
			
			n.setOriginName(file.getOriginalFilename());
			n.setChangeName(changeName);
			
			/*
		       * 1. 기존의 첨부파일 X, 새로 첨부된 파일 X    
		       *      --> originName : null, changeName : null
		       * 
		       * 2. 기존의 첨부파일 X, 새로 첨부된 파일 O      
		       *      --> 서버에 업로드 후 
		       *      --> originName : 새로첨부된파일원본명, changeName : 새로첨부된파일수정명
		       * 
		       * 3. 기존의 첨부파일 O, 새로 첨부된 파일 X      
		       *      --> originName : 기존첨부파일원본명, changeName : 기존첨부파일수정명
		       * 
		       * 4. 기존의 첨부파일 O, 새로 첨부된 파일 O  
		       *      --> 서버에 업로드 후   
		       *      --> originName : 새로첨부된파일원본명, changeName : 새로첨부된파일수정명
		     */
			
		}
		
		int result = noticeService.updateNotice(n);
		
		System.out.print(result);
		
		if(result > 0) {
			mv.addObject("nno", n.getNoticeNo())
			.setViewName("redirect:ndetail.ad");
		}else {
			throw new CommException("게시물 수정에 실패하였습니다.");
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
		
		return new GsonBuilder().setDateFormat("yy년 MM월 dd일 HH:mm").create().toJson(list);
		
	}
		

}

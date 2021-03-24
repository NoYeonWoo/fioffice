package com.kh.spring.approval.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.kh.spring.approval.model.service.ApprovalService;
import com.kh.spring.approval.model.vo.Approval;
//import com.kh.spring.common.exception.CommException;
import com.kh.spring.employee.model.vo.Employee;


@Controller
public class ApprovalController {
	@Autowired
	private ApprovalService approvalService;
	
	
	@RequestMapping("approvalList.do")
	public String approvalList() {
		return "approval/approvalListView";
	}
	
	@RequestMapping("approvalInsertForm.do")
	public String approvalInsertForm(String deptCode, Model model, HttpSession session) {
	    
		Employee emp=(Employee) session.getAttribute("loginUser");
		deptCode=emp.getDeptCode();
		Employee fApprEmp=approvalService.selectfApprEmp(deptCode);//중간승인자 불러오기
		Employee lApprEmp=approvalService.selectlApprEmp();// 마지막 승인자 불러오기 
		
		
		System.out.println("deptCode::" +deptCode);
		System.out.println("첫번째 결재자 나와라::"+fApprEmp);
		System.out.println("대표님 나와라::"+lApprEmp);
		
		model.addAttribute("firstApprEmp",fApprEmp);
		model.addAttribute("lastAppEmp",lApprEmp);
		 
		return "approval/approvalInsertView";
	}
	
	
	@RequestMapping("insertApproval.do")
	public String approvalInsert(Approval ap,HttpServletRequest request,Model model, 
		@RequestParam(name = "uploadFile", required = false) MultipartFile file) {

		if (!file.getOriginalFilename().equals("")) {
			String changeName = saveFile(file, request);

			if (changeName != null) {
				ap.setOrginalName(file.getOriginalFilename());
				ap.setChangeName(changeName);
			}
		}

		int result =approvalService.insertApproval(ap);
		
		if (result > 0) {

			return "redirect:approvalList.do";
		} else {
			
		}
		return null;
	}
	
	
	
	
	private String saveFile(MultipartFile file, HttpServletRequest request) {
		String resources = request.getSession().getServletContext().getRealPath("resources");
		String savePath = resources + "\\upload_files\\";

		System.out.println("savaPath::" + savePath);

		String originName = file.getOriginalFilename();
		String currentTime = new SimpleDateFormat("yyyyMMddHHmmss").format(new Date());

		String ext = originName.substring(originName.lastIndexOf("."));
		String changeName = currentTime + ext;

		try {
			file.transferTo(new File(savePath + changeName));
		} catch (IllegalStateException | IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("파일 업로드 에러::" + e.getMessage());
		}

		return changeName;
	}
	
	//결재자가 결재 하기 창으로 넘어감 
	@RequestMapping("approval.do")
	public String approval() {
		return "approval/approvalView";
	}
	
	//상신인이 볼수 있는 결재 문서 상세보기 
	@RequestMapping("approvalDetailView.do")
	public String approvalDetailView() {
		return "approval/approvalDetailView";
	}
}

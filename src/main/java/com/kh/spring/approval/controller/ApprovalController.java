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
import org.springframework.web.servlet.ModelAndView;

import com.kh.spring.approval.model.service.ApprovalService;
import com.kh.spring.approval.model.vo.Approval;
import com.kh.spring.common.exception.CommException;
//import com.kh.spring.common.exception.CommException;
import com.kh.spring.employee.model.vo.Employee;


@Controller
public class ApprovalController {
	@Autowired
	private ApprovalService approvalService;
	
	//사이드바에 전자결재 버튼을 누루면 리스트가 같이 들어올거임 
	@RequestMapping("approvalList.do")
	public String approvalList(Employee emp, Model m, HttpSession session) {
		//deptcode 와 유저 넘기는 거 잊지 말자 
		emp=(Employee) session.getAttribute("loginUser");
		
     	System.out.println(emp);
		//기안문서-내가 올린문서 중 진행중
		ArrayList<Approval> alist=approvalService.selectyList(emp);
		//기안문서인데 첫번째 결재자용 
		ArrayList<Approval> falist=approvalService.selectfaList(emp);// 처음 미결재시 status'Y' 결재'A'
		//기안문서 마지막 결재자
		ArrayList<Approval> clist=approvalService.selectclist(emp);// 처음 미결재시 status'A' 결재'C'
		
		System.out.println("진행중문서::"+alist);
		System.out.println("첫번째 결재자 문서::"+falist);
		System.out.println("두번째 결재자 문서::"+clist);
		
		
		m.addAttribute("alist",alist);
		m.addAttribute("falist",falist);
		m.addAttribute("clist",clist);
		return "approval/approvalListView";
	}
	
	//결재하기 버튼을 누루면 첫결재자와 대표가 들어감 
	@RequestMapping("approvalInsertForm.do")
	public String approvalInsertForm(String deptCode, Model model, HttpSession session) {
	    
		Employee emp=(Employee) session.getAttribute("loginUser");
		deptCode=emp.getDeptCode();
		
	
	
		Employee fApprEmp=approvalService.selectfApprEmp(deptCode);//중간승인자 불러오기
		
		Employee lApprEmp=approvalService.selectlApprEmp();// 마지막 승인자 불러오기 
	
		
		System.out.println("deptCode::" +deptCode);
		System.out.println("첫번째 결재자 나와라::"+fApprEmp);
		System.out.println("대표님 나와라::"+lApprEmp);
	
	
		if( emp.getEmpNo().equals(fApprEmp.getEmpNo()) || fApprEmp.getEmpNo().equals("920223100")){
			model.addAttribute("firstApprEmp",null);
			}
			else {
			model.addAttribute("firstApprEmp",fApprEmp);
			}
	
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
	
	//상신인이 볼수 있는 결재 문서 상세보기 여기에는 업데이트도 없고 보기만 가능 
//	@RequestMapping("approvalDetailView.do")
//	public String approvalDetailView() {
//		return "approval/approvalDetailView";
//		
//		
//	}
	
	
	@RequestMapping("approvalDetailView.do")
	public ModelAndView selectBoard(int ano, ModelAndView mv,String firstapp ,HttpSession session) {
		
		Employee emp=(Employee) session.getAttribute("loginUser");
	
		
		Employee lApprEmp=approvalService.selectlApprEmp();// 마지막 승인자 불러오기 
		
            Approval ap = approvalService.selectdetailapproval(ano);
            firstapp=ap.getFirstApprEmp();
            Employee firstperson=approvalService.selectfApprEmpDetail(firstapp);
	        System.out.println("상세보기 "+ap);
	        
	        
	    
	    			mv.addObject("firstApprEmp",firstperson);
	   
	    	       mv.addObject("lastAppEmp",lApprEmp);
	    	       
			
	    	       mv.addObject("ap", ap).setViewName("approval/approvalDetailView");
	    
		
	
		return mv;

	}
}

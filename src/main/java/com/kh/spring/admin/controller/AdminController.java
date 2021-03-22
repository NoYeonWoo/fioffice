package com.kh.spring.admin.controller;

import java.util.ArrayList;
import java.util.HashMap;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.GsonBuilder;
import com.kh.spring.admin.model.service.AdminService;
import com.kh.spring.admin.model.vo.Authority;
import com.kh.spring.admin.model.vo.Department;
import com.kh.spring.admin.model.vo.TreeModel;
import com.kh.spring.employee.model.service.EmployeeService;
import com.kh.spring.employee.model.vo.Employee;

import org.springframework.web.bind.annotation.RequestParam;

import com.kh.spring.board.common.Pagination;
import com.kh.spring.board.common.model.vo.PageInfo;
import com.kh.spring.board.notice.model.service.NoticeService;
import com.kh.spring.board.notice.model.vo.Notice;

@Controller
public class AdminController {
	
	@Autowired
	private AdminService adminService;
	
	@Autowired
	private EmployeeService employeeService;
	
  @Autowired
	private NoticeService noticeService;

  //권한관리창
	@RequestMapping("authority.ad")
	public String authorityView(Model model) {
		ArrayList adminList = adminService.selectAdminList();
		model.addAttribute("adminList",adminList);
		
		return "admin/authorityView";
	}
	
	//권한리스트
	@RequestMapping(value="selectAuthList",produces="appliction/json; charset=UTF-8" )
	@ResponseBody
	public String selectAuthList() {

		ArrayList<Authority> authList = adminService.selectAuthList();
		return new GsonBuilder().create().toJson(authList);
	}
	
	//조직도
	@RequestMapping("/treeList")
	@ResponseBody
	public ArrayList treeView(Model model){
	    ArrayList<Department> dList = adminService.selectDeptList();
	    ArrayList<Employee> eList = adminService.selectEmployeeList();
	    
	    ArrayList<TreeModel> treeModel = new ArrayList<TreeModel>();
	    treeModel.add(new TreeModel("D99", "0", "임원진", null, null));
	    for(int i = 0 ;i < dList.size();i++) {
	    	String dCode=dList.get(i).getDeptCode();
	    	String dName=dList.get(i).getDeptName();
	    	if(!dCode.equals("D99")) {
	    		if(dCode.length()<=3) {
	    			treeModel.add(new TreeModel(dCode, "0", dName, null, null));
	    		}else {
	    			if(dCode.length()==4) {
	    				treeModel.add(new TreeModel(dCode, dCode.substring(0, 2), dName, null, null));
	    			}else {
	    				treeModel.add(new TreeModel(dCode, dCode.substring(0, 3), dName, null, null));
	    			}
	    		}
	    	}
	    }
	    for(int j = 0; j <eList.size(); j++) {
	    	String eCode=eList.get(j).getEmpNo();
	    	String dCode=eList.get(j).getDeptCode();
	    	String eName=eList.get(j).getEmpName();
	    	String jName=eList.get(j).getEmpPosition();
	    	if(dCode==null) {
	    		treeModel.add(new TreeModel(eCode, "D99", eName+" "+jName, null, null));
	    	}else {
	    		treeModel.add(new TreeModel(eCode, dCode, eName+" "+jName, null, null));
	    	}
	    	
	    }
	    
	    return treeModel;
	}
	
	//권한 추가
	@RequestMapping("/insertAuthority")
	@ResponseBody
	public String insertAuthority(Authority auth) {
		
		auth.setAuthNo(auth.getAdminNo()+auth.getEmpNo());
		
		int result1 = adminService.selectAuthority(auth.getAuthNo());
		
		if(result1 < 1) {
			int result2 = adminService.insertAuthority(auth);
			return String.valueOf(result2);
		}else {
			return String.valueOf(result1+1);
		}	
	}
	
	//권한삭제
	@RequestMapping("/deleteAuthority")
	@ResponseBody
	public String deleteAuthority(String authNo) {

		int result = adminService.deleteAuthority(authNo);
		
			return String.valueOf(result);
	}
	
	@RequestMapping("dept.ad")
	public String deptView() {
		return "admin/deptAdminView";
	}
	
	@RequestMapping("notice.ad")
	public String noticeView() {
		return "admin/noticeAdminView";
	}
	
	@RequestMapping("address.ad")
	public String addressView() {
		return "admin/addressAdminView";
	}
	
	@RequestMapping("calendar.ad")
	public String calendarView() {
		return "admin/calendarAdminView";
	}
	
	@RequestMapping("survey.ad")
	public String surveyView() {
		return "admin/surveyAdminView";
	}
	
	@RequestMapping("meetingRoom.ad")
	public String meetingRoomView() {
		return "admin/meetingRoomAdminView";
	}
	
	
}

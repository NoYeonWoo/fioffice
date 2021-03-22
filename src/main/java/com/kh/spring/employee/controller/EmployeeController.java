package com.kh.spring.employee.controller;


import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.support.SessionStatus;

import com.google.gson.GsonBuilder;
import com.kh.spring.admin.model.service.AdminService;
import com.kh.spring.admin.model.vo.Department;
import com.kh.spring.admin.model.vo.Job;

import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.kh.spring.employee.model.service.EmployeeService;
import com.kh.spring.employee.model.vo.Employee;




@Controller
public class EmployeeController {
	@Autowired 
	private EmployeeService employeeService;
	
	@Autowired
	private AdminService adminService;
	
	@RequestMapping("manageEmp.do")
	public String manageEmployee(Model model) {
		ArrayList<Employee> eList = employeeService.selectEmpList();
		model.addAttribute("eList",eList);
		return "employee/manageEmployee";
	}
	@ResponseBody
	@RequestMapping(value="selectEmpList.do", produces="appliction/json; charset=UTF-8")
	public Object selectEmpList() {
		  Map<String, Object> result = new HashMap<String, Object>();
		  result.put("data", employeeService.selectEmpList());
		  
		  System.out.println("거쳐감");
		  return new GsonBuilder().create().toJson(result);


		//model.addAttribute("eList",eList);
		//return new GsonBuilder().create().toJson(eList);
	}
	@RequestMapping("selectEmployee")
	@ResponseBody
	public Object selectEmployee(String empNo) {
		Employee emp = employeeService.selectEmployee(empNo);
		System.out.println(emp.getJoinDate());
		return emp;
	}
	
	@RequestMapping("insertEmp.do")
	public String insertEmployee(Model model) {
		ArrayList<Department> dList = adminService.selectDeptList();
		ArrayList<Job> jList = employeeService.selectJobList();
		model.addAttribute("dList",dList);
		model.addAttribute("jList",jList);
		return "employee/newEmployee";
	}

	@RequestMapping("updateEmp.do")
	public String updateEmployee() {
		return "employee/updateEmployee";
	}
	
	@RequestMapping("mypage.do")
	public String mypage() {
		return "employee/mypage";
	}

	@RequestMapping("login.do")
	public String loginPage() {
		return "common/login";
	}
	
	/**
	 @RequestMapping(value="login.me",method=RequestMethod.POST)
		public ModelAndView loginEmployee(Employee emp, HttpSession session, ModelAndView mv) {
		 Employee loginUser;
		
	     try {
			loginUser=employeeService.loginEmployee(emp); 
			System.out.println("loginUser::"+loginUser);
			if(loginUser==null) {
				throw new Exception();
			}
			session.setAttribute("loginUser", loginUser);
			mv.setViewName("redirect:/");
	     }	catch (Exception e) {

				e.printStackTrace();
				mv.addObject("msg","로그인실패!");
				
			}
	     return mv;
	 }**/
	 @RequestMapping(value="login.me",method=RequestMethod.POST)
   public String loginMember( Employee emp,Model model,HttpSession session) throws Exception {
		 System.out.println("@ModelAttribute(\"userId\") : "+emp.getEmpNo());
	     System.out.println("@ModelAttribute(\"userPwd\") : "+emp.getEmpPwd());
	  

	     Employee loginUser;
	      loginUser=employeeService.loginEmployee(emp);
	     System.out.println("loginUser:::::"+loginUser);
	     System.out.println("emp:::::"+emp);
		 if(loginUser !=null) {
			 model.addAttribute("loginUser", loginUser);
			 session.setAttribute("loginUser", loginUser);
			 return "common/main"; //redirect:home.do or home.jsp / 
		 }
		return null;
		 
	 }
	 
	 
	 @RequestMapping("update.me")
	 public String updateMypage( Employee emp,HttpServletRequest request, @RequestParam("post")String post,
			                                              @RequestParam("address1")String address1,                                    
	                                                      @RequestParam("address2")String address2 ,Model model,
	                                                      @RequestParam(name="file1",required = false)MultipartFile file) {  
			System.out.println("file::" + file);
			System.out.println("emp::" + emp);
		
			if(!file.getOriginalFilename().equals("")) {
				
				if(emp.getChangeName() !=null) {
					deleteFile(emp.getChangeName(),request);
				}
		
			        String changeName = saveFile(file, request);
					emp.setOriginName(file.getOriginalFilename());
					emp.setChangeName(changeName);
			}
		
			
			
     emp.setAddress(post+"/"+address1+"/"+address2);
     int result =employeeService.updateMypage(emp);
     if(result>0) {
    	 
    	 model.addAttribute("loginUser",emp);
    	 return "employee/mypage";
    	 
     }else {
    
     }
     return "employee/login.me";
    
	 }	

	 
	 
	 
	 
	 
	 
		private void deleteFile(String fileName, HttpServletRequest request) {
			String resources = request.getSession().getServletContext().getRealPath("resources");
			String savePath = resources + "\\upload_files\\";		
			
			File deleteFile=new File(savePath+fileName);
			deleteFile.delete();
			
		
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

		@RequestMapping("logout.me")
	    public String logout(SessionStatus status) {
			status.setComplete();
		 
			 return "common/login";
		 
	 }
		@RequestMapping("insertNewEmp.do")
	    public String insertNewEmp(SessionStatus status) {
			status.setComplete();
		 
			 return "common/login";
		 
	 }
}
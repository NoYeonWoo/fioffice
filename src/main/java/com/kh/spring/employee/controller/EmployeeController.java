package com.kh.spring.employee.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;


import com.kh.spring.employee.model.service.EmployeeService;
import com.kh.spring.employee.model.vo.Employee;




@Controller
public class EmployeeController {
	@Autowired 
	private EmployeeService employeeService;

	@RequestMapping("manageEmp.do")
	public String manageEmployee() {
		return "employee/manageEmployee";
	}

	@RequestMapping("insertEmp.do")
	public String insertEmployee() {
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
	 public String updateMypage(@ModelAttribute Employee emp, @RequestParam("post")String post,
			                                              @RequestParam("address1")String address1,                                    
	                                                      @RequestParam("address2")String address2 ,Model model){
     emp.setAddress(post+"/"+address1+"/"+address2);
     int result =employeeService.updateMypage(emp);
     if(result>0) {
    	 
    	 model.addAttribute("loginUser",emp);
    	 return "member/myPage";
     }else {
    	
     }
	return null;
	 }	

	 
		@RequestMapping("logout.me")
	    public String logout(SessionStatus status) {
			status.setComplete();
		 
			 return "common/login";
		 
	 }

}
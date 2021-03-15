package com.kh.spring.employee.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class EmployeeController {

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

}
package com.kh.spring.email.model.service;

import java.util.ArrayList;

import com.kh.spring.address.model.vo.PageInfo;
import com.kh.spring.email.model.vo.Email;
import com.kh.spring.employee.model.vo.Employee;

public interface EmailService {
	
	int selectListCount();
	ArrayList<Email> selectListCount(PageInfo pi,Employee emp);
	

	
}

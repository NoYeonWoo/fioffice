package com.kh.spring.common.interceptor;

import java.net.InetAddress;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.kh.spring.employee.model.vo.Employee;



public class Logininterceptor extends HandlerInterceptorAdapter{
	private Logger log = LoggerFactory.getLogger(Logininterceptor.class); //로그 선언 

	
@Override
public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
		ModelAndView modelAndView) throws Exception {
	HttpSession session =request.getSession();
	
	Employee loginUser=(Employee) session.getAttribute("loginUser");
	
	if(loginUser !=null) {
		
		InetAddress local=InetAddress.getLocalHost();
		log.info(loginUser.getEmpNo()+"  "+local.getHostAddress());
	}
}	
	
}

package com.kh.spring.todo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class todoCotroller {

	@RequestMapping("todoListView.do")
	public String authorityView() {
		return "todo/todoView ";
	}
	
}

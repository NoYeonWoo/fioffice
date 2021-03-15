package com.kh.spring.todo.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;



import com.kh.spring.todo.model.vo.Todo;


@Controller
public class TodoCotroller {
	


	@RequestMapping("todoListView.do")
	public String listTodo() {
		return "todo/todoView";
	}
	

		
		

}

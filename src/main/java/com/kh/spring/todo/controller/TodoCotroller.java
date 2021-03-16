package com.kh.spring.todo.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


import com.kh.spring.todo.model.service.TodoService;

import com.kh.spring.todo.model.vo.Todo;


@Controller
public class TodoCotroller {
	
	@Autowired
	private TodoService todoService;

	@RequestMapping("todoListView.do")
	public String listTodo(Model model) {
		
		ArrayList<Todo> todolist=todoService.selectTodo();
		model.addAttribute("todolist",todolist);
		System.out.println(todolist);
		
		return "todo/todoView";
	}
	
	
	@RequestMapping("insertTodo.do")
	public String insertTodo(Todo t, HttpServletRequest request, Model model) {
		System.out.println(t);
		
		int result = todoService.insertTodo(t);

		if (result > 0) {

			return "todo/todoView";
		} else {
			
		}

		return "todo/todoView";
	}
	
}

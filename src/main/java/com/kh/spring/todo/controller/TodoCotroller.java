package com.kh.spring.todo.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kh.spring.employee.model.service.EmployeeService;
import com.kh.spring.employee.model.vo.Employee;
import com.kh.spring.todo.model.service.TodoService;
import com.kh.spring.todo.model.vo.Todo;


@Controller
public class TodoCotroller {
	
	@Autowired
	private TodoService todoService;
	@Autowired 
	private EmployeeService employeeService;

	@RequestMapping("todoListView.do")
	public String listTodo(Model m,HttpSession session) throws Exception {
		
	

		ArrayList<Todo> todolist=todoService.selectTodo();
		m.addAttribute("todolist",todolist);
		
		System.out.println(todolist);
		return "todo/todoView";
	}
	
	
	@RequestMapping("insertTodo.do")
	public String insertTodo(Todo t, HttpServletRequest request, Model model) {
		System.out.println("inserttodo:::"+ t);
		
		int result = todoService.insertTodo(t);
    
	

			return "redirect:todoListView.do";
	

}
	@RequestMapping("updateTodo.do")
	public String modifyTodo(Model model,HttpServletRequest request) {
		
        
		return "redirect:todoListView.do";
	}
}

package com.kh.spring.todo.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.kh.spring.employee.model.vo.Employee;
import com.kh.spring.todo.model.service.TodoService;
import com.kh.spring.todo.model.vo.Todo;

@Controller
public class TodoCotroller {

	@Autowired
	private TodoService todoService;


	@RequestMapping("todoListView.do")
	public String listTodo(String empNo,Model m, HttpSession session) throws Exception {
		Employee emp= (Employee) session.getAttribute("loginUser");
		 empNo=emp.getEmpNo();
		 
		 System.out.println("접속자:"+empNo);
			
		ArrayList<Todo> todolist = todoService.selectTodo(empNo);
		
		
		m.addAttribute("todolist", todolist);
		
		System.out.println("todolist"+todolist);
		return "todo/todoView";
	}
	
   
	@RequestMapping(value="todoMainListView.do",produces ="application/json;charset=UTF-8")
	public void MainlistTodo(String empNo,Model m, HttpSession session,HttpServletRequest request, HttpServletResponse response ) throws Exception {
		Employee emp= (Employee) session.getAttribute("loginUser");
		 empNo=emp.getEmpNo();
		ArrayList<Todo> todolist =todoService.selectMainTodo(empNo);
		
		System.out.println("todolist main::"+todolist);
		response.setContentType("application/json;charset=utf-8");
		new Gson().toJson(todolist,response.getWriter());//
		
	}
	


	@RequestMapping("insertTodo.do")
	public String insertTodo(Todo t, HttpServletRequest request, Model model) {
		System.out.println("inserttodo:::" + t);

		int result = todoService.insertTodo(t);

		return "redirect:todoListView.do";

	}

	@RequestMapping("doingTodo.do")
	public String modifyTodo(int tno, Model m, HttpServletRequest request) {
		int result = todoService.updateDoing(tno);

		return "redirect:todoListView.do";
	}

	@RequestMapping("doneTodo.do")
	public String modifyTodo2(int tno, Model m, HttpServletRequest request) {
		int result = todoService.updateDone(tno);

		return "redirect:todoListView.do";
	}

	@RequestMapping("deleteTodo.do")
	public String deleteTodo(int tno, Model model, HttpServletRequest request) {
		int result = todoService.deleteTodo(tno);

		return "redirect:todoListView.do";
	}
}

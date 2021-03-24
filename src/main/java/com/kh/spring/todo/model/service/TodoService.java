package com.kh.spring.todo.model.service;

import java.util.ArrayList;

import com.kh.spring.employee.model.vo.Employee;
import com.kh.spring.todo.model.vo.Todo;

public interface TodoService {

	 int insertTodo(Todo t);

	 ArrayList<Todo> selectTodo(String empNo);


	int updateDoing(int tno);

	int updateDone(int tno);

	int deleteTodo(int tno);

	ArrayList<Todo> selectMainTodo(String empNo);

}
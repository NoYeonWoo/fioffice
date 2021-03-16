package com.kh.spring.todo.model.service;

import java.util.ArrayList;

import com.kh.spring.todo.model.vo.Todo;

public interface TodoService {

	 int insertTodo(Todo t);

	 ArrayList<Todo> selectTodo();

}
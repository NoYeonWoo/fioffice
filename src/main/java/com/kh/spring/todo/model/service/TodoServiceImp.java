package com.kh.spring.todo.model.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.spring.todo.model.dao.TodoDao;
import com.kh.spring.todo.model.vo.Todo;



@Service("TodoService")
public class TodoServiceImp implements TodoService {

	
	   @Autowired	
	   private SqlSessionTemplate sqlSession;
	   
	    @Autowired
	   private TodoDao todoDao;

		@Override
		public int insertTodo(Todo t) {
			// TODO Auto-generated method stub
			return todoDao.insertTodo(sqlSession,t);
		}
}

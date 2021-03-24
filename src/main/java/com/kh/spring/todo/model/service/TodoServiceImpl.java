package com.kh.spring.todo.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.spring.employee.model.vo.Employee;
import com.kh.spring.todo.model.dao.TodoDao;
import com.kh.spring.todo.model.vo.Todo;



@Service("TodoService")
public class TodoServiceImpl implements TodoService {

	
	   @Autowired	
	   private SqlSessionTemplate sqlSession;
	   
	    @Autowired
	   private TodoDao todoDao;

		@Override
		public int insertTodo(Todo t) {
			// TODO Auto-generated method stub
			return todoDao.insertTodo(sqlSession,t);
		}


		@Override
		public ArrayList<Todo> selectTodo(String empNo) {
			// TODO Auto-generated method stub
			return todoDao.selectTodo(sqlSession,empNo);
		}



	

		@Override
		public int updateDoing(int tno) {
			// TODO Auto-generated method stub
			return todoDao.updateDoing(sqlSession,tno);
		}



		@Override
		public int updateDone(int tno) {
			// TODO Auto-generated method stub
			return todoDao.updateDone(sqlSession,tno);
		}
		

	


		@Override
		public int deleteTodo(int tno) {
			// TODO Auto-generated method stub
			return todoDao.deleteTodo(sqlSession,tno);
		}



		@Override
		public ArrayList<Todo> selectMainTodo(String empNo) {
			// TODO Auto-generated method stub
			return todoDao.selectMainTodo(sqlSession,empNo);
		}

}

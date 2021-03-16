package com.kh.spring.todo.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.spring.todo.model.vo.Todo;


@Repository("todoDao")
public class TodoDao {

	public int insertTodo(SqlSessionTemplate sqlSession, Todo t) {
		// TODO Auto-generated method stub
		return sqlSession.insert("todoMapper.insertTodo",t);
	}

	public ArrayList<Todo> selectTodo(SqlSessionTemplate sqlSession) {
		// TODO Auto-generated method stub
		return (ArrayList)sqlSession.selectList("todoMapper.selectTodo");
	}

}

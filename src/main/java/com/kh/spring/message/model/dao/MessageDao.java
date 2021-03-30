package com.kh.spring.message.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.spring.employee.model.vo.Employee;


@Repository("messageDao")
public class MessageDao {
	
	public ArrayList<Employee> msgEmpList(SqlSessionTemplate sqlSession, Employee empNo) {
		// TODO Auto-generated method stub
		return (ArrayList)sqlSession.selectList("employeeMapper.msgEmpList", empNo);
		
	}

}

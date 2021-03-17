package com.kh.spring.employee.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.spring.employee.model.vo.Employee;

@Repository("employeeDao")
public class EmployeeDao {

	public Employee loginUser(SqlSessionTemplate sqlSession, Employee emp) {
		// TODO Auto-generated method stub
		System.out.println("DAo loginUser "+emp);
		return sqlSession.selectOne("employeeMapper.loginEmployee",emp);
	}

	public int updateMypage(SqlSessionTemplate sqlSession, Employee emp) {
		// TODO Auto-generated method stub
		return sqlSession.update("employeeMapper.updateMypage",emp);
	}

}

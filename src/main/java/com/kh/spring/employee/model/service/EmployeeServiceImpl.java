package com.kh.spring.employee.model.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.kh.spring.employee.model.dao.EmployeeDao;
import com.kh.spring.employee.model.vo.Employee;

@Service("employeeService")
public class EmployeeServiceImpl implements EmployeeService {

	
    @Autowired
    private SqlSessionTemplate sqlSession;
    @Autowired
    private EmployeeDao employeeDao;

	
	
	@Override
	public Employee loginEmployee(Employee emp) throws Exception {
		Employee loginUser=employeeDao.loginUser(sqlSession,emp);
	    System.out.println("service:: "+emp);
	 		return loginUser;
	}


	 @Transactional
	@Override
	public int updateMypage(Employee emp) {
		int result =employeeDao.updateMypage(sqlSession, emp);
		return employeeDao.updateMypage(sqlSession,emp);
	}

}

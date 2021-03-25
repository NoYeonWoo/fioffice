package com.kh.spring.employee.model.service;

import java.util.ArrayList;
import java.util.Date;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.kh.spring.admin.model.vo.Department;
import com.kh.spring.admin.model.vo.Job;
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

	@Override
	public ArrayList<Job> selectJobList() {
		// TODO Auto-generated method stub
		return employeeDao.selectJobList(sqlSession);
	}


	@Override
	public ArrayList<Employee> selectEmpList() {
		// TODO Auto-generated method stub
		return employeeDao.selectEmpList(sqlSession);
	}


	@Override
	public Employee selectEmployee(String empNo) {
		// TODO Auto-generated method stub
		return employeeDao.selectEmployee(sqlSession, empNo);
	}

  
	@Override
	public int updateEmployee(Employee emp) {
		// TODO Auto-generated method stub
		return employeeDao.updateEmployee(sqlSession, emp);
	}


	@Override
	public int updateEntDate(Employee emp) {
		// TODO Auto-generated method stub
		return employeeDao.updateEntDate(sqlSession, emp);
	}


}

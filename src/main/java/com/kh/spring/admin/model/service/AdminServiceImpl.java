package com.kh.spring.admin.model.service;

import java.awt.List;
import java.util.ArrayList;
import java.util.HashMap;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.spring.admin.model.dao.AdminDao;
import com.kh.spring.admin.model.vo.Authority;
import com.kh.spring.admin.model.vo.Department;
import com.kh.spring.employee.model.vo.Employee;

@Service("adminService")
public class AdminServiceImpl implements AdminService {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Autowired
	private AdminDao adminDao;
	@Override
	public ArrayList<Department> selectDeptList() {
		// TODO Auto-generated method stub
		return adminDao.selectDeptList(sqlSession);
	}
	@Override
	public ArrayList<Employee> selectEmployeeList() {
		// TODO Auto-generated method stub
		return adminDao.selectEmployeeList(sqlSession);
	}
	@Override
	public int selectAuthority(String authNo) {
		// TODO Auto-generated method stub
		return adminDao.selectAuthority(sqlSession,authNo);
	}
	@Override
	public int insertAuthority(Authority auth) {
		// TODO Auto-generated method stub
		return adminDao.insertAuthority(sqlSession,auth);
	}
	@Override
	public ArrayList<Authority> selectAuthList() {
		// TODO Auto-generated method stub
		return adminDao.selectAuthList(sqlSession);
	}
	@Override
	public ArrayList selectAdminList() {
		// TODO Auto-generated method stub
		return adminDao.selectAdminList(sqlSession);
	}
	@Override
	public int deleteAuthority(String authNo) {
		// TODO Auto-generated method stub
		return adminDao.deleteAuthority(sqlSession,authNo);
	}
	

}
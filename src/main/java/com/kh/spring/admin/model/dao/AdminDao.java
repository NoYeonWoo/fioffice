package com.kh.spring.admin.model.dao;

import java.awt.List;
import java.util.ArrayList;
import java.util.HashMap;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.spring.admin.model.vo.Authority;
import com.kh.spring.admin.model.vo.Department;
import com.kh.spring.employee.model.vo.Employee;

@Repository("adminDao")
public class AdminDao {

	public ArrayList<Department> selectDeptList(SqlSessionTemplate sqlSession) {
		// TODO Auto-generated method stub
		return (ArrayList)sqlSession.selectList("adminMapper.selectDeptList");
	}

	public ArrayList<Employee> selectEmployeeList(SqlSessionTemplate sqlSession) {
		// TODO Auto-generated method stub
		return (ArrayList)sqlSession.selectList("adminMapper.selectEmployeeList");
	}

	public int selectAuthority(SqlSessionTemplate sqlSession, String authNo) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("adminMapper.selectAuthority",authNo);
	}
	
	public int insertAuthority(SqlSessionTemplate sqlSession, Authority auth) {
		// TODO Auto-generated method stub
		return sqlSession.insert("adminMapper.insertAuthority",auth);
	}

	public ArrayList<Authority> selectAuthList(SqlSessionTemplate sqlSession) {
		// TODO Auto-generated method stub
		return (ArrayList)sqlSession.selectList("adminMapper.selectAuthList");
	}

	public ArrayList selectAdminList(SqlSessionTemplate sqlSession) {
		// TODO Auto-generated method stub
		return (ArrayList)sqlSession.selectList("adminMapper.selectAdminList");
	}

	public int deleteAuthority(SqlSessionTemplate sqlSession, String authNo) {
		// TODO Auto-generated method stub
		return sqlSession.delete("adminMapper.deleteAuthority",authNo);
	}

	

}

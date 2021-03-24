package com.kh.spring.admin.model.service;

import java.awt.List;
import java.util.ArrayList;
import java.util.HashMap;

import com.kh.spring.admin.model.vo.AdminMenu;
import com.kh.spring.admin.model.vo.Authority;
import com.kh.spring.admin.model.vo.Department;
import com.kh.spring.employee.model.vo.Employee;

public interface AdminService {

	ArrayList<Department> selectDeptList();

	ArrayList<Employee> selectEmployeeList();
	
	int selectAuthority(String authNo);

	int insertAuthority(Authority auth);

	ArrayList<Authority> selectAuthList();

	ArrayList<AdminMenu> selectAdminList();

	int deleteAuthority(String authNo);

	ArrayList<Department> deptMainList();

	ArrayList<Department> deptSubList(String deptCode);

	int insertDept(Department dept);

	ArrayList<Employee> deptEmpList(String deptCode);

	

}

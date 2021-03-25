package com.kh.spring.employee.model.service;

import java.util.ArrayList;
import java.util.Date;

import com.kh.spring.admin.model.vo.Department;
import com.kh.spring.admin.model.vo.Job;
import com.kh.spring.employee.model.vo.Employee;

public interface EmployeeService {

	Employee loginEmployee(Employee emp) throws Exception;

	int updateMypage(Employee emp);

	ArrayList<Job> selectJobList();

	ArrayList<Employee> selectEmpList();

	Employee selectEmployee(String empNo);

	int updateEmployee(Employee emp);

	int updateEntDate(Employee emp);

		
}

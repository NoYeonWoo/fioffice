package com.kh.spring.employee.model.service;

import com.kh.spring.employee.model.vo.Employee;

public interface EmployeeService {

	  Employee loginEmployee(Employee emp) throws Exception;

	  int updateMypage(Employee emp);

		
}

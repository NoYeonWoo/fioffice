package com.kh.spring.address.model.service;

import java.util.ArrayList;

import com.kh.spring.address.model.vo.Address;
import com.kh.spring.address.model.vo.PageInfo;
import com.kh.spring.employee.model.vo.Employee;

public interface  AddressService {
	//String empNo
	int selectListCount(String eno);
	int selectListCount2();
	ArrayList<Address> selectListCount(PageInfo pi);
	ArrayList<Employee> selectListCount2(PageInfo pi);
	
	
	int insertAddress(Address a);
	Address selectAddress(int ano);

	int deleteAddress(int ano);

	int updateAddress(Address a);
	//String selectAddressNum(String eno);
	//Address selectAddress(String eno);
	ArrayList<Address> selectList(PageInfo pi, String eno);



}

package com.kh.spring.address.model.service;

import java.util.ArrayList;

import com.kh.spring.address.model.vo.Address;
import com.kh.spring.address.model.vo.PageInfo;

public interface  AddressService {

	int selectListCount();

	ArrayList<Address> selectListCount(PageInfo pi);

	
	
	int insertAddress(Address a);
	Address selectAddress(int ano);

	int deleteAddress(int ano);



	int updateAddress(int ano);

}

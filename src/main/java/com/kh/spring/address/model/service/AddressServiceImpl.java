package com.kh.spring.address.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.spring.address.model.dao.AddressDao;
import com.kh.spring.address.model.vo.Address;
import com.kh.spring.address.model.vo.PageInfo;

@Service("addressService")
public class AddressServiceImpl implements AddressService {

	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Autowired
	private AddressDao addressDao;
	
	@Override
	public int selectListCount() {
		// TODO Auto-generated method stub
		return addressDao.selectListCount(sqlSession);
	}

	@Override
	public ArrayList<Address> selectListCount(PageInfo pi) {
		// TODO Auto-generated method stub
		return addressDao.selectListCount(sqlSession,pi);
	}

	@Override
	public int insertAddress(Address a) {
		// TODO Auto-generated method stub
		int result= addressDao.insertAddress(sqlSession, a);
		return result;
	}

	@Override
	public Address selectAddress(int ano) {
		// TODO Auto-generated method stub
		return addressDao.selectAddress(sqlSession,ano);
	}

	@Override
	public int deleteAddress(int ano) {
		// TODO Auto-generated method stub
		System.out.println("delete.add ser ano:: "+ano);
		return addressDao.deleteAddress(sqlSession,ano);
	}

	@Override
	public int updateAddress(int ano) {
		// TODO Auto-generated method stub
		return addressDao.updateAddress(sqlSession,ano);
	}






	
	
}

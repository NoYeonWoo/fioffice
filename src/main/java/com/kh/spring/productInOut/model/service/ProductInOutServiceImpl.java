package com.kh.spring.productInOut.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.spring.productInOut.model.dao.ProductInOutDao;
import com.kh.spring.productInOut.model.vo.Client;

@Service("proInoutService")
public class ProductInOutServiceImpl implements ProductInOutService {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Autowired
	private ProductInOutDao proInoutDao;
	@Override
	public ArrayList<Client> selectClientList() {
		// TODO Auto-generated method stub
		return proInoutDao.selectClientList(sqlSession);
	}
	@Override
	public int insertClient(Client client) {
		// TODO Auto-generated method stub
		return proInoutDao.insertClient(sqlSession,client);
	}
	@Override
	public Client selectClient(String cliNo) {
		// TODO Auto-generated method stub
		return proInoutDao.selectClient(sqlSession,cliNo);
	}
	@Override
	public int updateClient(Client client) {
		// TODO Auto-generated method stub
		return proInoutDao.updateClient(sqlSession,client);
	}
	@Override
	public int deleteClient(String cliNo) {
		// TODO Auto-generated method stub
		return proInoutDao.deleteClient(sqlSession,cliNo);
	}

}

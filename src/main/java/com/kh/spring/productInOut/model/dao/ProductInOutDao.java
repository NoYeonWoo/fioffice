package com.kh.spring.productInOut.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.spring.productInOut.model.vo.Client;

@Repository("proInoutDao")
public class ProductInOutDao {

	public ArrayList<Client> selectClientList(SqlSessionTemplate sqlSession) {
		// TODO Auto-generated method stub
		return (ArrayList)sqlSession.selectList("proInoutMapper.selectClientList");
	}

	public int insertClient(SqlSessionTemplate sqlSession, Client client) {
		// TODO Auto-generated method stub
		return sqlSession.insert("proInoutMapper.insertClient",client);
	}

	public Client selectClient(SqlSessionTemplate sqlSession, String cliNo) {
		// TODO Auto-generated method stub
		return  sqlSession.selectOne("proInoutMapper.selectClient",cliNo);
	}

	public int updateClient(SqlSessionTemplate sqlSession, Client client) {
		// TODO Auto-generated method stub
		return sqlSession.update("proInoutMapper.updateClient",client);
	}

	public int deleteClient(SqlSessionTemplate sqlSession, String cliNo) {
		// TODO Auto-generated method stub
		return sqlSession.update("proInoutMapper.deleteClient",cliNo);
	}

}

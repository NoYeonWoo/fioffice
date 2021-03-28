package com.kh.spring.productInOut.model.dao;

import java.util.ArrayList;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.spring.productInOut.model.vo.Client;
import com.kh.spring.productInOut.model.vo.Product;

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
		return sqlSession.delete("proInoutMapper.deleteClient",cliNo);
	}

	public int selectClientCount(SqlSessionTemplate sqlSession) {
		// TODO Auto-generated method stub
		return  sqlSession.selectOne("proInoutMapper.selectClientCount");
	}

	public ArrayList<Product> selectProductList(SqlSessionTemplate sqlSession, Map<String, Object> map) {
		// TODO Auto-generated method stub
		return (ArrayList)sqlSession.selectList("proInoutMapper.selectProductList", map);
	}

	public int insertProduct(SqlSessionTemplate sqlSession, Product product) {
		// TODO Auto-generated method stub
		return sqlSession.insert("proInoutMapper.insertProduct",product);
	}

	public int selectProductCount(SqlSessionTemplate sqlSession, String cliNo) {
		// TODO Auto-generated method stub
		return  sqlSession.selectOne("proInoutMapper.selectProductCount", cliNo);
	}

	public Product selectProduct(SqlSessionTemplate sqlSession, String proNo) {
		// TODO Auto-generated method stub
		return  sqlSession.selectOne("proInoutMapper.selectProduct",proNo);
	}

	public int updateProduct(SqlSessionTemplate sqlSession, Product product) {
		// TODO Auto-generated method stub
		return  sqlSession.update("proInoutMapper.updateProduct",product);
	}

	public int deleteProduct(SqlSessionTemplate sqlSession, String proNo) {
		// TODO Auto-generated method stub
		return  sqlSession.delete("proInoutMapper.deleteProduct",proNo);
	}

	public int deleteAllProduct(SqlSessionTemplate sqlSession, Map<String, Object> map) {
		// TODO Auto-generated method stub
		return  sqlSession.delete("proInoutMapper.deleteAllProduct",map);
	}

}

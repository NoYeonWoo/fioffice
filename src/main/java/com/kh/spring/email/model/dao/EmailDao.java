package com.kh.spring.email.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;

import com.kh.spring.address.model.vo.PageInfo;
import com.kh.spring.email.model.vo.Email;

public class EmailDao {

	/*
	public int selectListCount(SqlSessionTemplate sqlSession) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("emailMapper.selectListCount");
	}

	public ArrayList<Email> selectListCount(SqlSessionTemplate sqlSession, PageInfo pi) {
		// TODO Auto-generated method stub
		int offset = (pi.getCurrentPage()-1)* pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		
		return (ArrayList)sqlSession.selectList("emailMapper.selectList", null, rowBounds);
	}
	*/

}

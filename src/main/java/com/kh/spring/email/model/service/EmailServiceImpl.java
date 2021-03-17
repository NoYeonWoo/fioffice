package com.kh.spring.email.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import com.kh.spring.address.model.vo.PageInfo;
import com.kh.spring.email.model.dao.EmailDao;
import com.kh.spring.email.model.vo.Email;

public class EmailServiceImpl implements EmailService {

	/*
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Autowired
	private EmailDao emailDao;
	@Override
	public int selectListCount() {
		// TODO Auto-generated method stub
		return emailDao.selectListCount(sqlSession);
	}

	@Override
	public ArrayList<Email> selectListCount(PageInfo pi) {
		// TODO Auto-generated method stub
		return emailDao.selectListCount(sqlSession,pi);
	}
	*/

}

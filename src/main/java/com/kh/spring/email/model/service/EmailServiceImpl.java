package com.kh.spring.email.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.spring.email.model.dao.EmailDao;
import com.kh.spring.address.model.vo.PageInfo;
import com.kh.spring.email.model.vo.Email;
import com.kh.spring.employee.model.vo.Employee;


@Service("emailService")
public class EmailServiceImpl implements EmailService {

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
	public ArrayList<Email> selectListCount(PageInfo pi,Employee emp) {
		// TODO Auto-generated method stub
		return emailDao.selectListCount(sqlSession,pi,emp);
	}
	

}

package com.kh.spring.work.model.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import com.kh.spring.work.model.dao.WorkDao;

public class WorkServiceImpl implements WorkService {

	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Autowired
	private WorkDao workDao;
	
	
	
	
}

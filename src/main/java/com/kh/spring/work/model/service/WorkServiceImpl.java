package com.kh.spring.work.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.spring.address.model.vo.PageInfo;
import com.kh.spring.work.model.dao.WorkDao;
import com.kh.spring.work.model.vo.Work;

@Service("workService")
public class WorkServiceImpl implements WorkService {

	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Autowired
	private WorkDao workDao;

	@Override
	public int selectListCount() {
		// TODO Auto-generated method stub
		return workDao.selectListCount(sqlSession);
	}

	@Override
	public ArrayList<Work> selectListCount(PageInfo pi) {
		// TODO Auto-generated method stub
		return workDao.selectListCount(sqlSession,pi);
	}
	
	
	
	
}

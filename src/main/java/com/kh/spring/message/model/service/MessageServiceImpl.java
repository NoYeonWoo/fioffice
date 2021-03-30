package com.kh.spring.message.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.spring.employee.model.vo.Employee;
import com.kh.spring.message.model.dao.MessageDao;

@Service("messageService")
public class MessageServiceImpl implements MessageService {
	
	
    @Autowired
    private SqlSessionTemplate sqlSession;
    @Autowired
    private MessageDao messageDao;
    
	@Override
	public ArrayList<Employee> msgEmpList(Employee empNo) {
		return messageDao.msgEmpList(sqlSession, empNo);
		
	}	 
	 
}

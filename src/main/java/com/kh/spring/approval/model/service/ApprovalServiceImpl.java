package com.kh.spring.approval.model.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.spring.approval.model.dao.ApprovalDao;
import com.kh.spring.approval.model.vo.Approval;
import com.kh.spring.employee.model.vo.Employee;

@Service("approvalService")
public class ApprovalServiceImpl implements ApprovalService {
  
	   @Autowired	
	   private SqlSessionTemplate sqlSession;
	   
	    @Autowired
	   private ApprovalDao approvalDao;
	   	
	 
	@Override
	public int insertApproval(Approval ap) {
		// TODO Auto-generated method stub
		return approvalDao.insertApproval(sqlSession,ap);
	}


	@Override
	public Employee selectfApprEmp(String deptCode) {
		// TODO Auto-generated method stub
		return approvalDao.selectfApprEmp(sqlSession,deptCode);
	}


	@Override
	public Employee selectlApprEmp() {
		// TODO Auto-generated method stub
		return approvalDao.selectlApprEmp(sqlSession);
	}

}

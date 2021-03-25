package com.kh.spring.approval.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.spring.approval.model.vo.Approval;
import com.kh.spring.employee.model.vo.Employee;


@Repository("approvalDao")
public class ApprovalDao {
    

	public int insertApproval(SqlSessionTemplate sqlSession, Approval ap) {
		// TODO Auto-generated method stub
		return sqlSession.insert("approvalMapper.insertApproval",ap);
	}

	public Employee selectfApprEmp(SqlSessionTemplate sqlSession, String deptCode) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("employeeMapper.selectfApprEmp",deptCode);
	}

	public Employee selectlApprEmp(SqlSessionTemplate sqlSession) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("employeeMapper.selectlApprEmp");
	}

	public ArrayList<Approval> selectyList(SqlSessionTemplate sqlSession, Employee emp) {
		// TODO Auto-generated method stub
		return (ArrayList)sqlSession.selectList("approvalMapper.selectyList",emp);
	}

	public Approval selectdetailapproval(SqlSessionTemplate sqlSession, int ano) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("approvalMapper.selectdetailapproval",ano);
	}

}

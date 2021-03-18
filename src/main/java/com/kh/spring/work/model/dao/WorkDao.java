package com.kh.spring.work.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.spring.address.model.vo.PageInfo;
import com.kh.spring.work.model.vo.Work;

@Repository("workDao")
public class WorkDao {

	public int selectListCount(SqlSessionTemplate sqlSession) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("workMapper.selectListCount");
	}

	public ArrayList<Work> selectListCount(SqlSessionTemplate sqlSession, PageInfo pi) {
		// TODO Auto-generated method stub
		
		int offset = (pi.getCurrentPage()-1)* pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		return (ArrayList)sqlSession.selectList("workMapper.selectList", null, rowBounds); 
	}

}

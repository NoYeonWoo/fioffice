package com.kh.spring.meetingroom.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.spring.meetingroom.model.vo.Meetingroom;

@Repository("meetingroomDao")
public class MeetinroomDao {
	

	public int insertRoom(SqlSessionTemplate sqlSession, Meetingroom room) {
		// TODO Auto-generated method stub
		return 0;
	}

}

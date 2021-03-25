package com.kh.spring.meetingroom.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.spring.meetingroom.model.vo.Meetingroom;

@Repository("meetingroomDao")
public class MeetinroomDao {
	

	public int insertRoom(SqlSessionTemplate sqlSession, Meetingroom room) {
		// TODO Auto-generated method stub
		return sqlSession.insert("meetingMapper.insertRoom", room);
	}

	public ArrayList<Meetingroom> selectRoomList(SqlSessionTemplate sqlSession) {
		// TODO Auto-generated method stub
		return (ArrayList)sqlSession.selectList("meetingMapper.selectRoomList");
	}

}

package com.kh.spring.meetingroom.model.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.spring.meetingroom.model.dao.MeetinroomDao;
import com.kh.spring.meetingroom.model.vo.Meetingroom;

@Service("meetingroomService")
public class MeetingroomServiceImpl implements MeetingroomService {
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Autowired
	private MeetinroomDao meetingDao;
	@Override
	public int insertRoom(Meetingroom room) {
		// TODO Auto-generated method stub
		return meetingDao.insertRoom(sqlSession, room);
	}

}

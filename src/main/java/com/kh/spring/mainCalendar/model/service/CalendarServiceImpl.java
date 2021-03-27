package com.kh.spring.mainCalendar.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.spring.mainCalendar.model.dao.CalendarDao;
import com.kh.spring.mainCalendar.model.vo.Calendar;

@Service("calendarService")
public class CalendarServiceImpl implements CalendarService {
	
	@Autowired	
	   private SqlSessionTemplate sqlSession;
	   
	   @Autowired
	   private CalendarDao calendarDao;

	@Override
	public int insertCalendar(Calendar ca) {
		return calendarDao.insertCalendar(sqlSession,ca);
	}

	@Override
	public ArrayList<Calendar> listCalendar(Calendar ca) {
		return calendarDao.listCalendar(sqlSession, ca);
	}

	 
	 
}

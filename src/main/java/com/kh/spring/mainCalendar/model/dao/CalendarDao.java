package com.kh.spring.mainCalendar.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.spring.mainCalendar.model.vo.Calendar;

@Repository("calendarDao")
public class CalendarDao {

	public int insertCalendar(SqlSessionTemplate sqlSession, Calendar ca) {
		return sqlSession.insert("calendarMapper.insertCalendar", ca);
	}

	public ArrayList<Calendar> listCalendar(SqlSessionTemplate sqlSession, Calendar ca) {
		return (ArrayList)sqlSession.selectList("calendarMapper.selectCList",ca);
	}

	public Calendar selectCalendar(SqlSessionTemplate sqlSession, String calNo) {
		System.out.println(calNo);
		return sqlSession.selectOne("calendarMapper.selectCalendar", calNo);
	}

	public int updateCalendar(SqlSessionTemplate sqlSession, Calendar ca) {
		System.out.println(ca);
		return sqlSession.update("calendarMapper.updateCalendar", ca);
	}

	public int deleteCalendar(SqlSessionTemplate sqlSession, int calNo) {
		System.out.println("삭제" + calNo);
		return sqlSession.update("calendarMapper.deleteCalendar", calNo);
	}

	

}

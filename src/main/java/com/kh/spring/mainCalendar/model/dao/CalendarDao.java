package com.kh.spring.mainCalendar.model.dao;

import java.util.ArrayList;
import java.util.Date;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.spring.employee.model.vo.Employee;
import com.kh.spring.mainCalendar.model.vo.Calendar;

@Repository("calendarDao")
public class CalendarDao {

	public int insertCalendar(SqlSessionTemplate sqlSession, Calendar ca) {
		return sqlSession.insert("calendarMapper.insertCalendar", ca);
	}

	public ArrayList<Calendar> listCalendar(SqlSessionTemplate sqlSession, Calendar ca) {
		return (ArrayList)sqlSession.selectList("calendarMapper.selectCList",ca);
	}

	

}

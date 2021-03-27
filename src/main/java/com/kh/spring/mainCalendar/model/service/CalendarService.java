package com.kh.spring.mainCalendar.model.service;

import java.util.ArrayList;

import com.kh.spring.mainCalendar.model.vo.Calendar;

public interface CalendarService {

	int insertCalendar(Calendar ca);

	ArrayList<Calendar> listCalendar(Calendar ca);

	
}
 
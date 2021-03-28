package com.kh.spring.work.model.service;

import java.util.ArrayList;

import com.kh.spring.address.model.vo.Address;
import com.kh.spring.address.model.vo.PageInfo;
import com.kh.spring.work.model.vo.Work;

public interface WorkService {


	int selectListCount();

	ArrayList<Work> selectListCount(PageInfo pi);

	Work selectWork(String eno);

	int insertWork(Work work);// insert 하기


	Work updateSumWork(String eno);

	int updateWork1(String empNo);
	int updateWork2(String empNo);
	int updateWork3(String empNo);

	Work selectTimes(String empNo);//String empNo Work w


}

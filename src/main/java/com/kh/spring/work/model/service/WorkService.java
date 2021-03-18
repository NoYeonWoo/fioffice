package com.kh.spring.work.model.service;

import java.util.ArrayList;

import com.kh.spring.address.model.vo.Address;
import com.kh.spring.address.model.vo.PageInfo;
import com.kh.spring.work.model.vo.Work;

public interface WorkService {


	int selectListCount();

	ArrayList<Work> selectListCount(PageInfo pi);

}

package com.kh.spring.board.notice.model.service;

import java.util.ArrayList;

import com.kh.spring.board.common.model.vo.PageInfo;
import com.kh.spring.board.common.model.vo.Reply;
import com.kh.spring.board.notice.model.vo.Notice;

public interface NoticeService {
	
	int selectLictCount();

	ArrayList<Notice> selectList(PageInfo pi);

	int updateIncreaseCount(String nno);

	Notice selectBoard(String nno);

	int insertReply(Reply r);

	ArrayList<Reply> selectReplyList(String nno);

	int insertNotice(Notice n);

	int deleteNotice(String nno);

	int updateNotice(Notice n);

	ArrayList<Notice> selectMainNotice();

}
 
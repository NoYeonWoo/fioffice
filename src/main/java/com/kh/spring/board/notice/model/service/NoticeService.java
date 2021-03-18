package com.kh.spring.board.notice.model.service;

import java.util.ArrayList;

import com.kh.spring.board.common.model.vo.PageInfo;
import com.kh.spring.board.common.model.vo.Reply;
import com.kh.spring.board.notice.model.vo.Notice;

public interface NoticeService {
	
	int selectLictCount();

	ArrayList<Notice> selectList(PageInfo pi);

	int updateIncreaseCount(int noticeNo);

	Notice selectBoard(int noticeNo);

	int insertReply(Reply r);

	ArrayList<Reply> selectReplyList(int noticeNo);

	int insertNotice(Notice n);

}
 
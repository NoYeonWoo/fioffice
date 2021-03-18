package com.kh.spring.board.notice.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.spring.board.common.model.vo.PageInfo;
import com.kh.spring.board.common.model.vo.Reply;
import com.kh.spring.board.notice.model.dao.NoticeDao;
import com.kh.spring.board.notice.model.vo.Notice;

@Service("noticeService")
public class NoticeServiceImpl implements NoticeService {

	@Autowired
	private SqlSessionTemplate sqlSession;

	@Autowired
	private NoticeDao noticeDao;

	@Override
	public int selectLictCount() {
		return noticeDao.selectLictCount(sqlSession);
	}

	@Override
	public ArrayList<Notice> selectList(PageInfo pi) {
		return noticeDao.selectList(sqlSession, pi);
	}

	@Override
	public int updateIncreaseCount(int noticeNo) {
		return noticeDao.updateIncreaseCount(sqlSession, noticeNo);
	}

	@Override
	public Notice selectBoard(int noticeNo) {
		return noticeDao.selectBoard(sqlSession, noticeNo);
	}

	@Override
	public int insertReply(Reply r) {
		return noticeDao.insertReply(sqlSession, r);
	}

	@Override
	public ArrayList<Reply> selectReplyList(int noticeNo) {
		return noticeDao.selectReplyList(sqlSession, noticeNo);
	}

	@Override
	public int insertNotice(Notice n) {
		return noticeDao.insertNotice(sqlSession, n);
	}

	 
}

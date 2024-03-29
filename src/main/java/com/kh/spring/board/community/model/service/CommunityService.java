package com.kh.spring.board.community.model.service;

import java.util.ArrayList;

import com.kh.spring.board.common.model.vo.PageInfo;
import com.kh.spring.board.common.model.vo.Reply;
import com.kh.spring.board.community.model.vo.Community;
import com.kh.spring.board.community.model.vo.Likes;
import com.kh.spring.board.notice.model.vo.Notice;

public interface CommunityService {

	int selectLictCount();

	ArrayList<Community> selectList(PageInfo pi);

	int updateIncreaseCount(String cno);

	Community selectBoard(String cno);

	int insertCommunity(Community cb);

	int insertReply(Reply r);

	ArrayList<Reply> selectReplyList(String cno);

	int recommend(String cno);
	
	int deleteCommunity(String cno);

	int updateCommunity(Community cb);

	String selectLikes(Likes likevo);

	int insertLikes(Likes likevo);

}
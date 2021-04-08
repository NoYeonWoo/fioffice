package com.kh.spring.survey.model.dao;

import java.sql.Date;
import java.util.ArrayList;
import java.util.HashMap;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.spring.board.common.model.vo.Reply;
import com.kh.spring.survey.model.vo.Survey;
import com.kh.spring.survey.model.vo.SurveyAnswer;
import com.kh.spring.survey.model.vo.SurveyOption;


@Repository("surveyDao")
public class SurveyDao {

	public ArrayList<Survey> selectSurveyList(SqlSessionTemplate sqlSession, Survey survey) {
		// TODO Auto-generated method stub
		return (ArrayList)sqlSession.selectList("surveyMapper.selectSurveyList",survey);
	}

	public int selectSurveyCount(SqlSessionTemplate sqlSession) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("surveyMapper.selectSurveyCount");
	}

	public int insertSurvey(SqlSessionTemplate sqlSession, Survey sur) {
		// TODO Auto-generated method stub
		return sqlSession.insert("surveyMapper.insertSurvey",sur);
	}

	public int insertOption(SqlSessionTemplate sqlSession, SurveyOption surveyOption) {
		// TODO Auto-generated method stub
		return sqlSession.insert("surveyMapper.insertOption",surveyOption);
	}

	public ArrayList<Survey> selectSurveyAll(SqlSessionTemplate sqlSession, String status) {
		// TODO Auto-generated method stub
		return (ArrayList)sqlSession.selectList("surveyMapper.selectSurveyAll",status);
	}

	public Survey selectSurvey(SqlSessionTemplate sqlSession, String sNo) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("surveyMapper.selectSurvey", sNo);
	}


	public int checksurAnswer(SqlSessionTemplate sqlSession, HashMap<String, Object> map) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("surveyMapper.checksurAnswer", map);
	}

	public int insertAnswer(SqlSessionTemplate sqlSession, SurveyAnswer answer) {
		// TODO Auto-generated method stub
		return sqlSession.insert("surveyMapper.insertAnswer",answer);
	}

	public ArrayList<SurveyAnswer> selectMAnswer(SqlSessionTemplate sqlSession, String sNo) {
		// TODO Auto-generated method stub
		return (ArrayList)sqlSession.selectList("surveyMapper.selectMAnswer",sNo);
	}

	public ArrayList<SurveyAnswer> selectEAnswer(SqlSessionTemplate sqlSession, String sNo) {
		// TODO Auto-generated method stub
		return (ArrayList)sqlSession.selectList("surveyMapper.selectEAnswer",sNo);
	}
	
	public int deleteSurvey(SqlSessionTemplate sqlSession, String sno) {
		// TODO Auto-generated method stub
		return sqlSession.update("surveyMapper.deleteSurvey", sno);
	}

	public int insertReply(SqlSessionTemplate sqlSession, Reply r) {
		// TODO Auto-generated method stub
		return sqlSession.insert("surveyMapper.insertReply", r);
	}

	public ArrayList<Reply> selectReplyList(SqlSessionTemplate sqlSession, String sNo) {
		// TODO Auto-generated method stub
		return (ArrayList)sqlSession.selectList("surveyMapper.selectReplyList", sNo);
	}

	public int deleteAnswer(SqlSessionTemplate sqlSession, SurveyAnswer answer) {
		// TODO Auto-generated method stub
		return sqlSession.delete("surveyMapper.deleteAnswer", answer);
	}

	public void checkSurvey(SqlSessionTemplate sqlSession, Date time) {
		// TODO Auto-generated method stub
		sqlSession.delete("surveyMapper.checkSurvey", time);
		
	}

	

	

	
	
}

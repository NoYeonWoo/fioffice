package com.kh.spring.survey.model.service;

import java.sql.Date;
import java.util.ArrayList;
import java.util.HashMap;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.spring.board.common.model.vo.Reply;
import com.kh.spring.survey.model.dao.SurveyDao;
import com.kh.spring.survey.model.vo.Survey;
import com.kh.spring.survey.model.vo.SurveyAnswer;
import com.kh.spring.survey.model.vo.SurveyOption;


@Service("surveyService")
public class SurveyServiceImpl implements SurveyService {
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	@Autowired
	private SurveyDao surveyDao;

	@Override
	public ArrayList<Survey> selectSurveyList(Survey survey) {
		// TODO Auto-generated method stub
		return surveyDao.selectSurveyList(sqlSession,survey);
	}
	
	@Override
	public int selectSurveyCount() {
		// TODO Auto-generated method stub
		return surveyDao.selectSurveyCount(sqlSession);
	}

	@Override
	public int insertSurvey(Survey sur, ArrayList<SurveyOption> surOList) {
		// TODO Auto-generated method stub
		int result1 = surveyDao.insertSurvey(sqlSession,sur);
		int result2 = 1;
		if(surOList!=null) {
			for(int i = 0; i < surOList.size(); i++) {
				result2 = surveyDao.insertOption(sqlSession,surOList.get(i));
				if(result2<=0) {
					break;
				}
			}
		}
		if(result1>0&&result2>0) {
			return 1;
		}
		
		return 0;
	}

	@Override
	public ArrayList<Survey> selectSurveyAll(String status) {
		// TODO Auto-generated method stub
		return surveyDao.selectSurveyAll(sqlSession,status);
	}

	@Override
	public Survey selectSurvey(String sNo) {
		// TODO Auto-generated method stub
		return surveyDao.selectSurvey(sqlSession,sNo);
	}


	@Override
	public int checksurAnswer(HashMap<String, Object> map) {
		// TODO Auto-generated method stub
		return surveyDao.checksurAnswer(sqlSession,map);
	}

	@Override
	public int insertAnswer(SurveyAnswer answer, String[] options) {
		// TODO Auto-generated method stub
		int result= 1;
		if(options!=null) {
			for(int i = 0; i < options.length; i++) {
				answer.setSuroNo(options[i]);
				result = surveyDao.insertAnswer(sqlSession, answer);
				if(result<=0) {
					break;
				}
			}
		}else {
			result = surveyDao.insertAnswer(sqlSession, answer);
		}
		if(result > 0) {
			return 1;
		}
		
		return 0;
	}

	@Override
	public ArrayList<SurveyAnswer> selectMAnswer(String sNo) {
		// TODO Auto-generated method stub
		return surveyDao.selectMAnswer(sqlSession,sNo);
	}

	@Override
	public ArrayList<SurveyAnswer> selectEAnswer(String sNo) {
		// TODO Auto-generated method stub
		return surveyDao.selectEAnswer(sqlSession,sNo);
	}
	
	@Override
	public int deleteSurvey(String sNo) {
		// TODO Auto-generated method stub
		return surveyDao.deleteSurvey(sqlSession,sNo);
	}

	@Override
	public int insertReply(Reply r) {
		// TODO Auto-generated method stub
		return surveyDao.insertReply(sqlSession, r);
	}

	@Override
	public ArrayList<Reply> selectReplyList(String sno) {
		// TODO Auto-generated method stub
		return surveyDao.selectReplyList(sqlSession, sno);
	}

	@Override
	public int deleteAnswer(SurveyAnswer answer) {
		// TODO Auto-generated method stub
		return surveyDao.deleteAnswer(sqlSession, answer);
	}

	@Override
	public void checkSurvey(Date time) {
		// TODO Auto-generated method stub
		surveyDao.checkSurvey(sqlSession, time);
	}

	

	


	
	 
}

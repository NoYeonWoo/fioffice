package com.kh.spring.survey.model.service;

import java.sql.Date;
import java.util.ArrayList;
import java.util.HashMap;

import com.kh.spring.board.common.model.vo.Reply;
import com.kh.spring.survey.model.vo.Survey;
import com.kh.spring.survey.model.vo.SurveyAnswer;
import com.kh.spring.survey.model.vo.SurveyOption;

public interface SurveyService {
	
	ArrayList<Survey> selectSurveyList(Survey survey);
	
	int selectSurveyCount();

	int insertSurvey(Survey sur, ArrayList<SurveyOption> surOList);

	ArrayList<Survey> selectSurveyAll(String status);

	Survey selectSurvey(String sNo);

	int checksurAnswer(HashMap<String, Object> map);

	int insertAnswer(SurveyAnswer answer, String[] options);

	ArrayList<SurveyAnswer> selectMAnswer(String sNo);

	int deleteSurvey(String sNo);

	ArrayList<SurveyAnswer> selectEAnswer(String sNo);

	int insertReply(Reply r);

	ArrayList<Reply> selectReplyList(String sno);

	int deleteAnswer(SurveyAnswer answer);

	void checkSurvey(Date time);

}
 
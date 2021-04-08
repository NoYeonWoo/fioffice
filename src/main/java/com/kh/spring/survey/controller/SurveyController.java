package com.kh.spring.survey.controller;

import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.google.gson.GsonBuilder;
import com.kh.spring.board.common.model.vo.Reply;
import com.kh.spring.employee.model.vo.Employee;
import com.kh.spring.survey.model.service.SurveyService;
import com.kh.spring.survey.model.vo.Survey;
import com.kh.spring.survey.model.vo.SurveyAnswer;
import com.kh.spring.survey.model.vo.SurveyOption;


@Controller
@SessionAttributes("msg")
public class SurveyController {
	
	@Autowired
	private SurveyService surveyService;
	
	//설문 리스트
	@RequestMapping("slist.so")
	public String surveyList() {
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
		String today=sdf.format(new java.util.Date());
		Date time = Date.valueOf(today);
		surveyService.checkSurvey(time);
		return "survey/surveyListView";
		  
	}
	
	//설문 관리 리스트
	@RequestMapping("survey.ad")
	public String surveyView() {
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
		String today=sdf.format(new java.util.Date());
		Date time = Date.valueOf(today);
		surveyService.checkSurvey(time);
		return "admin/surveyAdminView";
	}
	
	//설문 추가 폼
	@RequestMapping("sinsertForm.so")
	public String surveyInsertForm(String deptCode,Model model) {
		model.addAttribute("deptCode",deptCode);
		return "survey/surveyInsertForm";
		  
	}
	
	//설문 추가하기
	@RequestMapping("sinsert.so")
	public String insertSurvey(Survey sur,String[] qOption, Model model) {
		int No = surveyService.selectSurveyCount();
		sur.setSurNo('S'+String.format("%03d", No+1));
		sur.setSurDate(new Date(System.currentTimeMillis()));
		if(sur.getDeptCode().equals(""))sur.setDeptCode(null);
		ArrayList<SurveyOption> surOList = null;
		if(sur.getSurqStatus().equals("M")) {
			surOList = new ArrayList<SurveyOption>();
			for(int i = 0; i < qOption.length; i++) {
				surOList.add(new SurveyOption(sur.getSurNo()+String.format("%02d", i+1),sur.getSurNo(),qOption[i]));
			}
		}
		int result = surveyService.insertSurvey(sur, surOList);
		
		if(result > 0) {
			model.addAttribute("msg","설문추가를 성공하였습니다.");
			if(sur.getDeptCode()!=null) {
				return "redirect:slist.so";
			}else {
				return "redirect:survey.ad";
			}
			
		}else {
			model.addAttribute("msg","설문추가를 실패하였습니다.");
			return "redirect:slist.so";
		}  
	}
	
	//설문 종료시키기
	@RequestMapping("sdelete.so")
	public String deleteSurvey(String sNo,String empNo, Model model) {
		int result = surveyService.deleteSurvey(sNo);
		if(result > 0) {
			model.addAttribute("sNo",sNo);
			model.addAttribute("msg","설문이 종료되었습니다.");
		}else {
			model.addAttribute("msg","설문이 종료되지 않았습니다.");
		}
		if(empNo!=null) { 
			model.addAttribute("empNo",empNo);
			return "redirect:detailSurvey";
		}else{
			return "redirect:detailAdminSurvey";
		}
	}
	
	//설문 자기부서 +전체리스트
	@RequestMapping(value="selectSurveyList", produces="application/json; charset=UTF-8")
	@ResponseBody
	public String selectSurveyList(String deptCode, String status) {
		HashMap<String, Object> result = new HashMap<String, Object>();
		Survey survey = new Survey();
		survey.setDeptCode(deptCode);
		survey.setStatus(status);
		result.put("data", surveyService.selectSurveyList(survey));
		return new GsonBuilder().setDateFormat("yyyy년 MM월 dd일").create().toJson(result);
	}
	
	//설문 전체 리스트
	@RequestMapping(value="selectSurveyAll", produces="application/json; charset=UTF-8")
	@ResponseBody
	public String selectSurveyAll(String status) {
		HashMap<String, Object> result = new HashMap<String, Object>();
		result.put("data", surveyService.selectSurveyAll(status));
		return new GsonBuilder().setDateFormat("yyyy년 MM월 dd일").create().toJson(result);
	}
	
	//설문 상세보기(일반사원)
	@RequestMapping("detailSurvey")
	public String detailSurveyView(String sNo, String empNo,Model model) {
		Survey sur = surveyService.selectSurvey(sNo);
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("sNo", sNo);
		map.put("empNo", empNo);		
		int answer= surveyService.checksurAnswer(map);
		ArrayList<SurveyAnswer> aList = null;
		if(sur.getSurqStatus().equals("M")) {
			aList = surveyService.selectMAnswer(sNo);
		}else {
			aList = surveyService.selectEAnswer(sNo);
		}
		System.out.println(aList.toString());
		model.addAttribute("answer",answer);
		model.addAttribute("aList",aList);
		model.addAttribute("sur",sur);
		//model.addAttribute("oList",oList);
		return "survey/surveyDetailView";
	}
	
	//설문 상세보기 (관리자)
	@RequestMapping("detailAdminSurvey")
	public String detailAdminSurvey(String sNo, Model model) {
		Survey sur = surveyService.selectSurvey(sNo);
		ArrayList<SurveyAnswer> aList = null;
		if(sur.getSurqStatus().equals("M")) {
			aList = surveyService.selectMAnswer(sNo);
			System.out.println(aList.toString());
		}else {
			aList = surveyService.selectEAnswer(sNo);
		}
		model.addAttribute("aList",aList);
		model.addAttribute("sur",sur);
		//model.addAttribute("oList",oList);
		return "admin/surveyAdminDetailView";
	}
	
	// 설문 답변 추가
	@RequestMapping("insertAnswer")
	public String insertAnswer(SurveyAnswer answer, String[] options, Model model) {
		System.out.println(answer.toString());
		int result = surveyService.insertAnswer(answer,options);
		
		model.addAttribute("sNo", answer.getSurNo());
		model.addAttribute("empNo", answer.getSuraWriter());
		
		if(result > 0) {
			model.addAttribute("msg","설문제출에 성공하였습니다.");
			return "redirect:detailSurvey";
		}else {
			model.addAttribute("msg","설문제출을 실패하였습니다.");
			return "redirect:detailSurvey";
		}  
	}
	
	// 설문 답변 삭제
	@RequestMapping("deleteAnswer")
	public String deleteAnswer(SurveyAnswer answer, Model model) {
		System.out.println(answer.toString());
		int result = surveyService.deleteAnswer(answer);
		
		model.addAttribute("sNo", answer.getSurNo());
		model.addAttribute("empNo", answer.getSuraWriter());
		
		if(result > 0) {
			return "redirect:detailSurvey";
		}else {
			model.addAttribute("msg","다시제출 불가합니다.");
			return "redirect:detailSurvey";
		}  
	}
	
	
	/* 댓글 등록 */
	@RequestMapping("rinsert.so")
	@ResponseBody
	public String insertReply(Reply r) {
		System.out.println(r.toString());
		int result = surveyService.insertReply(r);
		
		return String.valueOf(result);
	}
	
	/* 댓글 목록 */
	@RequestMapping(value="rlistSur", produces="application/json; charset=UTF-8")
	@ResponseBody
	public String selectReplyList(String sno) {
		System.out.println("----------댓글리스트:"+sno);
		ArrayList<Reply> list = surveyService.selectReplyList(sno);
		System.out.println(list);
		return new GsonBuilder().setDateFormat("yyyy년-MM월-dd일 HH:mm").create().toJson(list);
	}
}

package com.kh.spring.approval.cotroller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class approvalController {
 
	
	
	@RequestMapping("approvalList.do")
	public String approvalList() {
		return "approval/approvalListView";
	}
	
	
	@RequestMapping("approvalInsertForm.do")
	public String approvalInsertForm() {
		return "approval/approvalInsertView";
	}
	//결재자가 결재 하기 창으로 넘어감 
	@RequestMapping("approval.do")
	public String approval() {
		return "approval/approvalView";
	}
	
	//상신인이 볼수 있는 결재 문서 상세보기 
	@RequestMapping("approvalDetailView.do")
	public String approvalDetailView() {
		return "approval/approvalDetailView";
	}
}

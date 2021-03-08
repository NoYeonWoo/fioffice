package com.kh.spring.approval.cotroller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class approvalController {
 
	
	
	@RequestMapping("approvalList.do ")
	public String approvalList() {
		return "approval/approvalListView";
	}
	
	
	@RequestMapping("approvalInsertForm.do")
	public String approvalInsertForm() {
		return "approval/approvalInsertView";
	}
}

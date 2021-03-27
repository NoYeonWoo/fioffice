package com.kh.spring.productInOut.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.GsonBuilder;
import com.kh.spring.productInOut.model.service.ProductInOutService;
import com.kh.spring.productInOut.model.vo.Client;

@Controller
public class ProductInOutController {
	
	@Autowired
	private ProductInOutService proInoutService;
	//--------------------------------------------------------거래처--------------------------------------------------------//
	
	//거래처화면
	@RequestMapping("cList.pio")
	public String clientListView() {
		return "productInOut/clientListView";
	}
	
	//거래처 리스트
	@RequestMapping(value="selectClientList", produces="appliction/json; charset=UTF-8")
	@ResponseBody
	public String selectClientList() {
		Map<String, Object> result = new HashMap<String, Object>();
		result.put("data", proInoutService.selectClientList());
		return new GsonBuilder().create().toJson(result);
	}
	
	//거래처 상세정보
	@RequestMapping("selectClient")
	@ResponseBody
	public Object selectClient(String cliNo) {
		Client cli = proInoutService.selectClient(cliNo);
		return cli;
	}
	
	//거래처 추가
	@RequestMapping("insertClient")
	public String insertClient(Client client, String post, String address1, String address2, Model model) {
		client.setAddress(post + "/" + address1 + "/" + address2);
		if(client.getComment().equals("")) {
			client.setComment(null);
		}
		int result = proInoutService.insertClient(client);
		if(result > 0) {
			return "redirect:cList.pio";
		}else {
			model.addAttribute("msg","거래처추가를 실패하였습니다.");
			return "forward:cList.pio";
		}
		
	}

	//거래처 수정
	@RequestMapping("updateClient")
	public String updateClient(Client client, String post, String address1, String address2, Model model) {
		client.setAddress(post + "/" + address1 + "/" + address2);
		if(client.getComment().equals("")) {
			client.setComment(null);
		}
		int result = proInoutService.updateClient(client);
		if(result > 0) {
			return "redirect:cList.pio";
		}else {
			model.addAttribute("msg","거래처수정을 실패하였습니다.");
			return "forward:cList.pio";
		}
	}
	
	//거래처 삭제
	@RequestMapping("deleteClient")
	public String deleteClient(String cliNo, Model model) {
		
		int result = proInoutService.deleteClient(cliNo);
		if(result > 0) {
			return "redirect:cList.pio";
		}else {
			model.addAttribute("msg","탈퇴를 실패하였습니다.");
			return "forward:cList.pio";
		}
	}
	@RequestMapping("pList.pio")
	public String productListView() {
		return "productInOut/productListView";
	}
	
	
	
	@RequestMapping("ioList.pio")
	public String inoutListView() {
		return "productInOut/inoutListView";
	}
}

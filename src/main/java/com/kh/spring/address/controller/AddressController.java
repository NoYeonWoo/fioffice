package com.kh.spring.address.controller;

import org.springframework.beans.factory.annotation.Autowired;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.GsonBuilder;
import com.google.gson.JsonIOException;


import com.kh.spring.address.model.service.AddressService;
import com.kh.spring.address.model.vo.Address;
import com.kh.spring.address.model.vo.PageInfo;
import com.kh.spring.common.Pagination;

@Controller
public class AddressController {
	
	@Autowired
	private AddressService addressService;

	@RequestMapping("view.add")
	public String selectList(@RequestParam(value="currentPage",required=false, defaultValue="1") int currentPage, Model model) {
		
		
	
		int listCount = addressService.selectListCount();
		//System.out.println(listCount);
		
		PageInfo pi = Pagination.getPageInfo(listCount, currentPage,10,5);
		
		ArrayList<Address> list = addressService.selectListCount(pi);
		
		model.addAttribute("list",list);
		model.addAttribute("pi",pi);
		

		return "address/addressView3";
		
	}
	
	@RequestMapping("update.add")
	public String viewUpdate( ){
		

		return "address/addressUpdate";
		
	}
	
	@RequestMapping("detail.add")
	public String viewDetail( ){
		

		return "address/addressDetail";
		
	}
	@RequestMapping("goinsert.add")
	public String goviewInsert( ){
		

		return "address/addressInsert";
		
	}
	
	@RequestMapping("insert.add")
	public String viewinsert(@ModelAttribute Address a){
		
		int result = addressService.insertAddress(a);
		

			if(result>0) {
				return "redirect:/";
				
			}else {
				return "redirect:/";
			}

		
	}
	
	
	/////////////////시작
}




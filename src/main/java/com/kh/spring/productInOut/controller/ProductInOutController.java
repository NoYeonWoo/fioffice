package com.kh.spring.productInOut.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ProductInOutController {

	@RequestMapping("pList.pio")
	public String productListView() {
		return "productInOut/productListView";
	}
	
	@RequestMapping("cList.pio")
	public String clientListView() {
		return "productInOut/clientListView";
	}
	
	@RequestMapping("ioList.pio")
	public String inoutListView() {
		return "productInOut/inoutListView";
	}
}

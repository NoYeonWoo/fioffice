package com.kh.spring.productInOut.controller;

import java.util.ArrayList;
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
import com.kh.spring.productInOut.model.vo.Product;

@Controller
public class ProductInOutController {
	
	@Autowired
	private ProductInOutService proInoutService;
	//--------------------------------------------------------거래처--------------------------------------------------------//
	
	//거래처화면
	@RequestMapping("cList.pio")
	public String clientListView(Model model) {
		int cliCount= proInoutService.selectClientCount();
		model.addAttribute("cliCount",cliCount);
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
	@RequestMapping("detailClient")
	public String selectClient(String cliNo,Model model) {
		Client client = proInoutService.selectClient(cliNo);
		model.addAttribute("client",client);
		return "productInOut/ClientDetailView";
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
			model.addAttribute("cliNo",client.getCliNo());
			return "forward:detailClient";
		}else {
			model.addAttribute("msg","거래처수정을 실패하였습니다.");
			return "forward:detailClient";
		}
	}
	
	//거래처 삭제
	@RequestMapping("deleteClient")
	public String deleteClient(String cliNo, Model model) {
		int count = proInoutService.selectProductCount(cliNo);
		if(count <= 0) {
			int result = proInoutService.deleteClient(cliNo);
			if(result > 0) {
				return "redirect:cList.pio";
			}else {
				model.addAttribute("msg","삭제를 실패하였습니다.");
				return "forward:detailClient";
			}
		}else {
			model.addAttribute("msg","거래처 관련 상품이 남아있습니다.");
			return "forward:detailClient";
		}
		
	}
	
	//--------------------------------------------------------상품--------------------------------------------------------//
	//상품화면
	@RequestMapping("pList.pio")
	public String productListView(Model model) {
		ArrayList<Client> cList = proInoutService.selectClientList();
		System.out.println(cList);
		model.addAttribute("cList",cList);
		return "productInOut/productListView";
	}
	
	//상품 리스트
	@RequestMapping(value="selectProductList", produces="appliction/json; charset=UTF-8")
	@ResponseBody
	public String selectProductList(String cliNo) {
		Map<String, Object> result = new HashMap<String, Object>();
		Map<String, Object> map = new HashMap<String, Object>();
		if(cliNo.equals("")) cliNo=null;
		map.put("cliNo", cliNo);
		result.put("data", proInoutService.selectProductList(map));
		System.out.println(result);
		return new GsonBuilder().create().toJson(result);
	}
	
	//거래처별 상품개수
	@RequestMapping(value="selectProductCount", produces="appliction/json; charset=UTF-8")
	@ResponseBody
	public String selectProductCount(String cliNo) {
		System.out.println(cliNo);
		int result=proInoutService.selectProductCount(cliNo);
		return String.valueOf(result);
	}	
		
	//상품 상세정보
	@RequestMapping("detailProduct")
	public String selectProduct(String proNo,Model model) {
		Product product = proInoutService.selectProduct(proNo);
		model.addAttribute("product",product);
		return "productInOut/ProductDetailView";
	}
			
	//상품 추가
	@RequestMapping("insertProduct")
	public String insertProduct(Product product, Model model) {
		if(product.getComment().equals("")) {
			product.setComment(null);
		}
		int result = proInoutService.insertProduct(product);
		if(result > 0) {
			return "redirect:pList.pio";
		}else {
			model.addAttribute("msg","상품추가를 실패하였습니다.");
			return "forward:pList.pio";
		}
			
	}
	
	//거래처 수정
	@RequestMapping("updateProduct")
	public String updateProduct(Product product, Model model) {
		if(product.getComment().equals("")) {
			product.setComment(null);
		}
		int result = proInoutService.updateProduct(product);
		if(result > 0) {
			model.addAttribute("proNo",product.getProNo());
			return "forward:detailProduct";
		}else {
			model.addAttribute("msg","상품수정을 실패하였습니다.");
			return "forward:detailProduct";
		}
	}
		
	//상품 삭제
	@RequestMapping("deleteProduct")
	public String deleteProduct(String proNo, Model model) {
		
		int result = proInoutService.deleteProduct(proNo);
		if(result > 0) {
			return "redirect:pList.pio";
		}else {
			model.addAttribute("msg","탈퇴를 실패하였습니다.");
			return "forward:detailClient";
		}
			
	}
	
	//상품 전체삭제
	@RequestMapping("deleteAllProduct")
	@ResponseBody
	public String deleteAllProduct(String cliNo) {
		Map<String, Object> map = new HashMap<String, Object>();
		if(cliNo.equals("")) cliNo=null;
		map.put("cliNo", cliNo);
		int result = proInoutService.deleteAllProduct(map);
		return String.valueOf(result);
	}
	
	
	
	@RequestMapping("ioList.pio")
	public String inoutListView() {
		return "productInOut/inoutListView";
	}
}

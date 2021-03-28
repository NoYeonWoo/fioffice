package com.kh.spring.productInOut.model.vo;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@ToString
public class Product {
	private String proNo;
	private String proName;
	private String preStock;
	private String inStock;
	private String inPrice;
	private String outStock;
	private String outPrice;
	private String stock;
	private String comment;
	private String cliNo;
	private String cliName;
}

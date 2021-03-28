package com.kh.spring.productInOut.model.service;

import java.util.ArrayList;
import java.util.Map;

import com.kh.spring.productInOut.model.vo.Client;
import com.kh.spring.productInOut.model.vo.Product;

public interface ProductInOutService {

	ArrayList<Client> selectClientList();

	int insertClient(Client client);

	Client selectClient(String cliNo);

	int updateClient(Client client);

	int deleteClient(String cliNo);

	int selectClientCount();

	ArrayList<Product> selectProductList(Map<String, Object> map);

	int insertProduct(Product product);

	int selectProductCount(String cliNo);

	Product selectProduct(String proNo);

	int updateProduct(Product product);

	int deleteProduct(String proNo);

	int deleteAllProduct(Map<String, Object> map);

}

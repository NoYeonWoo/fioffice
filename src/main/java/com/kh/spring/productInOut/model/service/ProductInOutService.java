package com.kh.spring.productInOut.model.service;

import java.util.ArrayList;

import com.kh.spring.productInOut.model.vo.Client;

public interface ProductInOutService {

	ArrayList<Client> selectClientList();

	int insertClient(Client client);

	Client selectClient(String cliNo);

	int updateClient(Client client);

	int deleteClient(String cliNo);

}

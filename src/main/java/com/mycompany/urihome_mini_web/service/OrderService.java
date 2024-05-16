package com.mycompany.urihome_mini_web.service;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mycompany.urihome_mini_web.dao.OrdererDao;
import com.mycompany.urihome_mini_web.dto.OrderItemList;

import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
public class OrderService {
	@Autowired
	private OrdererDao ordererDao;

	
	public List<OrderItemList> getOrderItem(String mid) {
	List<OrderItemList> orderItemList = ordererDao.getOrderItem(mid);
	return orderItemList;
	}
}

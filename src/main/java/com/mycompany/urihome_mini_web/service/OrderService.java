package com.mycompany.urihome_mini_web.service;


import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mycompany.urihome_mini_web.dao.CartDao;
import com.mycompany.urihome_mini_web.dao.OrderHistoryDao;
import com.mycompany.urihome_mini_web.dao.OrderItemDao;
import com.mycompany.urihome_mini_web.dao.OrdererDao;
import com.mycompany.urihome_mini_web.dao.RecipientDao;
import com.mycompany.urihome_mini_web.dto.Cart;
import com.mycompany.urihome_mini_web.dto.Order;
import com.mycompany.urihome_mini_web.dto.OrderHistory;
import com.mycompany.urihome_mini_web.dto.OrderItemList;
import com.mycompany.urihome_mini_web.dto.Orderer;
import com.mycompany.urihome_mini_web.dto.Recipient;

import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
public class OrderService {
	@Autowired
	private OrderHistoryDao orderHistoryDao;
	@Autowired
	private OrdererDao ordererDao;
	@Autowired
	private OrderItemDao orderItemDao;
	@Autowired
	private RecipientDao recipientDao;
	@Autowired
	private CartDao cartDao;

	
	public List<OrderItemList> getOrderItem(String mid) {
	List<OrderItemList> orderItemList = cartDao.getOrderItem(mid);
	return orderItemList;
	}


	public void checkSelectOrder(List<Cart> cartList) {
		Iterator<Cart> iter = cartList.iterator();

		
		while(iter.hasNext()) {
			Cart item = iter.next();
			cartDao.changeCheckOrder(item);
		}
	}


	public List<OrderItemList> getCheckOrderItem(String mid) {
		List<OrderItemList> orderItemList = cartDao.getCheckOrderItem(mid);
		return orderItemList;
	}


	public void orderSelectItems(HashMap<String, Object> orderInfo) {
		String mid = (String) orderInfo.get("mid");
		Order order = (Order) orderInfo.get("order");
		
		Orderer orderer = order.getOrderer();
		Recipient recipient = order.getRecipient();
		List<Cart> cartList = order.getCartList();
		int ototalPrice = order.getOtotalPrice();
		
		OrderHistory orderHistory = new OrderHistory();
		orderHistory.setMid(mid);
		orderHistory.setOstatus("결제완료");
		orderHistory.setOtotalPrice(ototalPrice);
		
		int orderRow = orderHistoryDao.order(orderHistory);
		int onumber = orderHistoryDao.getOnumber(mid);
		
		orderer.setOnumber(onumber);
		recipient.setOnumber(onumber);
		
		int ordererRow = ordererDao.order(orderer);
		int recipientRow = recipientDao.order(recipient);
		
		HashMap<String, Object> param = new HashMap<>();
		param.put("onumber", onumber);
		
		HashMap<String, String> delCart = new HashMap<>();
		delCart.put("mid", mid);
		
		for(int i = 0; i < cartList.size(); i++) {
			Cart cart = cartList.get(i);
			delCart.put("pid", cart.getPid());
			param.put("pid", cart.getPid());
			param.put("pbuyAmount", cart.getPbuyAmount());
			param.put("ptotalPrice", cart.getPtotalPrice());
			
			int orderItemRow = orderItemDao.insertPayItems(param);
			
			int cartRow = cartDao.deleteCart(delCart);
		}
	}


	public void orderSelectItem(HashMap<String, Object> orderInfo) {
		String mid = (String) orderInfo.get("mid");
		Order order = (Order) orderInfo.get("order");
		
		Orderer orderer = order.getOrderer();
		Recipient recipient = order.getRecipient();
		List<Cart> cartList = order.getCartList();
		int ototalPrice = order.getOtotalPrice();
		
		OrderHistory orderHistory = new OrderHistory();
		orderHistory.setMid(mid);
		orderHistory.setOstatus("결제완료");
		orderHistory.setOtotalPrice(ototalPrice);
		
		int orderRow = orderHistoryDao.order(orderHistory);
		int onumber = orderHistoryDao.getOnumber(mid);
		
		orderer.setOnumber(onumber);
		recipient.setOnumber(onumber);
		
		int ordererRow = ordererDao.order(orderer);
		int recipientRow = recipientDao.order(recipient);
		
		HashMap<String, Object> param = new HashMap<>();
		param.put("onumber", onumber);
		
		HashMap<String, String> delCart = new HashMap<>();
		delCart.put("mid", mid);
		
		for(int i = 0; i < cartList.size(); i++) {
			Cart cart = cartList.get(i);
			delCart.put("pid", cart.getPid());
			param.put("pid", cart.getPid());
			param.put("pbuyAmount", cart.getPbuyAmount());
			param.put("ptotalPrice", cart.getPtotalPrice());
			
			int orderItemRow = orderItemDao.insertPayItems(param);
		}
	}
}

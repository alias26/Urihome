package com.mycompany.urihome_mini_web.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.mycompany.urihome_mini_web.dao.CartDao;
import com.mycompany.urihome_mini_web.dto.Cart;

import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
public class CartService {
	@Resource
	private CartDao cartDao;
	
	/*public Cart getCart(String mid) {
		Cart cart= cartDao.selectByMid(mid);		
		return cart;
}*/


	public List<Cart> getCartListByMid(String mid) {
		
		return cartDao.selectCartListByMid(mid);
	}

	/*public Cart getPID(String mid) {
		Cart cart = cartDao.selectByPid(pid);
		return product;
	}*/
	
}

package com.mycompany.urihome_mini_web.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mycompany.urihome_mini_web.dto.Cart;
import com.mycompany.urihome_mini_web.dto.Member;
import com.mycompany.urihome_mini_web.security.UriHomeUserDetails;
import com.mycompany.urihome_mini_web.service.CartService;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
@RequestMapping("/cart")
public class CartController {
	
	 @Autowired
	    private CartService cartService; // 실제 서비스 클래스를 주입받습니다.
	
	@RequestMapping("")
	public String cart() {
		return "/cart/cart";
	}
	
	
	
	
	
}

package com.mycompany.urihome_mini_web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
@RequestMapping("/product")
public class ProductController {
	@RequestMapping("/product_detail")
	public String product_detail() {
		return "product/product_detail";
	}
	
	@RequestMapping("/product_list")
	public String product_list() {
		return "product/product_list";
	}
}

package com.mycompany.urihome_mini_web.controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.mycompany.urihome_mini_web.dto.ProductCategory;
import com.mycompany.urihome_mini_web.service.ProductService;

import lombok.extern.slf4j.Slf4j;
import oracle.net.aso.m;

@Controller
@Slf4j
@RequestMapping("/")
public class HomeController {
	
	@Autowired
	ProductService productService;
	
	@RequestMapping("")
	public String index(String pcategoryName, String pid, String pbanner, Model model) {
		List<ProductCategory> bannerList = productService.selectByPbanner(pbanner);
		model.addAttribute("bannerList", bannerList);
		
		HashMap<String, String> param = new HashMap<>();
		param.put("pcategoryName", pcategoryName);
		
		param.put("pthumbBodyType", "thumb");
		int thumbImageCount = productService.getProductImageCount(param);
		model.addAttribute("thumbImageCount", thumbImageCount);
		
		param.put("pthumbBodyType", "body");
		int bodyImageCount = productService.getProductImageCount(param);
		model.addAttribute("bodyImageCount", bodyImageCount);
		
		HashMap<String, List<String>> productOption = productService.getProductOptionMap(pid);
		model.addAttribute("productOption", productOption);
		
		return "index";
	}
}

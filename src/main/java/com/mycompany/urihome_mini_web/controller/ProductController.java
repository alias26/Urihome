package com.mycompany.urihome_mini_web.controller;

import java.io.OutputStream;
import java.util.HashMap;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mycompany.urihome_mini_web.dto.Pimage;
import com.mycompany.urihome_mini_web.dto.Product;
import com.mycompany.urihome_mini_web.service.ProductService;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
@RequestMapping("/product")
public class ProductController {
	@Autowired
	ProductService productService;
	
	@RequestMapping("/product_detail")
	public String product_detail(String pid, Model model) {
		Product product = productService.getProduct(pid);
		model.addAttribute("product", product);
		
		HashMap<String, String> param = new HashMap<>();
		param.put("pid", pid);
		
		param.put("pthumbBodyType", "thumb");
		int thumbImageCount = productService.getProductImageCount(param);
		model.addAttribute("thumbImageCount", thumbImageCount);
		
		param.put("pthumbBodyType", "body");
		int bodyImageCount = productService.getProductImageCount(param);
		model.addAttribute("bodyImageCount", bodyImageCount);
		return "product/product_detail";
	}
	
	@RequestMapping("/product_list")
	public String product_list() {
		return "product/product_list";
	}
	
	@GetMapping("/productImageDownload")
	public void productImageDownload(String pid, int index, String pthumbBodyType, HttpServletResponse response) throws Exception {
		HashMap<String, String> param = new HashMap<>();
		param.put("pid", pid);
		param.put("index", String.valueOf(index));
		param.put("pthumbBodyType", pthumbBodyType);
		Pimage pimage = productService.getPimage(param);
		byte[] data = productService.getProductImageData(param);
		
		response.setContentType(pimage.getPimageType());
		String fileName = new String(pimage.getPimageName().getBytes("UTF-8"), "ISO-8859-1");
		response.setHeader("content-Disposition", "attachment; filename=\"" + fileName + "\"");

		// 응답 본문에 파일 데이터 출력
		OutputStream os = response.getOutputStream();
		os.write(data);
		os.flush();
		os.close();
	}
}

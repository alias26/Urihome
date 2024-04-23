package com.mycompany.urihome_mini_web.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttribute;

import com.mycompany.urihome_mini_web.dto.ProductInfo;
import com.mycompany.urihome_mini_web.dto.imageProductInfo;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
@RequestMapping("/admin")
public class AdminController {
	@GetMapping("/productManageView")
	public String productManageView(int pageNo, Model model, HttpSession session) {
		List<ProductInfo> productInfoList = (List<ProductInfo>) session.getAttribute("productInfoList");
		if (productInfoList == null) {
			productInfoList = new ArrayList<ProductInfo>();
			session.setAttribute("productInfoList", productInfoList);
			session.setAttribute("pageNo", 1);
			for (int i = 1; i <= 20; i++) {
				String path = "/resources/image/best" + i +".jpg";
				productInfoList.add(new ProductInfo(path, path, i, "상품" + i, i * 10000, i*1000, 0));
			}
		}
		session.setAttribute("pageNo", pageNo);
		
		return "admin/productManageView";
	}
	
	@GetMapping("/productInfoView")
	public String productInfoView(int pno, Model model) {
		model.addAttribute("pno", pno);
		return "admin/productInfoView";
	}
	
	@GetMapping("/addProductInfoView")
	public String addProductInfoView() {
		return "admin/addProductInfoView";
	}
	
	@PostMapping(value="/addProductInfo", produces="application/json; charset=UTF-8")
	@ResponseBody
	public String addProductInfo(ProductInfo form, 
			@SessionAttribute List<ProductInfo> productInfoList,  @SessionAttribute int pageNo) throws IOException{
		boolean isProductExist = false;
		for(ProductInfo product : productInfoList) {
			if(product.getPno() == form.getPno()) {
				isProductExist = true;
				break;
			}
		}
		
		if(!isProductExist) {
			ProductInfo product = new ProductInfo(form.getThumbnail(), form.getBodyImage(), form.getPno(), 
					form.getPname(), form.getPprice(), form.getPamount(), 0);
			productInfoList.add(product);
		}
		
//		File destDir = new File("/Users/cherrypunch/workspace/KosaCourse/projects/java-web-mac/springframework/temp");
//		if(!destDir.exists()) destDir.mkdirs();
//		File destFile = new File(destDir, new Date().getTime() + "-" + form.getThumbnailImage().getOriginalFilename());
//		form.getThumbnailImage().transferTo(destFile);
//		destFile = new File(destDir, new Date().getTime() + "-" + form.getBodyImage().getOriginalFilename());
//		form.getBodyImage().transferTo(destFile);
		
		JSONObject jsonObject = new JSONObject();
		jsonObject.put("result", "success");
		jsonObject.put("pageNo", pageNo);
		
		return jsonObject.toString();
	}
	
	@PostMapping(value="/updateProductInfo", produces="application/json; charset=UTF-8")
	@ResponseBody
	public String updateProductInfo(ProductInfo form, @SessionAttribute List<ProductInfo> productInfoList, @SessionAttribute int pageNo) {
		for (ProductInfo product : productInfoList) {
			if (product.getPno() == form.getPno()) {
				//product 정보 수정
//				product.setThumbnail(form.getThumbnail());
//				product.setBodyImage(form.getBodyImage());
				product.setPno(form.getPno());
				product.setPname(form.getPname());
				product.setPamount(form.getPamount());
				product.setPprice(form.getPprice());
			}
		}
		
		JSONObject jsonObject = new JSONObject();
		jsonObject.put("result", "success");
		jsonObject.put("pageNo", pageNo);
		
		return jsonObject.toString();
	}
	
	@RequestMapping("/removeProductInfo")
	public String updateProductInfo(int pno, @SessionAttribute List<ProductInfo> productInfoList,  @SessionAttribute int pageNo) {
		Iterator<ProductInfo> iterator = productInfoList.iterator();
		while(iterator.hasNext()) {
			ProductInfo product = iterator.next();
			if (product.getPno() == pno) {
				//product 정보 수정
				iterator.remove();
			}
		}
		
		String redirect = "redirect:/admin/productManageView?pageNo=" + pageNo;
		
		return redirect;
	}
}

package com.mycompany.urihome_mini_web.controller;

import java.io.OutputStream;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.mycompany.urihome_mini_web.dto.Pimage;
import com.mycompany.urihome_mini_web.dto.Product;
import com.mycompany.urihome_mini_web.dto.ProductCategory;
import com.mycompany.urihome_mini_web.dto.ProductOption;
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
		
		HashMap<String, List<String>> productOption = productService.getProductOptionMap(pid);
		model.addAttribute("productOption", productOption);
		
		return "product/product_detail";
	}
	
	@RequestMapping("/product_list")
	public String product_list(Model model) {
		List<Product> productList = productService.getProductCategoryListAll();
		model.addAttribute("productList", productList);
		return "/product/product_list";
	}
	
	// 전체 상품 조회
	@GetMapping("/getProductListAjax")
	public String getProductListAll(Model model) {
		List<Product> productList = productService.getProductCategoryListAll();
		model.addAttribute("productList", productList);
//		log.info(Integer.toString(productList.size()));
		return "product/getProductListAjax";
	}
	
	// 수저세트 상품 조회
	@GetMapping("/getProductListAjax1")
	public String productCategoryCate1(Model model) {
		List<Product> productList = productService.selectByPcategoryname();
		model.addAttribute("productList", productList);
//		log.info("productList1: "+productList);
//		log.info(Integer.toString(productList.size()));
		return "product/getProductListAjax1";
	}
	
	// 컵 상품 조회
	@GetMapping("/getProductListAjax2")
	public String productCategoryCate2(Model model) {
		List<Product> productList = productService.selectByPcategoryname();
		model.addAttribute("productList", productList);
//		log.info("productList2: "+productList);
//		log.info(Integer.toString(productList.size()));
		return "product/getProductListAjax2";
	}
	
	// 그릇 상품 조회
	@GetMapping("/getProductListAjax3")
	public String productCategoryCate3(Model model) {
		List<Product> productList = productService.selectByPcategoryname();
		model.addAttribute("productList", productList);
//		log.info("productList3: "+productList);
//		log.info(Integer.toString(productList.size()));
		return "product/getProductListAjax3";
	}
	
	// 접시 상품 조회
	@GetMapping("/getProductListAjax4")
	public String productCategoryCate4(Model model) {
		List<Product> productList = productService.selectByPcategoryname();
		model.addAttribute("productList", productList);
//		log.info("productList4: "+productList);
//		log.info(Integer.toString(productList.size()));
		return "product/getProductListAjax4";
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

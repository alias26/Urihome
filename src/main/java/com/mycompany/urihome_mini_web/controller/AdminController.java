package com.mycompany.urihome_mini_web.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mycompany.urihome_mini_web.dto.Member;
import com.mycompany.urihome_mini_web.dto.Pager;
import com.mycompany.urihome_mini_web.dto.Product;
import com.mycompany.urihome_mini_web.service.MemberService;
import com.mycompany.urihome_mini_web.service.ProductService;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
@RequestMapping("/admin")
public class AdminController {
	@Autowired
	private ProductService productService;
	
	@Autowired
	private MemberService memberService;
	
	
	@GetMapping("/dashBoard")
	public String dashBoard(Model model) {
		model.addAttribute("side", "dashBoard");
		return "admin/dashBoard";
	}
	
	@GetMapping("/productManageView")
	public String productManageView(String pageNo, Model model, HttpSession session) {
		if(pageNo == null) {
			pageNo = (String) session.getAttribute("pageNo");
			if(pageNo == null) {
				pageNo= "1";
			}
		}
		
		session.setAttribute("pageNo", pageNo);
		
		int intPageNo = Integer.parseInt(pageNo);
		
		int rowsPagingTarget = productService.getTotalRows();
		Pager pager = new Pager(10, 10, rowsPagingTarget, intPageNo);
		
		List<Product> productList = productService.getProductList(pager);
		model.addAttribute("pager", pager);
		model.addAttribute("productList", productList);
		model.addAttribute("side", "productManage");
		return "admin/productManageView";
	}
	
	
	
	@GetMapping("/addProductInfoView")
	public String addProductInfoView(Model model) {
		model.addAttribute("side", "productManage");
		return "admin/addProductInfoView";
	}
	
	@PostMapping("/addProduct")
	public String addProduct(Product product) {
		if(product.getPthumbnailImage() != null && !product.getPthumbnailImage().isEmpty() 
				&& product.getPbodyImage() != null && !product.getPbodyImage().isEmpty()) {
			product.setPthumbnail(product.getPthumbnailImage().getOriginalFilename());
			product.setPbody(product.getPbodyImage().getOriginalFilename());
		}
		
		productService.addProduct(product);
		return "redirect:/admin/productManageView";
	}
	
	@GetMapping("/adminProductDetail")
	public String adminProductDetail(String pid, Model model) {
		Product product = productService.getProduct(pid);
		model.addAttribute("product", product);
		model.addAttribute("side", "productManage");
		return "admin/adminProductDetail";
	}
	
	@GetMapping("/productInfoView")
	public String productInfoView(String pid, Model model) {
		Product product = productService.getProduct(pid);
		model.addAttribute("product", product);
		model.addAttribute("side", "productManage");
		return "admin/productInfoView";
	}
	
	@PostMapping("/updateProduct")
	public String updateProduct(Product product) {
		if(product.getPthumbnailImage() != null && !product.getPthumbnailImage().isEmpty() 
				&& product.getPbodyImage() != null && !product.getPbodyImage().isEmpty()) {
			product.setPthumbnail(product.getPthumbnailImage().getOriginalFilename());
			product.setPbody(product.getPbodyImage().getOriginalFilename());
		}
		
		productService.updateProduct(product);
		
		return "redirect:/admin/productManageView";
	}
	
	@GetMapping("/removeProduct")
	public String removeProduct(String pid) {
		productService.removeProduct(pid);
		
		return "redirect:/admin/productManageView";
	}
	
	@GetMapping("/customerManageView")
	public String customerManageView(String pageNo,Model model,HttpSession session) {
		if(pageNo==null) {
			pageNo=(String) session.getAttribute("pageNo");
			if(pageNo==null) {
				pageNo="1";
			}
		}
		
		session.setAttribute("pageNo", pageNo);
		int intPageNo=Integer.parseInt(pageNo);
		
		int rowsPagingTarget= memberService.getTotalRows();
		Pager pager = new Pager(10,10,rowsPagingTarget,intPageNo);
		
		List<Member> memberList= memberService.getMemberList(pager);
		
		model.addAttribute("pager",pager);
		model.addAttribute("memberList",memberList);
		model.addAttribute("side", "customerManage");
		return "admin/customerManageView";
	}
	
	
	@GetMapping("/deleteMember")
	public String deleteMember(String mid) {
		memberService.removeMember(mid);
		return "redirect:/admin/customerManageView";
	}
	
	@GetMapping("/userInfoView")
	public String userInfoView(String mid, Model model) {
		Member member= memberService.getMember(mid);		
		model.addAttribute("member", member);
		model.addAttribute("side", "memberManage");	
		return "/admin/userInfoView";
	}
	
}

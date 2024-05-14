package com.mycompany.urihome_mini_web.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.annotation.Secured;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mycompany.urihome_mini_web.dto.Member;
import com.mycompany.urihome_mini_web.dto.MemberValidator;
import com.mycompany.urihome_mini_web.security.UriHomeUserDetails;
import com.mycompany.urihome_mini_web.service.MemberService;


import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
@RequestMapping("/order")
public class OrderController {
	/*@RequestMapping("/orderForm")
	public String orderForm() {
		return "/order/orderForm";
	}*/
	
	@Autowired
	private MemberService memberService;
	
	
	
	@GetMapping("/orderForm")
	@Secured("ROLE_USER")
	public String orderWait(Model model, Authentication authentication) {
		UriHomeUserDetails userDetails = (UriHomeUserDetails) authentication.getPrincipal();
		Member member = userDetails.getMember();
		model.addAttribute("member", member);
		
		if(member.getMtel() != null) {
			String[] mtel = member.getMtel().split("-");
			model.addAttribute("mtel", mtel);
		}else {
			String[] mtel = {"", "", ""};
			model.addAttribute("mtel", mtel);
		}
		
		String[] mphone = member.getMphone().split("-");
		model.addAttribute("mphone", mphone);
		
		return "/order/orderForm";
	}
	
	/*member라는 이름의 폼 데이터를 검증하는 데에 orderValidator 클래스의 검증 규칙을 사용하겠다고 선언하는 것입니다.*/
	@InitBinder("member")
	public void orderFormValidator(WebDataBinder binder) {
		binder.setValidator(new MemberValidator());
	}
	
	
	/*@PostMapping("/orderWait")
	public String orderWait(Model model,@Valid OrderWait orderwait, Authentication authentication,Errors errors) {			
		//유효성 검사 에러시 주문서작성페이지로 이동시킨다.
		if(errors.hasErrors()) {
			return "/order/orderForm";
		}
		
		log.info(orderwait.getMid());
		orderService.updateOrderWait(orderwait);		
		
		//DB 내용을 수정했을 경우 Spring Security 정보도 수정
		Member dbMember = memberService.getMember(orderwait.getMid());
		UriHomeUserDetails userDetails = (UriHomeUserDetails) authentication.getPrincipal();
		userDetails.setMember(dbMember);
		
		//
		return "redirect:/order/orderForm";
	}*/
	
	
	
	
}
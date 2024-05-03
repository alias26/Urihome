package com.mycompany.urihome_mini_web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.annotation.Secured;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mycompany.urihome_mini_web.dto.Member;
import com.mycompany.urihome_mini_web.service.MemberService;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
@RequestMapping("/member")
public class MemberController {
	@Autowired
	private MemberService memberService;
	
	@GetMapping("/joinForm")
	public String joinForm() {
		return "member/joinForm";
	}
	
	@PostMapping("/join")
	public String join(Member member) {
		memberService.join(member);
		return "redirect:/member/login";
	}

	@GetMapping("/login")
	public String login() {
		return "member/login";
	}

	@GetMapping("/idFind")
	public String idfind() {
		return "member/idFind";
	}

	@GetMapping("/passwordFind")
	public String passwordfind() {
		return "member/passwordFind";
	}

	@GetMapping("/mypage")
	@Secured("ROLE_USER")
	public String mypage() {
		return "member/mypage";
	}
	
	@GetMapping("/memberInfo")
	@Secured("ROLE_USER")
	public String memberInfo() {
		return "member/memberInfo";
	}

	@GetMapping("/myPageOrderList")
	@Secured("ROLE_USER")
	public String mypageorderlist() {
		return "member/myPageOrderList";
	}

	@GetMapping("/error403")
	public String error403() {
		return "error/error403";
	}
}

package com.mycompany.urihome_mini_web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.annotation.Secured;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mycompany.urihome_mini_web.dto.Member;
import com.mycompany.urihome_mini_web.security.UriHomeUserDetails;
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
	public String idFind() {
		return "member/idFind";
	}

	@GetMapping("/passwordFind")
	public String passwordFind() {
		return "member/passwordFind";
	}

	@GetMapping("/mypage")
	@Secured("ROLE_USER")
	public String mypage() {
		return "member/mypage";
	}
	
	@GetMapping("/memberInfo")
	/*@Secured("ROLE_USER")*/
	public String memberInfo(Model model, Authentication authentication) {
		UriHomeUserDetails userDetails = (UriHomeUserDetails) authentication.getPrincipal();
		Member member = userDetails.getMember();
		model.addAttribute("member", member);
		
		String[] mtel = member.getMtel().split("-");
		model.addAttribute("mtel", mtel);
		
		String[] mphone = member.getMphone().split("-");
		model.addAttribute("mphone", mphone);
		
		return "member/memberInfo";
	}

	@GetMapping("/myPageOrderList")
	@Secured("ROLE_USER")
	public String mypageOrderList() {
		return "member/myPageOrderList";
	}

	@GetMapping("/error403")
	public String error403() {
		return "error/error403";
	}
	
	@PostMapping("/updateMember")
	public String updateMember(Model model, Member member, Authentication authentication) {			
		memberService.updateMember(member);		
		
		//DB 내용을 수정했을 경우 Spring Security 정보도 수정
		Member dbMember = memberService.getMember(member.getMid());
		UriHomeUserDetails userDetails = (UriHomeUserDetails) authentication.getPrincipal();
		userDetails.setMember(dbMember);
		
		return "redirect:/member/memberInfo";
	}
	
	
	
}

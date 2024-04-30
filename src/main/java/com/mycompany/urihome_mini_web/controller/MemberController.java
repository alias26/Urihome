package com.mycompany.urihome_mini_web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
@RequestMapping("/member")
public class MemberController {
	@RequestMapping("/join")
	public String join() {
		return "member/join";
	}
	@RequestMapping("/login")
	public String login() {
		return "member/login";
	}
	@RequestMapping("/idfind")
	public String idfind() {
		return "member/idfind";
	}
	@RequestMapping("/passwordfind")
	public String passwordfind() {
		return "member/passwordfind";
	}
	@RequestMapping("/memberinfo")
	public String memberinfo() {
		return "member/memberinfo";			
	}
	@RequestMapping("/mypageorderlist")
	public String mypageorderlist() {
		return "member/mypageorderlist";
	}
}

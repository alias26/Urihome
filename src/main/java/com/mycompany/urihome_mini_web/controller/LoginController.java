package com.mycompany.urihome_mini_web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
@RequestMapping("/")
public class LoginController {
	@RequestMapping("/login2")
	public String index() {
		return "login2";
	}
}

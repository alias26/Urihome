package com.mycompany.urihome_mini_web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
@RequestMapping("/member")
public class IdFindController {
	@RequestMapping("/idfind")
	public String index() {
		return "member/idfind";
	}
}

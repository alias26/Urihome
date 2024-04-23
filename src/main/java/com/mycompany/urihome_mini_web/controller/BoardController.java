package com.mycompany.urihome_mini_web.controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.mycompany.urihome_mini_web.dto.noticeBoard;

@Controller
@RequestMapping("/")
public class BoardController {
	@RequestMapping("/board")
	public ModelAndView board() {
		List<noticeBoard> boardList = new ArrayList<>();
		for (int i = 1; i <= 8; i++) {
			boardList.add(new noticeBoard(i, "제목", new Date(), "관리자", 0));
		}

		ModelAndView modelAndView = new ModelAndView();
		// request 범위 저장에 boardList 저장
		modelAndView.addObject("boardList", boardList);

		// viewName을 저장
		modelAndView.setViewName("/board");

		return modelAndView;
	}

	@RequestMapping("/FAQ")
	public String FAQboard() {
		return "FAQ";
	}
	@RequestMapping("/questionBoard")
	public String questionBoard() {
		return "/questionBoard";
	}

}

package com.mycompany.urihome_mini_web.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.annotation.Secured;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mycompany.urihome_mini_web.dto.BoardProduct;
import com.mycompany.urihome_mini_web.dto.Pager;
import com.mycompany.urihome_mini_web.service.BoardProductService;

import lombok.extern.slf4j.Slf4j;


@Slf4j
@Controller
@RequestMapping("/boardProduct")
public class BoardProductController {
	@Autowired
	public BoardProductService bpService;
	
	// 리뷰 폼
	@Secured("ROLE_USER")
	@GetMapping("/writeReviewForm")
	public String writeReviewForm(String pid, Model model) {
		model.addAttribute("pid", pid);
		return "boardProduct/writeReviewForm";
	}

	@Secured("ROLE_USER")
	@PostMapping("/writeReview")
	public String writeReview(BoardProduct boardProduct, Authentication authentication) {
		// 로그인한 회원의 id 가져오기
		String mid = authentication.getName();
		log.info(boardProduct.getBptitle());

		// mid를 회원의 id로 설정
		boardProduct.setMid(mid);
		// 게시판을 review 타입으로 설정
		boardProduct.setBptype("review");

		log.info(boardProduct.getBptitle());
		String pid = boardProduct.getPid();

		// 첨부 파일 유무
		if (boardProduct.getBpattach() != null && !boardProduct.getBpattach().isEmpty()) {
			// DTO 설정
			boardProduct.setBpattachoname(boardProduct.getBpattach().getOriginalFilename());
			boardProduct.setBpattachtype(boardProduct.getBpattachtype());
			// 예외 처리
			try {
				boardProduct.setBpattachdata(boardProduct.getBpattach().getBytes());
			} catch (Exception e) {

			}
		}

		// 비즈니스 로직 처리 위임
		bpService.writeReview(boardProduct);
		// 목록으로 돌아감
		return "redirect:/product/product_detail?pid=" + pid;
	}

	@GetMapping("/reviewList")
	public String reviewList(String pid, String rpageNo, Model model, HttpSession session) {
		// pageNo를 받지 못했을 경우 (처음 접근)
		if (rpageNo == null) {
			// 세션에 pageNo가 있는지 확인하고 String으로 받아옴 (돌아가기)
			rpageNo = (String) session.getAttribute("rpageNo");

			// 세션에 저장되어 있지 않은 경우
			if (rpageNo == null) {
				// 강제 1로 세팅 (첫 페이지)
				rpageNo = "1";
			}
		}
		
		log.info(rpageNo);

		// 문자열인 pageNo를 int형으로 변환
		int intPageNo = Integer.parseInt(rpageNo);
		// 세션에서 pageNo 저장 (되돌아가기)
		session.setAttribute("rpageNo", rpageNo);

		// Page 객체 생성
		int rowPagingTarget = bpService.getTotalRows(pid);
		Pager pager = new Pager(5, 5, rowPagingTarget, intPageNo);

		// Service에서 리뷰 목록 요청
		HashMap<String, Object> param = new HashMap<>();
		param.put("pager", pager);
		param.put("pid", pid);

		List<BoardProduct> reviewList = bpService.getReviewList(param);
		
		model.addAttribute("pager", pager);
		model.addAttribute("pid", pid);
		model.addAttribute("reviewList", reviewList);
		model.addAttribute("reviewCount", rowPagingTarget);
		return "boardProduct/reviewListForm";
	}
	
	@GetMapping("/removeReview")
	public String removeReview(int bpnumber, String pid, String rpageNo,
			Model model, HttpSession session) {
		bpService.removeReview(bpnumber);
		// pageNo를 받지 못했을 경우 (처음 접근)
		if (rpageNo == null) {
			// 세션에 pageNo가 있는지 확인하고 String으로 받아옴 (돌아가기)
			rpageNo = (String) session.getAttribute("rpageNo");

			// 세션에 저장되어 있지 않은 경우
			if (rpageNo == null) {
				// 강제 1로 세팅 (첫 페이지)
				rpageNo = "1";
			}
		}
		
		// 문자열인 pageNo를 int형으로 변환
		int intPageNo = Integer.parseInt(rpageNo);
		// 세션에서 pageNo 저장 (되돌아가기)
		session.setAttribute("rpageNo", rpageNo);

		// Page 객체 생성
		int rowPagingTarget = bpService.getTotalRows(pid);
		Pager pager = new Pager(5, 5, rowPagingTarget, intPageNo);

		// Service에서 리뷰 목록 요청
		HashMap<String, Object> param = new HashMap<>();
		param.put("pager", pager);
		param.put("pid", pid);

		List<BoardProduct> reviewList = bpService.getReviewList(param);
		
		model.addAttribute("pager", pager);
		model.addAttribute("pid", pid);
		model.addAttribute("reviewList", reviewList);
		model.addAttribute("reviewCount", rowPagingTarget);
		
		return "boardProduct/reviewListForm";
	}

	// QnA 폼
	@GetMapping("/writeQnaForm")
	public String writeQnaForm() {
		return "boardProduct/writeQnaForm";
	}
}

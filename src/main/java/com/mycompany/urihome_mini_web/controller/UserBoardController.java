package com.mycompany.urihome_mini_web.controller;




import java.io.OutputStream;
import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mycompany.urihome_mini_web.dto.Board;
import com.mycompany.urihome_mini_web.dto.BoardProduct;
import com.mycompany.urihome_mini_web.dto.Pager;
import com.mycompany.urihome_mini_web.service.BoardService;
import com.mycompany.urihome_mini_web.service.UserBoardService;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/board")
public class UserBoardController {
	@Autowired
	public BoardService service;
	
	// 서비스 객체 주입
	@Autowired
	private UserBoardService userService;
	

	@RequestMapping("/notice")
	public String notice(String pageNo, Model model, HttpSession session) {
		if (pageNo == null) {
			pageNo = (String) session.getAttribute("pageNo");
			if (pageNo == null) {
				pageNo = "1";
			}
		}
		int intpageNo = Integer.parseInt(pageNo);
		session.setAttribute("pageNo", pageNo);

		int rowsPagingTarget = service.getTotalRows();
		Pager pager = new Pager(10, 10, rowsPagingTarget, intpageNo);
		List<Board> notice = service.getBoardList(pager);
		model.addAttribute("pager", pager);
		model.addAttribute("notice", notice);
		return "board/notice";

	}
	@GetMapping("/attachDownload")
	public void attachDownload(int bnumber, HttpServletResponse response) throws Exception {
		Board board = service.getBoard(bnumber);
		byte[] data = service.getAttachData(bnumber);
		response.setContentType(board.getBattachtype());
		String fileName = new String(board.getBattachoname().getBytes("UTF-8"), "ISO-8859-1");
		response.setHeader("content-disposition", "attachment; filename\"" + fileName + "\"");
		OutputStream os = response.getOutputStream();
		os.write(data);
		os.flush();
		os.close();
	}


	@GetMapping("/detailBoard")
	public String detailBoard(int bnumber, Model model) {
		Board board = service.getBoard(bnumber);
		Board ppage = service.getSelectByPrevBno(bnumber);
		Board npage = service.getSelectByNextBno(bnumber);
		model.addAttribute("board", board);
		model.addAttribute("npage", npage);
		model.addAttribute("ppage", ppage);
		return "board/detailBoard";
	}


	@RequestMapping("/FAQ")
	public String FAQboard() {
		return "board/FAQ";
	}

	@RequestMapping("/questionBoard")
	public String questionBoard() {
		return "board/questionBoard";
	}

	// 리뷰 폼
	@GetMapping("/writeReviewForm")
	public String writeReviewForm(String pid, Model model) {
		model.addAttribute("pid", pid);
		return "board/writeReviewForm";
	}
	 
	@PostMapping("/writeReview")
	public String writeReview(BoardProduct boardProduct, Authentication authentication) {
		// 로그인한 회원의 id 가져오기
		String mid = authentication.getName();
		log.info(boardProduct.getBptitle());
		
		// mid를 회원의 id로 설정
		boardProduct.setMid(mid);
		// 게시판을 review 타입으로 설정
		boardProduct.setBptype("review");
		
		// 요청 데이터 유효성 검사
//			log.info("original filename: "+boardProduct.getBpattach().getOriginalFilename());
//			log.info("file type: "+boardProduct.getBpattachtype());
		
		// 첨부 파일 유무
		if(boardProduct.getBpattach() != null && !boardProduct.getBpattach().isEmpty()) {
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
		userService.writeReview(boardProduct);
		// 목록으로 돌아감
		return "redirect:/product/product_detail";
	}
	
	@GetMapping("/reviewList")
	public String reviewList(String pageNo, Model model, HttpSession session) {
		// pageNo를 받지 못했을 경우 (처음 접근)
		if(pageNo == null) {
			// 세션에 pageNo가 있는지 확인하고 String으로 받아옴 (돌아가기)
			pageNo = (String) session.getAttribute("pageNo");
			
			// 세션에 저장되어 있지 않은 경우
			if(pageNo == null) {
				// 강제 1로 세팅 (첫 페이지)
				pageNo = "1";
			}
		}
		
		// 문자열인 pageNo를 int형으로 변환
		int intPageNo = Integer.parseInt(pageNo);
		// 세션에서 pageNo 저장 (되돌아가기)
		session.setAttribute("pageNo", pageNo);
		
		// Page 객체 생성
		int rowPagingTaget = service.getTotalRows();
		Pager pager = new Pager(5, 5, rowPagingTaget, intPageNo);
		
		//Service에서 리뷰 목록 요청
		List<BoardProduct> reviewList = userService.getReviewList(pager);

		for(BoardProduct boardProduct : reviewList) {
			System.out.println("12345" + boardProduct.getBpnumber());
		}
		
		System.out.println(reviewList);
		
		// jsp에서 사용할 수 있도록 설정
		
		model.addAttribute("pager", pager);
		model.addAttribute("reviewList", reviewList);
		return "/product/product_detail";
	}
	
	// QnA 폼
	@GetMapping("/writeQnaForm")
	public String writeQnaForm() {
		return "board/writeQnaForm";
	}


}

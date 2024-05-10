package com.mycompany.urihome_mini_web.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.mycompany.urihome_mini_web.dao.BoardProductDao;
import com.mycompany.urihome_mini_web.dto.BoardProduct;
import com.mycompany.urihome_mini_web.dto.Pager;

@Service
public class UserBoardService {
	// 이름으로 bean 지정
	@Resource
	private BoardProductDao boardProductDao;
	
	public void writeReview(BoardProduct boardProduct) {
		int rowNum = boardProductDao.insert(boardProduct);
	}
	
	// 페이지 가져오기
	public List<BoardProduct> getReviewList(Pager pager) {
		List<BoardProduct> reviewList = boardProductDao.selectByPage(pager);
		return reviewList;
	}

	// 전체 행수를 가져옴
	public int getTotalRows() {
		int totalRows = boardProductDao.count();
		return totalRows;
	}

	// 작성한 리뷰를 가져옴
	public BoardProduct getReview(int bpnumber) {
		BoardProduct review = boardProductDao.selectByBpno(bpnumber);
		return review;
	}
	
}

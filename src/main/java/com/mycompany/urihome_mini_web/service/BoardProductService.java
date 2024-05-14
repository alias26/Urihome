package com.mycompany.urihome_mini_web.service;

import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.mycompany.urihome_mini_web.dao.BoardProductDao;
import com.mycompany.urihome_mini_web.dto.BoardProduct;

@Service
public class BoardProductService {
	// 이름으로 bean 지정
	@Resource
	private BoardProductDao boardProductDao;
	
	public void writeReview(BoardProduct boardProduct) {
		int rowNum = boardProductDao.insert(boardProduct);
	}
	
	// 페이지 가져오기
	public List<BoardProduct> getReviewList(HashMap<String, Object> param) {
		List<BoardProduct> reviewList = boardProductDao.selectByPage(param);
		return reviewList;
	}

	// 전체 행수를 가져옴
	public int getTotalRows(String pid) {
		int totalRows = boardProductDao.count(pid);
		return totalRows;
	}

	// 작성한 리뷰를 가져옴
	public BoardProduct getReview(int bpnumber) {
		BoardProduct review = boardProductDao.selectByBpno(bpnumber);
		return review;
	}

	public void removeReview(int bpnumber) {
		int rowReview = boardProductDao.deleteByBpno(bpnumber);
	}
	
}

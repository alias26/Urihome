package com.mycompany.urihome_mini_web.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mycompany.urihome_mini_web.dao.BoardDao;
import com.mycompany.urihome_mini_web.dto.Board;
import com.mycompany.urihome_mini_web.dto.Pager;

@Service
public class BoardService {
	@Autowired
	private BoardDao boardDao;

	public void writeBoard(Board board) {
		int rowNum = boardDao.insert(board);
	}
	public List<Board> getBoardList(Pager pager){
		List<Board> notice = boardDao.selectByPage(pager);
		return notice;
	}
	public int getTotalRows() {
		int totalRows=boardDao.count();
		return totalRows;
	}
	public Board getBoard(int bnumber) {
		Board board = boardDao.selectByBno();
		return board;
	}
	public byte[] getAttachData(int bnumber) {
		Board board = boardDao.selectAttachData();
		return board.getBattachdata();
	}
	public void updateBoard(Board board) {
		int rowNum= boardDao.update(board);
		
	}
	
	

	
	
}

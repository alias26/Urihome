package com.mycompany.urihome_mini_web.dao;


import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.mycompany.urihome_mini_web.dto.Board;
import com.mycompany.urihome_mini_web.dto.Pager;

@Mapper
public interface BoardDao {
	public int insert(Board board);
	public List<Board> selectByPage(Pager pager);
	public int count();
	public Board selectByBno();
	public Board selectAttachData();
	public int update(Board board);

}

package com.mycompany.urihome_mini_web.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.mycompany.urihome_mini_web.dto.BoardProduct;
import com.mycompany.urihome_mini_web.dto.Pager;

@Mapper
public interface BoardProductDao {
	
	public int insert(BoardProduct boardProduct);
	public List<BoardProduct> selectByPage(Pager pager);
	public int count();
	public BoardProduct selectByBpno(int bpnumber);
	
}

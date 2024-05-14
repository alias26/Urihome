package com.mycompany.urihome_mini_web.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.mycompany.urihome_mini_web.dto.BoardProduct;
import com.mycompany.urihome_mini_web.dto.Pager;

@Mapper
public interface BoardProductDao {
	
	public int insert(BoardProduct boardProduct);
	public List<BoardProduct> selectByPage(HashMap<String, Object> param);
	public int count(String pid);
	public BoardProduct selectByBpno(int bpnumber);
	public int deleteByBpno(int bpnumber);
	
}

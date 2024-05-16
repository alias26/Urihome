package com.mycompany.urihome_mini_web.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.mycompany.urihome_mini_web.dto.Cart;


@Mapper
public interface CartDao {

	public List<Cart> selectCartListByMid(String mid);
}

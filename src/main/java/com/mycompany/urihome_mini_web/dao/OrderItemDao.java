package com.mycompany.urihome_mini_web.dao;

import java.util.HashMap;

import org.apache.ibatis.annotations.Mapper;

import com.mycompany.urihome_mini_web.dto.Cart;

@Mapper
public interface OrderItemDao {
	int insertPayItems(HashMap<String, Object> param);
}

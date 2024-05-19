package com.mycompany.urihome_mini_web.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.mycompany.urihome_mini_web.dto.MyPageOrderHistory;

@Mapper
public interface MyPageOrderHistoryDao {
	public List<MyPageOrderHistory> getOrderProductHistory(String mid);
}

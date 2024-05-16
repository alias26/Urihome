
package com.mycompany.urihome_mini_web.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.mycompany.urihome_mini_web.dto.OrderItemList;

@Mapper
public interface OrdererDao {
	public List<OrderItemList> getOrderItem(String mid);
	
}

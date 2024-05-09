package com.mycompany.urihome_mini_web.dao;

import org.apache.ibatis.annotations.Mapper;

import com.mycompany.urihome_mini_web.dto.ProductCategory;

@Mapper
public interface ProductCategoryDao {
	public int insert(ProductCategory category);
	public int deleteByPid(String pid);
	public int update(ProductCategory category);
	public ProductCategory getProductCategoryByPid(String pid);
}

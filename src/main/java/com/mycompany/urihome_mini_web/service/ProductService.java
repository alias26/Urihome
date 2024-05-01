package com.mycompany.urihome_mini_web.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.mycompany.urihome_mini_web.dao.ProductDao;
import com.mycompany.urihome_mini_web.dto.Pager;
import com.mycompany.urihome_mini_web.dto.Product;

import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
public class ProductService {
	@Resource
	private ProductDao productDao;
	
	public int getTotalRows() {
		int totalRows = productDao.count();
		return totalRows;
	}

	public List<Product> getProductList(Pager pager) {
		return productDao.selectByPage(pager);
	}

	public void addProduct(Product product) {
		int rowNum = productDao.insert(product);
	}

	public Product getProduct(String pid) {
		Product product = productDao.selectByPid(pid);
		return product;
	}

	public void updateProduct(Product product) {
		int rowNum = productDao.update(product);
	}

	public void removeProduct(String pid) {
		int rowNum = productDao.deleteByPid(pid);
		
	}

}

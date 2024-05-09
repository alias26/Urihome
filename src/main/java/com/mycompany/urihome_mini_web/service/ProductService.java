package com.mycompany.urihome_mini_web.service;

import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mycompany.urihome_mini_web.dao.PimageDao;
import com.mycompany.urihome_mini_web.dao.ProductCategoryDao;
import com.mycompany.urihome_mini_web.dao.ProductDao;
import com.mycompany.urihome_mini_web.dto.Pager;
import com.mycompany.urihome_mini_web.dto.Pimage;
import com.mycompany.urihome_mini_web.dto.Product;
import com.mycompany.urihome_mini_web.dto.ProductCategory;

import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
public class ProductService {
	@Autowired
	private ProductDao productDao;

	@Autowired
	private PimageDao pimageDao;
	
	@Autowired
	private ProductCategoryDao categoryDao;

	public int getTotalRows() {
		int totalRows = productDao.count();
		return totalRows;
	}

	public List<Product> getProductList(Pager pager) {
		return productDao.selectByPage(pager);
	}

	public void addProduct(Product product, ProductCategory category, List<Pimage> pImages) {
		int productRowNum = productDao.insert(product);
		int categoryRowNum = categoryDao.insert(category);
		Iterator<Pimage> iter = pImages.iterator();
		while (iter.hasNext()) {
			pimageDao.insert(iter.next());
		}
	}

	public Product getProduct(String pid) {
		Product product = productDao.selectByPid(pid);
		return product;
	}

	public void updateProduct(Product product, ProductCategory category, List<Pimage> pImages) {
		int productRowNum = productDao.update(product);
		int categoryRowNum = categoryDao.update(category);
		Iterator<Pimage> iter = pImages.iterator();

		while (iter.hasNext()) {
			pimageDao.insert(iter.next());
		}
	}

	public void removeProduct(String pid) {
		int pimageRowNum = pimageDao.deleteByPid(pid);
		int pCategoryRowNum = categoryDao.deleteByPid(pid);
		int productRowNum = productDao.deleteByPid(pid);

	}

	public Pimage getPimage(HashMap<String, String> param) {
		Pimage pimage = pimageDao.selectByPidAndIndex(param);
		return pimage;
	}

	public byte[] getProductImageData(HashMap<String, String> param) {
		Pimage pimage = pimageDao.selectProductImageData(param);
		return pimage.getPimageData();
	}

	public int getProductImageCount(HashMap<String, String> param) {
		return pimageDao.count(param);
	}
	
	public void deleteProductImageData(String pid, List<Integer> thumbList, List<Integer> bodyList) {
		HashMap<String, Object> param = new HashMap<>();
		param.put("pid", pid);
		if (thumbList.size() > 0) {
			param.put("pthumbBodyType", "thumb");
			param.put("indexList", thumbList);
			pimageDao.deleteByPindex(param);
		}
		if (bodyList.size() > 0) {
			param.put("pthumbBodyType", "body");
			param.put("indexList", bodyList);
			pimageDao.deleteByPindex(param);
		}
	}

	public ProductCategory getProductCategory(String pid) {
		ProductCategory category = categoryDao.getProductCategoryByPid(pid);
		return category;
	}

}

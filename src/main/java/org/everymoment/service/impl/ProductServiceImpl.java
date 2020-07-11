package org.everymoment.service.impl;

import java.util.List;

import org.everymoment.dao.ProductDao;
import org.everymoment.pojo.Product;
import org.everymoment.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
@Service
public class ProductServiceImpl implements ProductService {
	@Autowired
	private ProductDao productDao;

	public List<Product> getProductList() {
		return productDao.getProductList();
	}

	public Product findById(int pid) {
		return productDao.findById(pid);
	}

	

}

package org.everymoment.service;

import java.util.List;


import org.everymoment.pojo.Product;

public interface ProductService {
	
    List<Product> getProductList();
    
    Product findById(int Pid);
    
	
	
}

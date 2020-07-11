package org.everymoment.service.impl;

import java.util.List;

import org.everymoment.dao.BrandMapper;
import org.everymoment.pojo.Brand;
import org.everymoment.service.BrandService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
@Service
public class BrandServiceImpl implements BrandService{
	
	@Autowired
	private BrandMapper brandMapper;
	
	public List<Brand> getAllBrand() {
		return brandMapper.selectAll();
	}

}

package org.everymoment.controller;

import java.util.List;

import org.everymoment.pojo.Brand;
import org.everymoment.service.BrandService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Controller
public class BrandController {
	@Autowired
	private BrandService brandService;
	
	@RequestMapping(value = "/getBrandList",method = RequestMethod.GET)
	public String getBrandList(
			@RequestParam(name="currpage",defaultValue="1") int currpage,Model model) {
			PageHelper.startPage(currpage,4);
			List<Brand> list = brandService.getAllBrand();
			PageInfo pageInfo = new PageInfo(list,4);
			model.addAttribute(pageInfo);
			return "brands";		
	}
}

package org.everymoment.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.everymoment.pojo.Product;
import org.everymoment.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;


@Controller
public class ProductController {
	@Autowired
	private ProductService productService;
	
	//��ѯ������Ʒ�����men.jsp��
	@RequestMapping(value = "/getProducts",method = RequestMethod.GET)
	public String getProducts(@RequestParam(name="currpage",defaultValue="1") 
	int currpage,Model model,HttpSession session) {
		PageHelper.startPage(currpage, 6);
		List<Product> list = productService.getProductList();
		PageInfo pageInfo = new PageInfo(list,6);
		model.addAttribute(pageInfo);
		return "men";
	}

	//����id������Ʒ
	@RequestMapping(value = "/findById",method = RequestMethod.GET)
	public Object findById(@RequestParam("pid") int Pid,Model model) {
		Product product = productService.findById(Pid);
		model.addAttribute(product);
		return "single";
	}
	
}

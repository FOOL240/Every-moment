package cn.edu.nuc.shop.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import cn.edu.nuc.shop.entiry.Order;
import cn.edu.nuc.shop.service.interfaces.OrderService;

@Controller
public class OrderController {
	@Autowired
	private OrderService orService;
	
	@RequestMapping(value="/getAllOrder",method=RequestMethod.GET)
	public Object getAllOrder(@RequestParam(name="currpage",defaultValue="1") int currpage,Model model) {
		PageHelper.startPage(currpage,5);
		List<Order> list =orService.getAllOrder();
		PageInfo pageInfo = new PageInfo(list,5);
		model.addAttribute(pageInfo);
		return "order/ord";
	}
	
}

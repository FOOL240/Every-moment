package org.everymoment.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;
import org.everymoment.pojo.Checkout;
import org.everymoment.pojo.Order;
import org.everymoment.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;


@Controller
public class OrderController {
	@Autowired
	private OrderService orderService;

	/*
	 * @RequestMapping(value = "/getfindAll",method = RequestMethod.GET) public
	 * String getfindAll(@Param("oid") int oid, HttpSession session) { List<Order>
	 * list=(List<Order>) orderService.selectByPrimaryKey(oid); if(list != null) {
	 * session.setAttribute("list", list); } return "checkoutaddress"; }
	 */
	@RequestMapping(value = "addAddress",method = RequestMethod.POST)
	@ResponseBody
	public Object addAddress(Order order,ModelAndView model) {
		Map<String, Integer> map = new HashMap<String, Integer>();
		boolean isOk=orderService.insert(order); 
		model.setViewName("index");
		return model;
	}

	/*
	 * @RequestMapping(value = "addCheckout",method = RequestMethod.GET) public
	 * String addCheckout() {
	 * 
	 * return "checkoutaddress"; }
	 */
	@RequestMapping(value = "/getAll",method = RequestMethod.GET)
	public String getAll(@RequestParam(name="currpage",defaultValue="1") int currpage,Model model) {
		PageHelper.startPage(currpage, 5);
		List<Order> list = orderService.getAll();
        PageInfo pageInfo = new PageInfo(list,5);
        model.addAttribute(pageInfo);
        return "checkoutaddress";
	}
	
}

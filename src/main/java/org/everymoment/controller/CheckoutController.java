package org.everymoment.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.everymoment.pojo.Checkout;
import org.everymoment.pojo.Product;
import org.everymoment.service.CheckoutService;
import org.everymoment.service.ProductService;
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

@Controller
public class CheckoutController {
	@Autowired
	private CheckoutService checkoutService;
	@Autowired
	private ProductService productService;
	@RequestMapping(value = "/getCheckoutList",method = RequestMethod.GET)
	public String getCheckoutList( @RequestParam(name="currpage",defaultValue="1") int currpage,Model model
			,HttpSession session) {
		PageHelper.startPage(currpage, 2);
        List<Checkout> list = checkoutService.selectAll();
        PageInfo pageInfo = new PageInfo(list,2);
        model.addAttribute(pageInfo);
        session.setAttribute("list", list);
        return "checkout";
	}
	@RequestMapping(value="/deleteCheckout",method=RequestMethod.GET)
	@ResponseBody
	public Object deleteCheckout(@RequestParam("pid") int pid) {
		Map<String, Integer> map = new HashMap<String, Integer>();
		boolean isOk = checkoutService.deleteByPrimaryKey(pid);
		if(isOk) {
			map.put("result", 1);
		}else {
			map.put("result", 0);
		}
		return JSON.toJSONString(map);
	}
	
	  @RequestMapping(value = "/addCheckout",method = RequestMethod.GET) 
	  @ResponseBody
	  public Object addCheckout(@RequestParam("pid") int Pid,Model model) {
		  //鍒涘缓涓�涓猰ap瀵硅薄
		  Map<String, String> map = new HashMap<String, String>();
		  System.out.println(Pid);
		  //鑾峰彇娣诲姞鍒版暟鎹簱鐨勫晢鍝佺殑鏁版嵁
		  Product product = productService.findById(Pid);
		  //鍒涘缓涓�涓喘鐗╄溅瀹炰綋
		  Checkout checkout=new Checkout();
		  checkout.setPname(product.getPname());
		  checkout.setPpicture(product.getPpicture());
		  checkout.setPprice(product.getPprice());
		  checkout.setPsize(34);
		  checkout.setPnumber(1);
		  checkout.setOrderid(1);
		  checkout.setStatus(1);
		  //娣诲姞鍒拌喘鐗╄溅
		  if(checkoutService.insert(checkout)) {
			  map.put("result", "true");
		  }else {
			  map.put("result", "false");
		  }
		  return  JSON.toJSONString(map); 
		  }
	 
}

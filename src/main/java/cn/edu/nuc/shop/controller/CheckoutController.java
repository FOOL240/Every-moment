package cn.edu.nuc.shop.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import cn.edu.nuc.shop.entiry.Checkout;
import cn.edu.nuc.shop.service.interfaces.CheckoutService;

@Controller
public class CheckoutController {
	@Autowired 
	private CheckoutService checkoutService;
	@RequestMapping(value="/updateUser", method=RequestMethod.GET)
    public String updateUser(@RequestParam("pid") int pid ,ModelMap model) {
     Checkout checkout1=checkoutService.findByPid(pid); 
     Checkout checkout=new Checkout();
     int status = 0;
     if(checkout1.getStatus()==1) {
    	  status=2;
     }else if(checkout1.getStatus()==2){
    	  status=1;
     }
     checkout.setStatus(status);
	 if(checkoutService.updateByPrimaryKey(pid,status)) {
		 return "redirect:/getAllOrder";
	 }else {
		 System.out.println("cuowu!!!!!!!!!!!!!!!!!!");
		 return "order/ord";
	 }
 }
}

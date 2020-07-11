package cn.edu.nuc.shop.service.interfaces;


import cn.edu.nuc.shop.entiry.Checkout;


public interface CheckoutService {
	Checkout findByPid(int pid);
	
	boolean updateByPrimaryKey(int pid, int status);


}

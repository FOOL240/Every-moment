package org.everymoment.service;

import java.util.List;

import org.everymoment.pojo.Checkout;
import org.everymoment.pojo.Product;

public interface CheckoutService {
	   //根据id进行删除
		boolean deleteByPrimaryKey(int pid);
		//增加
		boolean insert(Checkout record);
	    //根据id查询数据
	    Checkout selectByPrimaryKey(int pid);
	    //展示购物车信息
	    List<Checkout> selectAll();
	    //修改购物车信息
	    boolean updateByPrimaryKey(Checkout record);
	    //通过pid值将要购买的商品数据添加到购物车中
	    Checkout addCheckout(Checkout checkout);
}

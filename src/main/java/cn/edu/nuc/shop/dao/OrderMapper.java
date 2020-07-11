package cn.edu.nuc.shop.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import cn.edu.nuc.shop.entiry.Order;
@Repository
public interface OrderMapper {
	//获得订单信息的方法

	List<Order> getAllOrder();
	
}

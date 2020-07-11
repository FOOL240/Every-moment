package cn.edu.nuc.shop.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.edu.nuc.shop.dao.OrderMapper;
import cn.edu.nuc.shop.entiry.Order;
import cn.edu.nuc.shop.service.interfaces.OrderService;
@Service
public class OrderServiceImpl implements OrderService {
	@Autowired
	private OrderMapper orderMapper;
	public List<Order> getAllOrder() {
		// TODO Auto-generated method stub
		return orderMapper.getAllOrder();
	}

}

package org.everymoment.service.impl;

import java.util.List;

import org.everymoment.dao.OrderMapper;
import org.everymoment.pojo.Order;
import org.everymoment.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
@Service
public class OrderServiceImpl implements OrderService {
	@Autowired
	private OrderMapper ordermapper;
	public boolean deleteByPrimaryKey(int oid) {
		int result=ordermapper.deleteByPrimaryKey(oid);
		if(result>0) {
			return true;
		}else {
			return false;
		}
	}

	public boolean insert(Order record) {
		int result=ordermapper.insert(record);
		if(result>0) {
			return true;
		}else {
			return false;
		}
	}

	public Order selectByPrimaryKey(int oid) {
		// TODO Auto-generated method stub
		return ordermapper.selectByPrimaryKey(oid);
	}


	public boolean updateByPrimaryKey(Order record) {
		int result=ordermapper.updateByPrimaryKey(record);
		if(result>0) {
			return true;
		}else {
			return false;
		}
	}

	public List<Order> getAll() {
		
		return ordermapper.getAll();
	}

}

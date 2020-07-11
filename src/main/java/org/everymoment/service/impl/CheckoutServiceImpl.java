package org.everymoment.service.impl;

import java.util.List;

import org.everymoment.dao.CheckoutMapper;
import org.everymoment.pojo.Checkout;
import org.everymoment.pojo.Product;
import org.everymoment.service.CheckoutService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
@Service
public class CheckoutServiceImpl implements CheckoutService {
	@Autowired
	private CheckoutMapper checkoutMapper;

	public boolean deleteByPrimaryKey(int pid) {
		int result=checkoutMapper.deleteByPrimaryKey(pid);
		if (result > 0) {
            return true;
        }else {
            return false;
        }
	}

	public boolean insert(Checkout record) {
		int result = checkoutMapper.insert(record);
		if (result > 0) {
            return true;
        }else {
            return false;
        }
	}

	public Checkout selectByPrimaryKey(int pid) {
		// TODO Auto-generated method stub
		return checkoutMapper.selectByPrimaryKey(pid);
	}

	public List<Checkout> selectAll() {
		// TODO Auto-generated method stub
		return checkoutMapper.selectAll();
	}

	public boolean updateByPrimaryKey(Checkout record) {
		int result=checkoutMapper.updateByPrimaryKey(record);
		if (result > 0) {
            return true;
        }else {
            return false;
        }
	}

	public Checkout addCheckout(Checkout checkout) {
		return checkoutMapper.addCheckout(checkout);
	}
	

}

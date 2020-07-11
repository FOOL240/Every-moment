package cn.edu.nuc.shop.service.impl;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.edu.nuc.shop.dao.CheckoutMapper;
import cn.edu.nuc.shop.entiry.Checkout;
import cn.edu.nuc.shop.service.interfaces.CheckoutService;
@Service
public class CheckoutServiceImpl implements CheckoutService {
	@Autowired
	private CheckoutMapper checkoutMapper;
	//根据id查询
	public Checkout findByPid(int pid) {
		return checkoutMapper.findByPid(pid);

	}

	public boolean updateByPrimaryKey(int pid, int status) {
		/*
															 * Checkout checkout=checkoutMapper.findByPid(pid);
															 * checkout.setPid(pid); checkout.setStatus(status);
															 */
		if(checkoutMapper.updateByPrimaryKey(pid,status)>0) {
			return true;
		}else {
		   return false;
		}
	
	}

}

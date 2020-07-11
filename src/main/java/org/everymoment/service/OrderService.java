package org.everymoment.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.everymoment.pojo.Order;

public interface OrderService {
    
	boolean deleteByPrimaryKey(int oid);
    boolean insert(Order record);
    Order selectByPrimaryKey(int oid);
    boolean updateByPrimaryKey(Order record);
    List<Order> getAll();
}

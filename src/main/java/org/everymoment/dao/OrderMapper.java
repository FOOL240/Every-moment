package org.everymoment.dao;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.everymoment.pojo.Order;

public interface OrderMapper {
    int deleteByPrimaryKey(Integer oid);
    @Insert("insert into `order`(sname,sphone,saddress,ordernum) values(#{sname},#{sphone},#{saddress},#{ordernum})")
    int insert(Order record);

    Order selectByPrimaryKey(Integer oid);

	/*
	 * @Select("SELECT u.*,r.* FROM `order` r INNER JOIN checkout u ON(r.oid=u.orderid) WHERE r.`oid`=#{oid}"
	 * )
	 */
    List<Order> getAll();
    

    int updateByPrimaryKey(Order record);
}
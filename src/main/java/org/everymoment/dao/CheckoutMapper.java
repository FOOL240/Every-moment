package org.everymoment.dao;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.everymoment.pojo.Checkout;
import org.everymoment.pojo.Product;
import org.springframework.stereotype.Repository;
@Repository
public interface CheckoutMapper {
    int deleteByPrimaryKey(Integer pid);

    int insert(Checkout record);

    Checkout selectByPrimaryKey(Integer pid);

    List<Checkout> selectAll();

    int updateByPrimaryKey(Checkout record);

	/*
	 * @Insert("INSERT INTO checkout\r\n" + "		(pname,Ppicture,pprice)\r\n" +
	 * "		SELECT pname,Images,Price\r\n" +
	 * "		FROM product WHERE pid=#{pid}")
	 */
    Checkout addCheckout(Checkout checkout);
}
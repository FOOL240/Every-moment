package cn.edu.nuc.shop.dao;



import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import cn.edu.nuc.shop.entiry.Checkout;

public interface CheckoutMapper {
	@Select("select * from checkout where pid=#{pid}")
	Checkout findByPid(int pid);
	int updateByPrimaryKey(@Param("pid")int pid,@Param("status")int status);
}

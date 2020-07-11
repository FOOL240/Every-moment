package org.everymoment.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.everymoment.pojo.Product;
import org.springframework.stereotype.Repository;
@Repository
public interface ProductDao {
	@Select("select * from product")
    List<Product> getProductList();
	@Select("select * from product where pid=#{Pid}")
	Product findById(@Param("Pid") int Pid);
	
}
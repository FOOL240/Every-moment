package org.everymoment.dao;


import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.everymoment.pojo.User;
import org.springframework.stereotype.Repository;

@Repository
public interface UserMapper {
	//注册账号
	boolean insert(User user);
	//验证邮箱和密码是否正确
	@Select("select * from users where Email=#{email} and Password=#{password}")
	User login(@Param("email") String Email,@Param("password") String Password);
	//查询用户表信息
	@Select("select * from users\r\n" + 
			"		where  email=#{email}\r\n" + 
			"")
	User findByName(String email);
	//修改用户密码
	int UpdateUser(User user);
	
}

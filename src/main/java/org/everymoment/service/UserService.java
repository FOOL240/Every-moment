package org.everymoment.service;

import org.everymoment.pojo.User;

public interface UserService {
	boolean add(User user);
	
	User login(String Email,String Password);
	//获取用户信息 
	boolean isUserExist(String email);
	
	//获取用户信息
	void modifyPasswordByUsername(String uname, String password);
}

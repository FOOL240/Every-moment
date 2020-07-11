package org.everymoment.service.impl;


import org.everymoment.dao.UserMapper;
import org.everymoment.pojo.User;
import org.everymoment.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService{
	@Autowired
	private UserMapper userMapper;
	
	public User login(String Email, String Password) {
		return userMapper.login(Email, Password);
	}
	public boolean add(User user) {
		return userMapper.insert(user);
	}
	public void modifyPasswordByUsername(String email, String password) {
		User user = userMapper.findByName(email);
		user.setEmail(email);
		user.setPassword(password);
		userMapper.UpdateUser(user);
	}
	//判断用户是否存在
	public boolean isUserExist(String email) {
		if (userMapper.findByName(email) == null) {
			return false;
		} else {
			return true;
		}

	}

}

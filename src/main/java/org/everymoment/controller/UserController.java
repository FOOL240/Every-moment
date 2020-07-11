package org.everymoment.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.everymoment.pojo.User;
import org.everymoment.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.alibaba.fastjson.JSON;


@Controller
public class UserController {
	@Autowired
	private UserService userService;
	
	@RequestMapping(value="/doLogin",method=RequestMethod.GET)
	public String doLogin() {
		return "login";
	}
	
	@RequestMapping(value = "/login",method = RequestMethod.POST)
	public String login(@RequestParam("email") String Email,
			@RequestParam("password") String Password,
			HttpSession session) {
			User user = userService.login(Email, Password);
			if(user == null) {
				return"login";
			}
			else {
				session.setAttribute("loginUser", user);
				return "index";	
			}
	}
	
	@RequestMapping(value = "/addUser",method = RequestMethod.POST)
	public Object addUser(String uname,String email,String password) {
		User user = new User();
		user.setUname(uname);
		user.setEmail(email);
		user.setPassword(password);
		boolean isOk = userService.add(user);
		if(isOk) {
			return "login";
		}
		return "register";
	}
	//修改密码，通过验证邮箱修改密码
	 @RequestMapping(value="/updateUser", method=RequestMethod.POST)
	    public String updateUser(@RequestParam("uname") String uname ,@RequestParam("password") String password,@RequestParam("email") String email,ModelMap model) {
	     //判断数据库中是否有该邮箱
		 if(!userService.isUserExist(email)) {
	        	model.addAttribute("msg", "用户不存在！");
	        }else {
	        	userService.modifyPasswordByUsername(email, password);
	        	model.addAttribute("msg","密码修改成功");
	        }
	        return "login";
	    }
}

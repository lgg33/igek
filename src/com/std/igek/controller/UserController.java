package com.std.igek.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.std.igek.entity.User;
import com.std.igek.service.UserService;

@Controller
public class UserController {
	
	//连接服务层
	@Resource
	private UserService service;
		
	//登录
	@RequestMapping("load")
	public String dologinUser(HttpServletRequest request,String uname) {	
		String password = request.getParameter("psw");
		//System.out.println(password);
		User user = service.findUserByName(uname);
		
		if(user!=null) {
			if(password.equals(user.getPsw())) {
				 request.getSession().setAttribute("user", user);
	              //request.setAttribute("user", user);
		          return "index";  
	         }else {
	        	 String  tip = "密码错误，请重新输入！";
	        	 request.setAttribute(tip, tip);
		          return "load";
	        }
		}
		 else {
        	 String  tip = "密码错误，请重新输入！";
        	 request.setAttribute(tip, tip);
	          return "load";
        }
	}
	//注册
	@RequestMapping("regist")
	public String doregist(HttpServletRequest request,User user) {
		service.doregister(user);
		return  "load";
	}
	//更新
	@RequestMapping("updateUser")
	public String  doupdateUser(HttpServletRequest request,User user) {
		System.out.println(user.getUid());
		service.doupdateUser(user);
		request.getSession().removeAttribute("user");
		return "load";
				
	}
		
	//校验用户名
	@RequestMapping("jiaoyanuser")
	@ResponseBody
	public int jiaoYanUser(String name) {
		User user=service.findUserByName(name);
		if(null!=user) {
			return 1;
		}else {
			return 0;
		}
	}
	
	//退出系统
	@RequestMapping("tuichu")
	public String tuichu(HttpServletRequest req) {
		req.getSession().removeAttribute("user");
		return "index";
	}
	
}

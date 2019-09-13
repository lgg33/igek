package com.std.igek.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.std.igek.dao.UserDao;
import com.std.igek.entity.User;
import com.std.igek.service.UserService;

@Service
public class UserServiceImpl implements UserService{
	
	@Resource(name="userDao") 
	UserDao dao;

	@Override
	public User findUserByName(String username) {
		User user = dao.findUserbyName(username);
		return user;
	}

	@Override
	public void doupdateUser(User user) {
		dao.doupdateUser(user);
	}

	@Override
	public void doregister(User user) {
		dao.doregister(user);
	}
	
	@Override
	public User dofindUserById(int uid) {
		User user = dao.dofindUserById(uid);
		return user;
	}

	@Override
	public User findUserByNamePass(String uname, String psw) {
		// TODO Auto-generated method stub
		return dao.findUserByNamePass(uname,psw);
	}
	
	
	
	
}

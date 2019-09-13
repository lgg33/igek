package com.std.igek.service;

import org.springframework.stereotype.Service;

import com.std.igek.entity.User;


@Service
public interface UserService {
	
	public User findUserByName(String username);

	public void doupdateUser(User user);

	public void doregister(User user);
	
	User dofindUserById(int uid);

	public User findUserByNamePass(String uname, String psw);
	
}

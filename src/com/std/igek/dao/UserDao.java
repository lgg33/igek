package com.std.igek.dao;

import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import com.std.igek.entity.User;


@Repository("userDao")
public interface UserDao {

	User findUserbyName(String username);

	void doupdateUser(User user);

	void doregister(User user);

	User dofindUserById(int uid);

	@Select("select * from user where uname=#{uname} and psw=#{psw}")
	User findUserByNamePass(String uname, String psw);
	
	
	
	
}

package com.std.igek.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.std.igek.entity.Order;

@Service
public interface OrderService {

	void doaddOrder(Order order);

	List<Order> dofindOrder(int uid);

	void doaddMyOrder(int uid, int pid);

	void deleteOrder(Integer oid);

	int queren(Integer oid,String address);

	List<Order> dofindOrder1(int uid);

	List<Order> dofindOrder2(int uid);

	
	
	
	
	
}

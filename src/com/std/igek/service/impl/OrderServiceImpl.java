package com.std.igek.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.std.igek.dao.OrderDao;
import com.std.igek.entity.Order;
import com.std.igek.service.OrderService;

@Service
public class OrderServiceImpl  implements OrderService {
	
	@Resource(name="orderDao")
	OrderDao  dao;

	@Override
	public void doaddOrder(Order order) {
		dao.doaddOrder(order);
	}

	@Override
	public List<Order> dofindOrder(int uid) {
		List<Order> orders =dao.dofindOrder(uid);
		return orders;
	}

	@Override
	public void doaddMyOrder(int uid, int pid) {
		dao.doaddMyOrder(uid,pid);
	}

	@Override
	public void deleteOrder(Integer oid) {
		dao.deleteOrder(oid);
	}

	@Override
	public int queren(Integer oid,String address) {
		// TODO Auto-generated method stub
		//System.out.println(oid);
		return dao.queren(oid,address);
	}

	@Override
	public List<Order> dofindOrder1(int uid) {
		// TODO Auto-generated method stub
		return dao.weizhifu(uid);
	}

	@Override
	public List<Order> dofindOrder2(int uid) {
		// TODO Auto-generated method stub
		return dao.yizhifu(uid);
	}

	

	
	
	
	
}

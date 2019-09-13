package com.std.igek.service.impl;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.std.igek.dao.CartDao;
import com.std.igek.entity.Cart;
import com.std.igek.entity.CartBean;
import com.std.igek.service.CartService;

@Service
public class CartServiceImpl  implements CartService{
	
	@Resource(name="cartDao")
	CartDao  dao;

	@Override
	public void doaddCart(Cart cart) {
		dao.doaddCart(cart);
	}

	@Override
	public List<Cart> dofindmyCart(int uid) {
		List<Cart> cartlist = new ArrayList<>();
		 cartlist=  dao.dofindMyCart(uid);
		return cartlist;
	}

	@Override
	public void dodeleCartGood(int pid, int uid) {
		dao.dodeleteCartGood(pid,uid);
	}

	@Override
	public void deleteMyCart(int uid) {
		dao.deleteMyCart(uid);
	}

	@Override
	public Cart dofindCart(int uid, int pid) {
		Cart cart  = dao.dofindCart(uid,pid);
		return cart;
	}

	@Override
	public void doupdateCart(CartBean cartbean) {
		dao.doupdateCart(cartbean);
	}

	@Override
	public Cart dofindCartById(int cid) {
		Cart cart  = dao.dofindCartById(cid);
		return cart;
	}

	@Override
	public void delCartByOrder(Cart cart) {
		// TODO Auto-generated method stub
		dao.delCartByOrder(cart);
	}

	
}

package com.std.igek.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.std.igek.entity.Cart;
import com.std.igek.entity.CartBean;
import com.std.igek.entity.User;

@Service
public interface CartService {

	List<Cart> dofindmyCart( int uid);

	void doaddCart(Cart cart);

	void dodeleCartGood(int pid, int uid);

	void deleteMyCart(int uid);

	Cart  dofindCart(int uid, int pid);

	void doupdateCart(CartBean cartBean);

	Cart dofindCartById(int cid);

	void delCartByOrder(Cart cart);

	

	
	
}

package com.std.igek.dao;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.springframework.stereotype.Repository;

import com.std.igek.entity.Cart;
import com.std.igek.entity.CartBean;
import com.std.igek.entity.User;

@Repository("cartDao")
public interface CartDao {

	List<Cart> dofindMyCart(int uid);

	void doaddCart(Cart cart);

	void dodeleteCartGood(int pid, int uid);

	void deleteMyCart(int uid);

	Cart dofindCart(int uid, int pid);

	void doupdateCart(CartBean cartBean);

	Cart dofindCartById(int cid);

	User dofindUserById(int uid);

	@Delete("delete from cart where cid=#{cid}")
	void delCartByOrder(Cart cart);

	
	
	
}

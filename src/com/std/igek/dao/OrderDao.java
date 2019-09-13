package com.std.igek.dao;

import java.util.List;

import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import com.std.igek.entity.Order;

@Repository("orderDao")
public interface OrderDao {

	void doaddOrder(Order order);

	List<Order> dofindOrder(int uid);

	void doaddMyOrder(int uid, int pid);

	void deleteOrder(Integer oid);
	
	@Update("update orders set status=1,address=#{arg1} where oid=#{arg0}")
	int queren(Integer oid,String address);
	
	@Select("select * from orders where status=0 and uid=#{uid} order by otime desc")
	List<Order> weizhifu(int uid);

	@Select("select * from orders where status=1 and uid=#{uid} order by otime desc")
	List<Order> yizhifu(int uid);
	
	
	
	
	
}

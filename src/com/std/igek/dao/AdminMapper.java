package com.std.igek.dao;

import java.util.List;

import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.std.igek.entity.Admin;
import com.std.igek.entity.BaoBiao;
import com.std.igek.entity.Order;
import com.std.igek.entity.Table2;
import com.std.igek.entity.User;



public interface AdminMapper {
	@Select("select * from admin where name=#{name} and password=#{password}")
	public Admin select(Admin user);

	@Update("update admin set password=#{password} where id=#{id}")
	public int updatePw(Admin admin);

	@Select("select * from user limit #{arg0},#{arg1}")
	public List<User> selByPage(int i, int pageSize);

	@Select("select count(*) from user")
	public int selCount();

	@Select("SELECT orders.*,user.uname FROM orders,USER WHERE   orders.uid=user.uid AND orders.status=1 limit #{arg0},#{arg1}")
	public List<Order> selByPageOrder(int i, int pageSize);
	
	@Select("select count(*) from orders")
	public int selCountOrder();

	@Select("SELECT  c.`cname` category,SUM(g.`amount`) num FROM goods g,gclass c WHERE g.`gclass`=c.`cid` GROUP BY g.`gclass`")
	public List<BaoBiao> selGoodCateNum();

	@Select("SELECT  c.`cname` `name`,SUM(g.`amount`) `value` FROM goods g,gclass c WHERE g.`gclass`=c.`cid` GROUP BY g.`gclass`")
	public List<Table2> selGoodCateNum2();

	@Select("SELECT DATE_FORMAT(otime,'%Y-%m-%d') AS `name`,COUNT(*) `value` FROM orders GROUP BY name")
	public List<Table2> selGoodCateNum3();
}

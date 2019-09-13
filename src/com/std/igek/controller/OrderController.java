package com.std.igek.controller;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.std.igek.entity.Cart;
import com.std.igek.entity.Goods;
import com.std.igek.entity.Order;
import com.std.igek.entity.User;
import com.std.igek.service.CartService;
import com.std.igek.service.GoodService;
import com.std.igek.service.OrderService;
import com.std.igek.service.UserService;

import sun.print.resources.serviceui;

@Controller
public class OrderController {
	
	@Resource  
	private  OrderService orderService;
	@Resource
	private  CartService  cartService;
	@Resource
	private UserService userService;
	@Resource 
	private GoodService goodService;
	
	//购物车添加订单（购物车）
	@RequestMapping("addmyOrder")
	public String doaddOrder(HttpServletRequest request,Integer uid,int cid,String address,Integer cnum) {
		if(uid==null) {
			return "load";
		}else {
		System.out.println(uid);
		System.out.println(cid);
		User user = userService.dofindUserById(uid);
		Cart cart = cartService.dofindCartById(cid);
		Order order= new Order();
		int r1=(int)(Math.random()*(10));//产生2个0-9的随机数
		int r2=(int)(Math.random()*(10));
		long now = System.currentTimeMillis();//一个13位的时间戳
		String onum =String.valueOf(r1)+String.valueOf(r2)+String.valueOf(now);// 订单ID
		order.setOnum(onum);
		order.setAddress(address);
		order.setMoney(cart.getCprice()*cnum+cart.getCtex());
		order.setPid(cart.getPid());
		order.setUid(uid);
		order.setPrice(cart.getCprice());
		System.out.println(cart.getCprice());
		order.setStatus(0);
		order.setPnum(cnum);
		order.setOname(cart.getCname());
		order.setTel(user.getTel());
		order.setWl(cart.getCwl());;
		orderService.doaddOrder(order);
		cartService.delCartByOrder(cart);
		List<Order> orders = new ArrayList<>();
		orders =   orderService.dofindOrder(order.getUid());
		request.setAttribute("orders",orders);
		return "order";
		}
	}
	
	@RequestMapping("addMyOrder")
	public String AddMyOrder(HttpServletRequest request, Integer uid,int pid) {
		if(uid==null) {
			return "load";
		}else {
			System.out.println(uid);
			//System.out.println(pid);
			Goods goods =    goodService.selById(pid);
			Order order = new Order();
			int r1=(int)(Math.random()*(10));//产生2个0-9的随机数
			int r2=(int)(Math.random()*(10));
			long now = System.currentTimeMillis();//一个13位的时间戳
			String onum =String.valueOf(r1)+String.valueOf(r2)+String.valueOf(now);// 订单ID
			order.setOnum(onum);
			order.setUid(uid);
			order.setPid(pid);
			order.setMoney(goods.getPrice()+goods.getTex());
			order.setOname(goods.getGname());
			order.setPrice(goods.getPrice());
			order.setPnum(1);
			
			
			orderService.doaddOrder(order);
			
			List<Order> orders = new ArrayList<>();
			orders =   orderService.dofindOrder(order.getUid());
			request.setAttribute("orders",orders);
			return "order";
		}
		
	}
	//查询我的订单
	@RequestMapping("tomyorder")
	public String dotomyOrder(HttpServletRequest request,int uid) {
		List<Order> orders = new ArrayList<>();
		orders =   orderService.dofindOrder(uid);
		request.setAttribute("orders",orders);
		return "order";
	}
	
	//
	@RequestMapping("deleteOrder")
	public String dodeleteOrder(HttpServletRequest request,Integer oid,int uid) {
		orderService.deleteOrder(oid);
		List<Order> orders = new ArrayList<>();
		orders =   orderService.dofindOrder(uid);
		request.setAttribute("orders",orders);
		return "order";
	}
	
	
	@RequestMapping("queren")
	@ResponseBody
	public int queRen(Integer oid,Integer pid,int pnum,String address) {
		System.out.println(pid);
		Goods gs= goodService.selById(pid);
		int amount=gs.getAmount()+pnum;
		goodService.updateGoodNum(pid,amount);
		return orderService.queren(oid,address);
	}
	
	@RequestMapping("weizhifu")
	public String weiZhiFu(HttpServletRequest request) {
		User user=(User) request.getSession().getAttribute("user");
		if(user==null) {
			return "load";
		}else {
		Integer uid=user.getUid();
		List<Order> orders = new ArrayList<>();
		orders =   orderService.dofindOrder1(uid);
		request.setAttribute("orders",orders);
		return "order";
		}
	}
	
	
	@RequestMapping("yizhifu")
	public String yiZhiFu(HttpServletRequest request) {
		User user=(User) request.getSession().getAttribute("user");
		if(user==null) {
			return "load";
		}else {
			Integer uid=user.getUid();
			List<Order> orders = new ArrayList<>();
			orders =   orderService.dofindOrder2(uid);
			request.setAttribute("orders",orders);
			return "payed";
		}
		
	}
	
}

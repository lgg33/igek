package com.std.igek.controller;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.std.igek.entity.Cart;
import com.std.igek.entity.CartBean;
import com.std.igek.entity.Goods;
import com.std.igek.service.CartService;
import com.std.igek.service.GoodService;

@Controller
public class CartController {
	//连接服务层
	@Resource
	private CartService service;
	@Resource 
	private GoodService goodService; 
	
	//我的购物车
	@RequestMapping("tomyCart")
	public String findMyCartById(HttpServletRequest request,int uid) {
		List<Cart> cartlist = new ArrayList<>();
		cartlist = service.dofindmyCart(uid);
		request.setAttribute("carts", cartlist);
		return "shopcart";
	}
	
	//添加到购物车
	@RequestMapping("addCart")
	public String  findCartById(HttpServletRequest request ,int uid,Cart cart) {
		cart.setUid(uid);
		Cart cart1 = new Cart();
		cart1	 = service.dofindCart(uid,cart.getPid());
		if (cart1 != null)  {
			 int cnum= cart1.getCnum();
			 CartBean cartbean = new CartBean();
			 cartbean.setCid(cart1.getCid());
			 cartbean.setCnum(cnum+=cart.getCnum());
			 System.out.println(cartbean.getCid());
			 System.out.println(cartbean.getCnum());
			 System.out.println(cartbean.getUid());
			 System.out.println(cart.getCprice()*cnum+cart.getCtex());
			cartbean.setCmoney(cart.getCprice()*cnum+cart.getCtex());
			 service.doupdateCart(cartbean);
			 List<Cart> cartlist = new ArrayList<>();
			 cartlist = service.dofindmyCart(uid);
			 request.setAttribute("carts", cartlist);
 			 return "shopcart";
		}else {
			service.doaddCart(cart);
			System.out.println("添加成功！！！");
			return "index";
		}
		
	}	
	
	//首页直接添加购物车
	@RequestMapping("addMyCart")
	public String  addMyCart(HttpServletRequest request,Integer uid,int pid ) {
		if(uid==null) {
			return "load";
		}else {
			Goods goods =  goodService.selById(pid);
			Cart cart =  new Cart();
			cart.setUid(uid);
			cart.setPid(pid);
			cart.setCmoney(goods.getPrice()+goods.getTex());
			cart.setCname(goods.getGname());
			cart.setCurl(goods.getUrl());
			cart.setCprice(goods.getPrice());
			cart.setCnum(1);
			cart.setCtex(goods.getTex());
			cart.setCounrty(goods.getCountry());
			cart.setCwl(goods.getWl());
			Cart cart1 = new Cart();
			cart1	 = service.dofindCart(uid,cart.getPid());
			if (cart1 != null)  {
				 int cnum= cart1.getCnum();
				 CartBean cartbean = new CartBean();
				 cartbean.setCid(cart1.getCid());
				 cartbean.setCnum(cnum+=cart.getCnum());
				 System.out.println(cartbean.getCid());
				 System.out.println(cartbean.getCnum());
				 System.out.println(cartbean.getUid());
				 System.out.println(cart.getCprice()*cnum+cart.getCtex());
				cartbean.setCmoney(cart.getCprice()*cnum+cart.getCtex());
				 service.doupdateCart(cartbean);
				 List<Cart> cartlist = new ArrayList<>();
				 cartlist = service.dofindmyCart(uid);
				 request.setAttribute("carts", cartlist);
	 			 return "shopcart";
			}else {
				service.doaddCart(cart);
				System.out.println("添加成功！！！");
				return "index";
			}
		}
		
	}
	
	
	//删除购物车商品
	@RequestMapping("deleteCart")
	public String deleteCartGood(HttpServletRequest request,int pid,int uid) { 
		System.out.println(pid);
		System.out.println(uid);
		service.dodeleCartGood(pid,uid);
		List<Cart> cartlist = new ArrayList<>();
		cartlist = service.dofindmyCart(uid);
		request.setAttribute("carts", cartlist);
		return "shopcart";
	}
	
	//清空购物车
	@RequestMapping("deleteMyCart")
	public String deleteMyCart(HttpServletRequest request,int uid) {
		System.out.println(uid);
		service.deleteMyCart(uid);
		List<Cart> cart = new ArrayList<>();
		service.dofindmyCart(uid);
		request.setAttribute("carts", cart);
		
		
		return "shopcart";
	}
	
	
}
package com.std.igek.controller;



import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.std.igek.entity.Admin;
import com.std.igek.entity.BaoBiao;
import com.std.igek.entity.EasyUIDatagrid;
import com.std.igek.entity.Table2;
import com.std.igek.service.AdminService;

@Controller
public class AdminController {
	@Resource
	private AdminService userService;
	
	/*
	 * @RequestMapping("login") public String login(String name) {
	 * System.out.println(name); return "index.jsp"; }
	 */
	
	@RequestMapping("login")
	@ResponseBody
	public String login1(Admin user,HttpServletRequest request) {
		//System.out.println(user);
		Admin user1=userService.select(user);
		//System.out.println(user1);
		
		if(user1==null) {
			return "0";
		}else {
			request.getSession().setAttribute("admin", user1);
			return "1";
		}
	}
	@RequestMapping("updatepw")
	@ResponseBody
	public int updatePw(String opassword,String password,HttpServletRequest request) {
		Admin admin=new Admin();
		System.out.println(opassword+";"+password);
		Admin ad=(Admin) request.getSession().getAttribute("admin");
		System.out.println(ad);
		if(opassword.equals(ad.getPassword())) {
			admin.setId(ad.getId());
			admin.setPassword(password);
			return userService.updatePw(admin);
		}else {
			return 0;
		}
	}
	
	@RequestMapping("showuser")
	@ResponseBody
	public EasyUIDatagrid showAdd(@RequestParam(defaultValue = "2") int rows,@RequestParam(defaultValue = "1") int page) {
		return userService.show(rows, page);
	}
	
	@RequestMapping("showorder")
	@ResponseBody
	public EasyUIDatagrid showOrder(@RequestParam(defaultValue = "2") int rows,@RequestParam(defaultValue = "1") int page) {
		return userService.showOrder(rows, page);
	}
	
	@RequestMapping("baobiao")
	@ResponseBody
	public Object baoBiao(HttpServletRequest req,HttpServletResponse response){
		response.setCharacterEncoding("utf-8");
		List<BaoBiao> blist=userService.selGoodsCateNum();
		Gson gson =new Gson();
		String data=gson.toJson(blist);
		//System.out.println("data:"+data);
		return data;	
	}
	
	@RequestMapping("baobiao2")
	@ResponseBody
	public Object baoBiao2(HttpServletRequest req,HttpServletResponse response){
		response.setCharacterEncoding("utf-8");
		List<Table2> blist=userService.selGoodsCateNum2();
		Gson gson =new Gson();
		String data=gson.toJson(blist);
		//System.out.println("data:"+data);
		return data;	
	}
	
	@RequestMapping("baobiao3")
	@ResponseBody
	public Object baoBiao3(HttpServletRequest req,HttpServletResponse response){
		response.setCharacterEncoding("utf-8");
		List<Table2> blist=userService.selGoodsCateNum3();
		Gson gson =new Gson();
		String data=gson.toJson(blist);
		//System.out.println("data:"+data);
		return data;	
	}
	
	@RequestMapping("exit")
	public String exit(HttpServletRequest req) {
		req.getSession().removeAttribute("admin");
		return "login";
	}
	
}

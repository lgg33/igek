package com.std.igek.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.std.igek.entity.Category;
import com.std.igek.entity.Country;
import com.std.igek.entity.Goods;
import com.std.igek.service.GoodService;
import com.std.igek.service.GoodsSerivce;

@Controller
public class GoodController {
	@Resource
	private GoodService goodservice;
	
	@Resource
	private GoodsSerivce goodsSerivce;
	
	//首页
	@RequestMapping("selAll")
	public String selAll(HttpServletRequest req){
		List<Goods> list = goodservice.selAll();
		List<Category> clist=goodsSerivce.selCategory();
		List<Goods> dzlist=goodservice.selShuMa();
		List<Country> colist=goodservice.selAllCoun();
		List<Goods> newlist=goodservice.selGoodsByTime();
		req.getSession().setAttribute("goods", list);
		req.getSession().setAttribute("categorys", clist);
		req.getSession().setAttribute("dzlist", dzlist);
		req.getSession().setAttribute("colist", colist);
		req.getSession().setAttribute("newlist", newlist);
		return "index2";
		
	}
	
	//搜索
	@RequestMapping(value = "search",method = RequestMethod.GET)
	public String search(String goodname,HttpServletRequest req,
			@RequestParam(defaultValue = "1") Integer page,
			@RequestParam(value = "PageSize", defaultValue = "8") Integer pageSize){
			
			PageHelper.startPage(page, pageSize);
			List<Goods> productList = goodservice.search(goodname);
			//System.out.println(productList);
			PageInfo<Goods> P = new PageInfo<Goods>(productList);
			req.getSession().setAttribute("searchgood", productList);
			req.getSession().setAttribute("goodname", goodname);
			req.getSession().setAttribute("page", P);		
			return "search";
		
	}
	
	//商品详情
	@RequestMapping("goodsdetail")
	public String toGoodsDetail(Integer gid,HttpServletRequest req) {
		//System.out.println(gid);
		Goods gs=goodservice.selById(gid);
		req.getSession().setAttribute("good", gs);
		//System.out.println(gs);
		return "goodsdetail";
		
	}
	
	
	@RequestMapping("fenlei")
	public String toFenLei(HttpServletRequest req,Integer categoryid,
			@RequestParam(defaultValue = "1") Integer page,
			@RequestParam(value = "PageSize", defaultValue = "8") Integer pageSize ){
		Category cg=goodservice.selCgById(categoryid);
		PageHelper.startPage(page, pageSize);
		List<Goods> gslist=goodservice.selGoodsByCg(categoryid);
		PageInfo<Goods> P = new PageInfo<Goods>(gslist);
		req.getSession().setAttribute("gslist", gslist);
		req.getSession().setAttribute("page", P);	
		
		req.getSession().setAttribute("feilei", cg);
		
		return "fenlei";
	}
	
	@RequestMapping("guojia")
	public String toGuoJia(HttpServletRequest req,Integer countryid,
			@RequestParam(defaultValue = "1") Integer page,
			@RequestParam(value = "PageSize", defaultValue = "8") Integer pageSize ) {
		if(countryid!=null) {
			PageHelper.startPage(page, pageSize);
			List<Goods> gslist=goodservice.selGoodsByCountry(countryid);
			PageInfo<Goods> P = new PageInfo<Goods>(gslist);
			req.getSession().setAttribute("page", P);	
			Country country=goodservice.selCountryByCg(countryid);
			req.getSession().setAttribute("countrygs", gslist);
			req.setAttribute("country", country);
			return "fenleiguojia";
		}else {
			PageHelper.startPage(page, pageSize);
			List<Goods> gslist=goodservice.selAllGoods();
			PageInfo<Goods> P = new PageInfo<Goods>(gslist);
			req.getSession().setAttribute("page", P);
			req.getSession().setAttribute("countrygs", gslist);
			return "fenleiguojia";
		}
	}
	
	@RequestMapping("hotgood")
	public String hotGood(HttpServletRequest req,
			@RequestParam(defaultValue = "1") Integer page,
			@RequestParam(value = "PageSize", defaultValue = "8") Integer pageSize ){
		PageHelper.startPage(page, pageSize);
		List<Goods> hotlist=goodservice.selGoodsByNum();
		PageInfo<Goods> P = new PageInfo<Goods>(hotlist);
		req.getSession().setAttribute("page", P);
		req.getSession().setAttribute("hotlist", hotlist);
		return "hot";
	}

}

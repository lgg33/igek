package com.std.igek.controller;

import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.FileUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.std.igek.entity.Category;
import com.std.igek.entity.Country;
import com.std.igek.entity.EasyUIDatagrid;
import com.std.igek.entity.Goods;
import com.std.igek.service.GoodsSerivce;


@Controller
public class GoodsController {
	@Resource
	private GoodsSerivce addservice;
	@RequestMapping("showadd")
	@ResponseBody
	public EasyUIDatagrid showAdd(@RequestParam(defaultValue = "2") int rows,@RequestParam(defaultValue = "1") int page) {
		return addservice.show(rows, page);
	}
	
	@RequestMapping("updadd")
	@ResponseBody
	public int updAdd(Goods add) {
		System.out.println(add);
		return addservice.updAdd(add);
	}
	
	@RequestMapping(value="insgoods",method = RequestMethod.POST)
	@ResponseBody
	public int insGoods(@RequestParam(value = "file") MultipartFile file,Goods gs,
			//@RequestParam(value = "name")String gname,
			//@RequestParam(value = "price")float price,
			//@RequestParam(value = "describle")String gshow,
			HttpServletRequest req) throws IOException {
		//Goods gs=new Goods();
		//gs.setGname(gname);
		//gs.setPrice(price);
		//gs.setGshow(gshow);
		//System.out.println(gs);
		String filename = file.getOriginalFilename();
		String suffix= filename.substring(filename.lastIndexOf("."));
		String uuid= UUID.randomUUID().toString();
		String image=uuid+suffix;	//文件名
		String path = req.getServletContext().getRealPath("images")+"/"+image;	//服务器路径
		String path1="D:\\workplace\\igek\\WebContent\\images"+"/"+image;		//真实路径
		//System.out.println(path);
		FileUtils.copyInputStreamToFile(file.getInputStream(), new File(path));
		FileUtils.copyInputStreamToFile(file.getInputStream(), new File(path1));
		gs.setUrl(image);
		return addservice.insGoods(gs);
	}
	
	@RequestMapping("delgoods")
	@ResponseBody
	public int delGoods(Goods gs) {
		//System.out.println(gs);
		return addservice.delGoods(gs);
	}
	
	//根据商品id查询
	
	 @RequestMapping("selby") 
	 @ResponseBody
	 public List<Goods> sel(Integer gid,String gname) throws UnsupportedEncodingException {
		 if(gid!=null) {
			 //System.err.println(gid);
			 List<Goods> list=new ArrayList<>();
			 list=addservice.selById(gid);
			 //Gson gson =new Gson();
			 //System.out.println(list);
			 return list;
			 
		 }else if(gname!=null) {
			 //System.out.println(gname);
			 List<Goods> list2=new ArrayList<>();
			 //System.out.println(gname);
			 //String gname1=new String(gname.getBytes("ISO-8859-1"),"UTF-8");
			 //System.out.println(gname1);
			 list2=addservice.selByName(gname);
			 //System.out.println(list2);
			 return list2;
		 }
		return null;
		 
	 }
	 
	 //查询种类
	 @RequestMapping("selcategory")
	 @ResponseBody
	 public List<Category> selGategroy() {
		List<Category> list = new ArrayList<>();
		list=addservice.selCategory();
		//System.out.println(list);
		return list; 
	 }
	 
	 //查询国家
	 @RequestMapping("selcountry")
	 @ResponseBody
	 public List<Country> selCountry() {
		List<Country> list = new ArrayList<>();
		list=addservice.selCountry();
		//System.out.println(list);
		return list; 
	 }
	 
	
}

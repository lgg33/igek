package com.std.igek.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.std.igek.dao.GoodsMapper;
import com.std.igek.entity.Category;
import com.std.igek.entity.Country;
import com.std.igek.entity.EasyUIDatagrid;
import com.std.igek.entity.Goods;
import com.std.igek.service.GoodsSerivce;


@Service
public class GoodsServiceImpl implements GoodsSerivce{
	@Resource
	private GoodsMapper addmapper;
	@Override
	public EasyUIDatagrid show(int pageSize, int pageNumber) {
		EasyUIDatagrid ea=new EasyUIDatagrid();
		ea.setRows(addmapper.selByPage(pageSize*(pageNumber-1), pageSize));
		ea.setTotal(addmapper.selCount());
		return ea;
	}
	@Override
	public int updAdd(Goods add) {
		// TODO Auto-generated method stub
		return addmapper.updAdd(add);
	}
	@Override
	public int insGoods(Goods gs) {
		// TODO Auto-generated method stub
		return addmapper.insGoods(gs);
	}
	@Override
	public int delGoods(Goods gs) {
		// TODO Auto-generated method stub
		return addmapper.delGoods(gs);
	}
	
	//根据id查询商品
	@Override
	public List<Goods> selById(Integer gid) {
		// TODO Auto-generated method stub
		return addmapper.selById(gid);
	}
	
	//根据名称查询商品
	@Override
	public List<Goods> selByName(String gname) {
		// TODO Auto-generated method stub
		return addmapper.selByName(gname);
	}
	
	@Override
	public List<Category> selCategory() {
		// TODO Auto-generated method stub
		return addmapper.selCategory();
	}
	@Override
	public List<Country> selCountry() {
		// TODO Auto-generated method stub
		return addmapper.selCountry();
	}
	
}

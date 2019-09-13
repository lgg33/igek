package com.std.igek.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.std.igek.dao.GoodDao;
import com.std.igek.entity.Category;
import com.std.igek.entity.Country;
import com.std.igek.entity.Goods;
import com.std.igek.service.GoodService;

@Service
public class GoodServiceImpl implements GoodService{
	
	@Resource
	private GoodDao gooddao;
	
	@Override
	public List<Goods> selAll() {
		// TODO Auto-generated method stub
		return gooddao.selAll();
	}

	@Override
	public Goods selById(Integer gid) {
		// TODO Auto-generated method stub
		return gooddao.selById(gid);
	}

	@Override
	public List<Goods> selShuMa() {
		// TODO Auto-generated method stub
		return gooddao.selShuMa();
	}

	@Override
	public Category selCgById(Integer categoryid) {
		// TODO Auto-generated method stub
		return gooddao.selCgById(categoryid);
	}

	@Override
	public List<Goods> selGoodsByCg(Integer categoryid) {
		// TODO Auto-generated method stub
		return gooddao.selGoodsByCg(categoryid);
	}

	@Override
	public List<Country> selAllCoun() {
		// TODO Auto-generated method stub
		return gooddao.selAllCoun();
	}

	@Override
	public Country selCountryByCg(Integer countryid) {
		// TODO Auto-generated method stub
		return gooddao.selCountryById(countryid);
	}

	@Override
	public List<Goods> selGoodsByCountry(Integer countryid) {
		// TODO Auto-generated method stub
		return gooddao.selGoodsByCountry(countryid);
	}

	@Override
	public List<Goods> selAllGoods() {
		// TODO Auto-generated method stub
		return gooddao.selAllGoods();
	}

	@Override
	public List<Goods> search(String goodname) {
		// TODO Auto-generated method stub
		return gooddao.serrch(goodname);
	}

	@Override
	public List<Goods> selGoodsByTime() {
		// TODO Auto-generated method stub
		return gooddao.selGoodsByTmie();
	}

	@Override
	public void updateGoodNum(Integer pid,int amount) {
		// TODO Auto-generated method stub
		gooddao.updateGoodNum(pid,amount);
	}

	@Override
	public List<Goods> selGoodsByNum() {
		// TODO Auto-generated method stub
		return gooddao.selGoodByNum();
	}

}

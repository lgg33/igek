package com.std.igek.service;

import java.util.List;

import com.std.igek.entity.Category;
import com.std.igek.entity.Country;
import com.std.igek.entity.Goods;

public interface GoodService {

	public List<Goods> selAll();

	public Goods selById(Integer gid);

	public List<Goods> selShuMa();

	public Category selCgById(Integer categoryid);

	public List<Goods> selGoodsByCg(Integer categoryid);

	public List<Country> selAllCoun();

	public Country selCountryByCg(Integer countryid);

	public List<Goods> selGoodsByCountry(Integer countryid);

	public List<Goods> selAllGoods();

	public List<Goods> search(String goodname);

	public List<Goods> selGoodsByTime();

	public void updateGoodNum(Integer pid,int amount);

	public List<Goods> selGoodsByNum();

}

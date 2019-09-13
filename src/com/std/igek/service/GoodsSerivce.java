package com.std.igek.service;

import java.util.List;

import com.std.igek.entity.Category;
import com.std.igek.entity.Country;
import com.std.igek.entity.EasyUIDatagrid;
import com.std.igek.entity.Goods;

public interface GoodsSerivce {
	public EasyUIDatagrid show(int pageSize,int pageNumber);
	public int updAdd(Goods add);
	public int insGoods(Goods gs);
	public int delGoods(Goods gs);
	public List<Goods> selById(Integer gid);
	public List<Goods> selByName(String gname);
	public List<Category> selCategory();
	public List<Country> selCountry();
}

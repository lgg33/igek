package com.std.igek.dao;

import java.util.List;

import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.std.igek.entity.Category;
import com.std.igek.entity.Country;
import com.std.igek.entity.Goods;

public interface GoodDao {

	@Select("select * from goods where gclass=8 limit 0,4")
	public List<Goods> selAll();
	
	@Select("select * from goods where gid=#{gid}")
	public Goods selById(Integer gid);

	@Select("select * from goods where gclass=1 or gclass=2")
	public List<Goods> selShuMa();

	@Select("select * from gclass where cid=#{categoryid}")
	public Category selCgById(Integer categoryid);
	
	@Select("select * from goods where gclass=#{categoryid}")
	public List<Goods> selGoodsByCg(Integer categoryid);

	@Select("select * from country")
	public List<Country> selAllCoun();

	@Select("select * from country where id=#{country}")
	public Country selCountryById(Integer countryid);

	@Select("select * from goods where country=#{countryid}")
	public List<Goods> selGoodsByCountry(Integer countryid);

	@Select("select * from goods")
	public List<Goods> selAllGoods();

	@Select("select * from goods where gname like CONCAT('%',#{goodname},'%')")
	public List<Goods> serrch(String goodname);

	@Select("select * from goods order by gid desc limit 0,4")
	public List<Goods> selGoodsByTmie();

	@Update("update goods set amount=#{arg1} where gid=#{arg0}")
	public void updateGoodNum(Integer pid,int amount);

	@Select("select * from goods order by amount desc")
	public List<Goods> selGoodByNum();

}

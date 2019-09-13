package com.std.igek.dao;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.std.igek.entity.Category;
import com.std.igek.entity.Country;
import com.std.igek.entity.Goods;


public interface GoodsMapper {
	@Select("select goods.*,c.country_name from goods,country c WHERE goods.`country`=c.id limit #{arg0},#{arg1}")
	List<Goods> selByPage(int pageStart,int pageSize);
	
	@Select("select count(*) from goods")
	int selCount();
	
	@Update("update goods set gname=#{gname},price=#{price},gshow=#{gshow},tex=#{tex},country=#{country} where gid=#{gid}")
	int updAdd(Goods add);
	
	@Insert("insert into goods (gname,gshow,url,price,tex,gclass,country) values(#{gname},#{gshow},#{url},#{price},#{tex},#{gclass},#{country})")
	int insGoods(Goods gs);

	@Delete("delete from goods where gid = #{gid}")
	int delGoods(Goods gs);
	
	@Select("select goods.*,c.country_name from goods,country c where gid=#{gid} AND goods.`country`=c.id")
	List<Goods> selById(Integer gid);
	
	@Select("select goods.*,c.country_name from goods,country c where gname like CONCAT('%',#{gname},'%') AND goods.`country`=c.id")
	List<Goods> selByName(String gname);
	
	@Select("select * from gclass")
	List<Category> selCategory();

	@Select("select * from country")
	List<Country> selCountry();
}

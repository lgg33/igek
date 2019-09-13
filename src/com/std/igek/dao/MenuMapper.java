package com.std.igek.dao;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import com.std.igek.entity.Menu;

public interface MenuMapper {
	@Select("select * from menu where pid=0")
	List<Menu> selectAll();
	@Select("select * from menu where pid=#{0}")
	List<Menu> selBypid(int pid);
}

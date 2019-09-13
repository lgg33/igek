package com.std.igek.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.std.igek.dao.MenuMapper;
import com.std.igek.entity.Attributes;
import com.std.igek.entity.Menu;
import com.std.igek.service.MenuService;

@Service
public class MenuServiceImpl implements MenuService{
	@Resource
	private MenuMapper menuMapper;
	
	@Override
	public List<Menu> show() {
		List<Menu> list=menuMapper.selectAll();
		for(Menu menu : list) {
			List<Menu> children=menuMapper.selBypid(menu.getId());
			for(Menu child : children) {
				Attributes attributes=new Attributes();
				attributes.setFilename(child.getFilename());
				child.setAttributes(attributes);
			}
			menu.setChildren(children);
		}
		return list;
	}

}

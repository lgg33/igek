package com.std.igek.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.std.igek.entity.Menu;
import com.std.igek.service.MenuService;


@Controller
public class MenuController {
	@Resource
	private MenuService menuServiceImpl;
	
	@RequestMapping("show")
	@ResponseBody
	public List<Menu> show(){
		System.err.println(menuServiceImpl.show());
		return menuServiceImpl.show();
	}

}

package com.std.igek.controller;


import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.std.igek.entity.Category;
import com.std.igek.entity.Thenews;
import com.std.igek.service.ThenewsService;

@Controller
@RequestMapping("thenews")
public class ThenewsController {
	@Resource
	private ThenewsService service;
	//展示资讯
	@RequestMapping(value="shownews")
	public String shownews(Model model,HttpSession session) {
		List<Thenews> list =  service.shownews();
		session.setAttribute("list", list);
		return "redirect:/Thenews.jsp";
	}
	
	@RequestMapping(value="findnews")
	public String findNews(String newsname,HttpSession session){
		List<Thenews> list = service.findnews(newsname);
		System.out.println(newsname);
		session.setAttribute("list", list);
		return "redirect:/Thenews.jsp";
	}
	
	@RequestMapping(value="addnews")
	@ResponseBody
	public String addNews(Thenews news,HttpSession session){
		int addnewsList = service.addnews(news);
		if(addnewsList == 1) {
			return "redirect:/Success.jsp";
		}else {
			return "redirect:/Error.jsp";
		}
	}
	
	@RequestMapping(value="xgnews")
	public String xgNews(Thenews news,HttpSession session){
		int xgnewsList = service.xgnews(news);
		if(xgnewsList == 1) {
			return "redirect:/Success.jsp";
		}else {
			return "redirect:/Error.jsp";
		}
	}
	
	@RequestMapping(value="findnewsByclass")
	public String findNewsByClass(String newsclass,HttpSession session){
		List<Thenews> list = service.findnewsByclass(newsclass);
		System.out.println(newsclass);
		session.setAttribute("list", list);
		return "redirect:/Thenews.jsp";
	}
	
	@RequestMapping(value="deletenews")
	public String deleteNews(int nid,HttpSession session){
		int addnewsList = service.deletenews(nid);
		if(addnewsList == 1) {
			return "redirect:/Success.jsp";
		}else {
			return "redirect:/Error.jsp";
		}
	}
	
	@RequestMapping(value="findnewsBynid")
	public String findNewsBynid(String nid,HttpSession session){
		List<Thenews> list = service.findnewsBynid(nid);
		System.out.println(nid);
		session.setAttribute("list", list);
		return "redirect:/Success.jsp";
	}
	
	
	
}

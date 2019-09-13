package com.std.igek.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.std.igek.dao.ThenewsDao;
import com.std.igek.entity.Thenews;
import com.std.igek.service.ThenewsService;

@Service
public  class ThenewsServiceImpl implements ThenewsService{
	@Resource(name="thenewsDao") 
	private ThenewsDao dao;

	@Override
	public List<Thenews> shownews() { 
		
		return dao.shownews();
	}

	
	@Override
	public List<Thenews> findnews(String newsname) {
		
		return dao.findnews(newsname);
		
	}


	@Override
	public int addnews(Thenews news) {
		return dao.addnews(news);
	}


	@Override
	public List<Thenews> findnewsByclass(String newsclass) {
		return dao.findnewsByclass(newsclass);
	}


	@Override
	public int xgnews(Thenews news) {
		// TODO Auto-generated method stub
		return dao.xgnews(news);
	}


	@Override
	public int deletenews(int nid) {
		// TODO Auto-generated method stub
		return dao.deletenews(nid);
	}


	@Override
	public List<Thenews> findnewsBynid(String nid) {
		// TODO Auto-generated method stub
		return dao.findnewsBynid(nid);
	}

/*
	@Override
	public Page<Thenews> findByPage(int currentPage) {
		 HashMap<String,Object> map=new HashMap<String,Object>();
		 Page<Thenews> page=new Page<Thenews>();
		 //封装当前页数
		 page.setCurrPage(currentPage);
		 //每页显示的数据
		 int pageSize=4;
		 page.setPageSize(pageSize);
		 //封装总记录数
		  int totalCount=dao.selectCount();
		  page.setTotalCount(totalCount);
		 //封装总页数
		  double totalcount=totalCount;
		  Double num=Math.ceil(totalcount/pageSize);
		  page.setTotalPage(num.intValue());//转换为整数
		  map.put("start", (currentPage-1)*pageSize);//起始的记录值
		  map.put("size", page.getPageSize());//获取每个页面的pageSize
		  List<Thenews> list=dao.findByPage(map);
		  page.setList(list);
		  return page;
	}
	*/

}

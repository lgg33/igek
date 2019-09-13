package com.std.igek.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.std.igek.entity.Thenews;

@Repository("thenewsDao")
public interface ThenewsDao  {
	
	List<Thenews> shownews();
	
	List<Thenews> findnews(String newsname);
	
	int addnews(Thenews news);
	
	List<Thenews> findnewsByclass(String newsclass);
	
	int xgnews(Thenews news);
	
	int deletenews(int nid);

	List<Thenews> findnewsBynid(String nid);
	
}

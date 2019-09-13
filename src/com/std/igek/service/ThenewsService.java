package com.std.igek.service;

import java.util.List;

import com.std.igek.entity.Thenews;

public interface ThenewsService {
	
	 List<Thenews> shownews();
	
	 List<Thenews> findnews(String newsname);
	
	 int addnews(Thenews news);
	 
	 List<Thenews> findnewsByclass(String nclass);

	int xgnews(Thenews news);

	int deletenews(int nid);

	List<Thenews> findnewsBynid(String nid);
	 
	// public Page<Thenews> findByPage(int currentPage);
}

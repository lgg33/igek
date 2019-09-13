package com.std.igek.entity;

import java.io.Serializable;

public class BaoBiao implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = -6886241034270211661L;
	
	private int bid;
	private int gclass;
	private String category;
	private int num;
	public int getBid() {
		return bid;
	}
	public void setBid(int bid) {
		this.bid = bid;
	}
	public int getGclass() {
		return gclass;
	}
	public void setGclass(int gclass) {
		this.gclass = gclass;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	@Override
	public String toString() {
		return "BaoBiao [bid=" + bid + ", gclass=" + gclass + ", category=" + category + ", num=" + num + "]";
	}
	

}

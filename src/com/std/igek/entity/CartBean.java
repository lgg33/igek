package com.std.igek.entity;

public class CartBean {
	
	private int cid;
	private int pid;
	private int uid;
	private double cnum;
	private double cmoney;
	public int getCid() {
		return cid;
	}
	public void setCid(int cid) {
		this.cid = cid;
	}
	public int getPid() {
		return pid;
	}
	public void setPid(int pid) {
		this.pid = pid;
	}
	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}
	public double getCnum() {
		return cnum;
	}
	public void setCnum(double cnum) {
		this.cnum = cnum;
	}
	public double getCmoney() {
		return cmoney;
	}
	public void setCmoney(double cmoney) {
		this.cmoney = cmoney;
	}
	public CartBean(int cid, int pid, int uid, double cnum, double cmoney) {
		super();
		this.cid = cid;
		this.pid = pid;
		this.uid = uid;
		this.cnum = cnum;
		this.cmoney = cmoney;
	}
	public CartBean() {
		super();
	}
	
	
}

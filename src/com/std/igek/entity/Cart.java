package com.std.igek.entity;

import java.sql.Date;

public class Cart {
	
	private int cid;
	private int uid;
	private int pid;
	private String cname;
	private String curl;
	private double cprice;
	private int  cnum;
	private double cmoney;
	private Date ctime;
	private double ctex;
	private String  cwl;
	
	private int country;
	public int getCid() {
		return cid;
	}
	public void setCid(int cid) {
		this.cid = cid;
	}
	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}
	public int getPid() {
		return pid;
	}
	public void setPid(int pid) {
		this.pid = pid;
	}
	public String getCname() {
		return cname;
	}
	public void setCname(String cname) {
		this.cname = cname;
	}
	public String getCurl() {
		return curl;
	}
	public void setCurl(String curl) {
		this.curl = curl;
	}
	public double getCprice() {
		return cprice;
	}
	public void setCprice(double cprice) {
		this.cprice = cprice;
	}
	public int getCnum() {
		return cnum;
	}
	public void setCnum(int cnum) {
		this.cnum = cnum;
	}
	public double getCmoney() {
		return cmoney;
	}
	public void setCmoney(double cmoney) {
		this.cmoney = cmoney;
	}
	public Date getCtime() {
		return ctime;
	}
	public void setCtime(Date ctime) {
		this.ctime = ctime;
	}
	public double getCtex() {
		return ctex;
	}
	public void setCtex(double ctex) {
		this.ctex = ctex;
	}
	public int getCountry() {
		return country;
	}
	public void setCounrty(int country) {
		this.country = country;
	}
	public String getCwl() {
		return cwl;
	}
	public void setCwl(String cwl) {
		this.cwl = cwl;
	}
	public Cart(int cid, int uid, int pid, String cname, String curl, double cprice, int cnum, double cmoney,
			Date ctime, double ctex, int country,String cwl) {
		super();
		this.cid = cid;
		this.uid = uid;
		this.pid = pid;
		this.cname = cname;
		this.curl = curl;
		this.cprice = cprice;
		this.cnum = cnum;
		this.cmoney = cmoney;
		this.ctime = ctime;
		this.ctex = ctex;
		this.country = country;
		this.cwl = cwl;
	}
	public Cart() {
		super();
	}
	
}

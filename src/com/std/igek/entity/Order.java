package com.std.igek.entity;

import java.sql.Timestamp;

public class Order {
	
	private int oid;
	private String onum;
	private int uid;
	private String address;
	private double money;
	private int pid;
	private int  status;
	private double price;
	private String remark;
	private Timestamp otime;
	private String oname;
	private int pnum;
	private String tel;
	private String wl;
	
	private String uname;
	
	
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getWl() {
		return wl;
	}
	public void setWl(String wl) {
		this.wl = wl;
	}
	public String getOname() {
		return oname;
	}
	public void setOname(String oname) {
		this.oname = oname;
	}
	public int getPnum() {
		return pnum;
	}
	public void setPnum(int pnum) {
		this.pnum = pnum;
	}
	public int getOid() {
		return oid;
	}
	public void setOid(int oid) {
		this.oid = oid;
	}
	public String getOnum() {
		return onum;
	}
	public void setOnum(String onum) {
		this.onum = onum;
	}
	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public double getMoney() {
		return money;
	}
	public void setMoney(double money) {
		this.money = money;
	}
	public int getPid() {
		return pid;
	}
	public void setPid(int pid) {
		this.pid = pid;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
	public Timestamp getOtime() {
		return otime;
	}
	public void setOtime(Timestamp otime) {
		this.otime = otime;
	}
	public Order(int oid, String onum, int uid, String address, double money, int pid, int status, double price,
			String remark, Timestamp otime, String oname, int pnum, String tel, String wl) {
		super();
		this.oid = oid;
		this.onum = onum;
		this.uid = uid;
		this.address = address;
		this.money = money;
		this.pid = pid;
		this.status = status;
		this.price = price;
		this.remark = remark;
		this.otime = otime;
		this.oname = oname;
		this.pnum = pnum;
		this.tel = tel;
		this.wl = wl;
	}
	public Order() {
		super();
	}
	
	
	
}

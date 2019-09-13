package com.std.igek.entity;

import java.io.Serializable;
import java.sql.Date;

public class Thenews implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = -8604207291381720082L;
	private int nid;
	private String content;
	private String newsname;
	private String newsclass;
	public String getNewsclass() {
		return newsclass;
	}

	public void setNewsclass(String newsclass) {
		this.newsclass = newsclass;
	}

	private Date nDate;
	private Date xDate;

	public String getNewsname() {
		return newsname;
	}

	public void setNewsname(String newsname) {
		this.newsname = newsname;
	}

	public int getNid() {
		return nid;
	}

	public void setNid(int nid) {
		this.nid = nid;
	}


	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Date getnDate() {
		return nDate;
	}

	public void setnDate(Date nDate) {
		this.nDate = nDate;
	}

	public java.util.Date getxDate() {
		return xDate;
	}

	public void setxDate(Date date) {
		this.xDate = date;
	}

	public Thenews(int nid, String newsname,String newsclass, String content, Date nDate, Date xDate) {
		super();
		this.nid = nid;
		this.newsname = newsname;
		this.newsclass = newsclass;
		this.content = content;
		this.nDate = nDate;
		this.xDate = xDate;
	}

	public Thenews() {
		super();
	}

}

package com.std.igek.entity;

import java.io.Serializable;

public class Country implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 3898571998205732156L;
	
	private int id;
	private String country_name;
	private String url;

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getCountry_name() {
		return country_name;
	}
	public void setCountry_name(String country_name) {
		this.country_name = country_name;
	}
	
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	@Override
	public String toString() {
		return "Country [id=" + id + ", country_name=" + country_name + ", url=" + url + "]";
	}
	
}

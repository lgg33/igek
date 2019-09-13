package com.std.igek.entity;

public class Admin {
	private int id;
	private String name;
	private String phone;
	private String password;
	private String userRole;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getUserRole() {
		return userRole;
	}
	public void setUserRole(String userRole) {
		this.userRole = userRole;
	}
	@Override
	public String toString() {
		return "Admin [id=" + id + ", name=" + name + ", phone=" + phone + ", password=" + password + ", userRole="
				+ userRole + "]";
	}
	
	
	
}

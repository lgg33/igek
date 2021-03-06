package com.std.igek.entity;

import java.sql.Date;

public class User {
	
		private int uid;
		private String uname;
		private	String psw;
		private	String sex;
		private	int      uage;
		private	String uaddress;
		private	String tel;
		private	Date date;
		private int utype;
		private String email;
		
		public User() {
			super();
		}
		public User(int uid, String uname, String psw, String sex, int uage, String uaddress, String tel, Date date,
				int utype) {
			super();
			this.uid = uid;
			this.uname = uname;
			this.psw = psw;
			this.sex = sex;
			this.uage = uage;
			this.uaddress = uaddress;
			this.tel = tel;
			this.date = date;
			this.utype = utype;
		}
		public int getUage() {
			return uage;
		}
		public void setUage(int uage) {
			this.uage = uage;
		}
		public int getUtype() {
			return utype;
		}
		public void setUtype(int utype) {
			this.utype = utype;
		}
		public int getUid() {
			return uid;
		}
		public void setUid(int uid) {
			this.uid = uid;
		}
		public String getUname() {
			return uname;
		}
		public void setUname(String uname) {
			this.uname = uname;
		}
		public String getPsw() {
			return psw;
		}
		public void setPsw(String psw) {
			this.psw = psw;
		}
		public String getSex() {
			return sex;
		}
		public void setSex(String sex) {
			this.sex = sex;
		}
		public String getUaddress() {
			return uaddress;
		}
		public void setUaddress(String uaddress) {
			this.uaddress = uaddress;
		}
		public String getTel() {
			return tel;
		}
		public void setTel(String tel) {
			this.tel = tel;
		}
		public Date getDate() {
			return date;
		}
		public void setDate(Date date) {
			this.date = date;
		}
		public String getEmail() {
			return email;
		}
		public void setEmail(String email) {
			this.email = email;
		}
		@Override
		public String toString() {
			return "User [uid=" + uid + ", uname=" + uname + ", psw=" + psw + ", sex=" + sex + ", uage=" + uage
					+ ", uaddress=" + uaddress + ", tel=" + tel + ", date=" + date + ", utype=" + utype + ", email="
					+ email + "]";
		}
		

}

package com.hd;

public class User {
	private Integer id;
	private String na;
	private String pw;
	
	public User() {
	}

	
	
	public User(String na, String pw) {
		this.na = na;
		this.pw = pw;
	}



	public User(Integer id, String na, String pw) {
		this.id = id;
		this.na = na;
		this.pw = pw;
	}
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getNa() {
		return na;
	}
	public void setNa(String na) {
		this.na = na;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}

	public String toString() {
		return "User [id=" + id + ", na=" + na + ", pw=" + pw + "]";
	}
	
}

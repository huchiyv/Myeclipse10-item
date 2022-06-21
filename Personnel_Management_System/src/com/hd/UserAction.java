package com.hd;

public class UserAction {
	private String na;
	private String pwd;
	
	public String getNa() {
		return na;
	}

	public void setNa(String na) {
		this.na = na;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String login(){
		if(na.equals("admin")  && pwd.equals("456")){
			return "SUCCESS";
		}
		return "ERROR";
	}
}

package com.test;

import com.hd.UserAction;

public class LoginTest {
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
		UserAction  testAction = new UserAction();
		testAction.setNa(na);
		testAction.setPwd(pwd);
		String rString =testAction.Login1();
		return rString;
	}
}

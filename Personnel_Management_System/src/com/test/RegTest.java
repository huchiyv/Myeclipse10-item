package com.test;

import com.hd.UserAction;

public class RegTest {
	private String name;
	private String pwd;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	
	public String reg(){
		UserAction  testAction = new UserAction();
		testAction.setNa(name);
		testAction.setPwd(pwd);
		String rString =testAction.reg();
		return rString;
	}
	
}

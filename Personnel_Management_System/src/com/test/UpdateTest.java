package com.test;

import com.hd.User;
import com.hd.UserAction;

public class UpdateTest {
	private String name;
	private String pwd;
	private String pwd1;
//	private String pwd2;
	private String ID;
	
	
	
	public String getID() {
		return ID;
	}
	public void setID(String iD) {
		ID = iD;
	}
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
	public String getPwd1() {
		return pwd1;
	}
	public void setPwd1(String pwd1) {
		this.pwd1 = pwd1;
	}
//	public static void main(String[] args) {
////		UserAction find = new UserAction();
////		User user =find.findAUser("1");
////		System.out.println(user.getPw());
//		
////		UpdateTest updateTest = new UpdateTest();
////		updateTest.setPwd1("555");
////		updateTest.update();
//	}
	public String update(){
		Demo updateDemo = new Demo();
		UserAction find = new UserAction();
		User user =find.findAUser(ID);
		updateDemo.updata(user.getId(), user.getNa(), pwd1);
		return "SUCCESS";
	}
	
//	public String updateLogin()
	
	
}

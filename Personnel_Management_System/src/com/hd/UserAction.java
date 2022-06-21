package com.hd;

import java.util.Iterator;
import java.util.List;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.junit.Test;

import com.sun.org.apache.bcel.internal.generic.NEW;
import com.test.Demo;

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

	public String login() {
		if (na.equals("admin") && pwd.equals("456")) {
			return "SUCCESS";
		}
		return "ERROR";
	}
	
	
	@Test
	 public String Login1() {
	 // System.out.print(na + pwd + "login成功");
	 Demo loginDemo =new Demo();
	 List<User> loginList = loginDemo.findUser();
	 for (User user : loginList) {
	 if(na.equals(user.getNa()) && pwd.equals(user.getPw())){
//	 System.out.print(na + " "+pwd + " login成功");
	 return "SUCCESS";
	 }else {
	 continue;
	 }
	 }
	 return "ERROR";
	 }

	public String reg(){
		Demo regDemo =new Demo();
		User regUser = new User(na, pwd);
		String regString = regDemo.save(regUser);
		return regString;
	}
	
	public String del(Integer delId ){
		Demo delDemo =new Demo();
		delDemo.delete(delId);
		return "SUCCESS";
	}
	
	@Test
	public User findAUser(String id){
		UserAction del = new UserAction();
		Demo demo = new Demo();
		List<User> list =demo.findUser();
		 for (User user : list) {
			 if(id.equals( user.getId().toString() ) ){
//				 System.out.println(user.getNa());
				 return user;
			 }
		 }
		 return null;
	}

}

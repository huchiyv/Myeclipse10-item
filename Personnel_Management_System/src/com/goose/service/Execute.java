package com.goose.service;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.goose.controller.*;
import com.goose.dao.*;

public class Execute {
	private String ID;
	private String name;
	private String pwd;
	private String pwd1;
	
	public String getID() 							{	return ID;}
	public void setID(String iD) 			{	ID = iD;}
	
	public String getName() 					{	return name;}
	public void setName(String name) 	{	this.name = name;}
	
	public String getPwd() 						{	return pwd;}
	public void setPwd(String pwd) 		{	this.pwd = pwd;}
	
	public String getPwd1() 						{	return pwd1;}
	public void setPwd1(String pwd1) 	{	this.pwd1 = pwd1;}
	
	public String login(){
		UserAction  testAction = new UserAction();
		testAction.setNa(name);
		testAction.setPwd(pwd);
		String rString =testAction.Login();
		return rString;
	}
	
	public String reg(){
		UserAction  testAction = new UserAction();
		testAction.setNa(name);
		testAction.setPwd(pwd);
		String rString =testAction.reg();
		return rString;
	}
	
	public String delUser(String id){
		UserAction del = new UserAction();
		del.del(new Integer(id));
		return "SUCCESS";
	}
	
	public String update(){
		  ApplicationContext ac=new ClassPathXmlApplicationContext("applicationContext.xml");
		  UserDao userDao = (UserDao)ac.getBean("userDaoimpl");
		UserAction find = new UserAction();
		User user =find.findAUser(ID);
		userDao.update(user.getId(), user.getName(), pwd1);
		return "SUCCESS";
	}
	
}

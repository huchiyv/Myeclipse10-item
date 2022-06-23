package com.goose.service;

import java.util.List;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.goose.dao.UserDao;
import com.goose.controller.User;
import com.sun.org.apache.bcel.internal.generic.NEW;


public class UserAction {
	private String name;
	private String pwd;

	public String getNa() {
		return name;
	}
	public void setNa(String na) {
		this.name = na;
	}


	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	@Test
	public String Login() {
		  ApplicationContext ac=new ClassPathXmlApplicationContext("applicationContext.xml");
		  UserDao userDao = (UserDao)ac.getBean("userDaoimpl");
		List<User> loginList =userDao.selectAll();
		for (User user : loginList) {
			if (name.equals(user.getName()) && pwd.equals(user.getPwd())) {
				return "SUCCESS";
			} else {
				continue;
			}
		}
		return "ERROR";
	}

	public String reg() {
		  ApplicationContext ac=new ClassPathXmlApplicationContext("applicationContext.xml");
		  UserDao userDao = (UserDao)ac.getBean("userDaoimpl");
		User regUser = new User(name, pwd);
		String regString = userDao.insert(regUser);
		return regString;
	}

	public String del(Integer delId) {
		  ApplicationContext ac=new ClassPathXmlApplicationContext("applicationContext.xml");
		  UserDao userDao = (UserDao)ac.getBean("userDaoimpl");
		userDao.delete(delId);
		return "SUCCESS";
	}

	@Test
	public User findAUser(String id) {
		  ApplicationContext ac=new ClassPathXmlApplicationContext("applicationContext.xml");
		  UserDao userDao = (UserDao)ac.getBean("userDaoimpl");
		List<User> list = userDao.selectAll();
		for (User user : list) {
			if (id.equals(user.getId().toString())) {
				return user;
			}
		}
		return null;
	}
}





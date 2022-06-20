package com.test;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.dao.UserDao;

public class SpringTest {
	@Test
	   public void test() {
		  ApplicationContext ac=new ClassPathXmlApplicationContext("applicationContext.xml");
		  UserDao userDao=(UserDao)ac.getBean("userDaoimpl");
		  userDao.save();
	   }

}

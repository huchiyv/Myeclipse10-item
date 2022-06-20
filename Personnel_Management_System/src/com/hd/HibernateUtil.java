package com.hd;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class HibernateUtil {
	
	private static Configuration cfg=null;
	private static SessionFactory factory=null;
	
	//只需执行1次，静态代码块保证程序只运行1次
	static{
		//1.读取hibernate.cfg.xml文件
		  cfg=new Configuration();
		  cfg.configure();
		//2.创建SessionFactory工厂
		  factory=cfg.buildSessionFactory(); 
	}
	/**
	 * 让外部获取Session对象
	 */
	public static Session getSession()
	{
		//3.创建Session对象
		//  Session session=factory.openSession();
		return factory.openSession();	
	}

}

package com.hd;

import java.util.Iterator;
import java.util.List;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.junit.Test;

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

//	public String Login2() {
//		System.out.print(na + pwd + "login成功");
//		Session session = HibernateUtil.getSession();
//		boolean has = false;
//		try {
//			List adminlist = null;
//			adminlist = session.createQuery("from User").list();
//			session.beginTransaction().commit();
//			if (adminlist != null) {
//				Iterator it = adminlist.iterator();
//				while (it.hasNext()) {
//					User a = (User) it.next();
//					System.out.println(a.getNa() + a.getPw());
//					if (a.getNa().equals(na) && a.getPw().equals(pwd)) {
//						has = true;
//						break;
//					}
//				}
//			}
//			if (has)
//				return "SUCCESS";
//			else
//				return "ERROR";
//		} catch (HibernateException e) {
//			e.printStackTrace();
//			return "ERROR";
//		} finally {
//			if (session.isOpen()) {
//				session.close();
//			}
//		}
//	}

}

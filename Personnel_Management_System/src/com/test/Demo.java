package com.test;

import org.hibernate.Hibernate;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import com.hd.HibernateUtil;
import com.hd.User;

public class Demo {
	
		public static void main(String[] args) {
			Demo demo = new Demo();
			User user1 = new User("唐三藏", "456789");
//			user1.setId(new Integer(3));
			demo.save(user1);
			demo.updata(new Integer(1), "孙悟空", "78910");
//			demo.delete(new Integer(3));
//			demo.show(new Integer(1));
			
			
		} 

		/**
		 * 保存数据
		 * User userPar ：需要保存新的用户对象
		 */
		public void save(User userPar){
			User user=new User();
			user = userPar;
			Session session =HibernateUtil.getSession(); 
			//4.开启事务
			Transaction tx=session.beginTransaction();
			//5执行添加操作
			session.save(user);
			//6提交事务
			tx.commit();
			//7.关闭资源
			session.close();
			System.out.println("已完成添加");
		}
		/**
		 * 更新数据
		 * updata(Integer Id,String Na,String Pw)
		 * Integer Id		需要更新的用户对象id
		 * String Na     需要更新的用户对象用户名
		 * String Pw    需要更新的用户对象密码
		 */
		public void updata(Integer Id,String Na,String Pw){
			User user=new User();
			user.setId(Id);
			user.setNa(Na);
			user.setPw(Pw);
			
			Session session =HibernateUtil.getSession(); 
			//4.开启事务
			Transaction tx=session.beginTransaction();
			//5执行添加操作
			session.update(user);
			//6提交事务
			tx.commit();
			//7.关闭资源
			session.close();
			System.out.println("已完成更改");
		}
		
		/**
		 * 删除数据
		 * Integer Id ：需要删除的用户id
		 */
		public void delete(Integer Id){
			User user=new User();
			user.setId(Id);
			Session session =HibernateUtil.getSession(); 
			//4.开启事务
			Transaction tx=session.beginTransaction();
			//5执行添加操作
			session.delete(user);
			//6提交事务
			tx.commit();
			//7.关闭资源
			session.close();
			System.out.println("已完成删除");
		}
		
		/**
		 * 
		 * User userPar ：需要查看的用户对象
		 */
		public void show(Integer Id){
			User user=new User();
			user.setId(Id);
//			suer = userPar;
			
			Session session =HibernateUtil.getSession(); 
			//4.开启事务
			Transaction tx=session.beginTransaction();
			//5执行添加操作
			session.get(User.class, user.getId());
			System.out.println(user);
			//6提交事务
			tx.commit();
			//7.关闭资源
			session.close();
			System.out.println("已完成展示");
		}
		
		
		
}

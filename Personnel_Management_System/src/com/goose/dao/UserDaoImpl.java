package com.goose.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.goose.controller.*;

public class UserDaoImpl implements UserDao{

	public String insert(User userPar) {
		User user = new User();
		user = userPar;
		Session session = HibernateUtil.getSession();
		// 4.开启事务
		Transaction tx = session.beginTransaction();
		// 5执行添加操作
		session.save(user);
		// 6提交事务
		tx.commit();
		// 7.关闭资源
		session.close();
		System.out.println("已完成添加");
		return "SUCCESS";
	}

	public String delete(Integer id) {
		User user = new User();
		user.setId(id);
		Session session = HibernateUtil.getSession();
		// 4.开启事务
		Transaction tx = session.beginTransaction();
		// 5执行添加操作
		session.delete(user);
		// 6提交事务
		tx.commit();
		// 7.关闭资源
		session.close();
		System.out.println("已完成删除");
		return "SUCCESS";
	}

	public void update(Integer id, String name, String pwd) {
		User user = new User();
		user.setId(id);
		user.setName(name);
		user.setPwd(pwd);

		Session session = HibernateUtil.getSession();
		// 4.开启事务
		Transaction tx = session.beginTransaction();
		// 5执行添加操作
		session.update(user);
		// 6提交事务
		tx.commit();
		// 7.关闭资源
		session.close();
		System.out.println("已完成更改");
		
	}
	

	public List<com.goose.controller.User> selectAll() {
		List<User> list = null;
		Session session = HibernateUtil.getSession();
		// 4.开启事务
		Transaction tx = session.beginTransaction();
		try {
			// 5执行查询
			Criteria criteria = session.createCriteria(User.class);
			List<User> listTemp = criteria.list();
			list = listTemp;
//			// 使用forEach遍历集合
//			for (User user : list) {
//				System.out.println(user);
//			}
			// 6提交事务
			tx.commit();
		} catch (Exception e) {
			tx.rollback();
		} finally {
			// 7.关闭资源
			session.close();
			return list;
		}

	}
		
}


package com.goose.dao;

import java.util.List;

import com.goose.controller.*;

public interface UserDao {

	/**
	 * 
	* @Description  根据提供对象属性向数据库的表格中添加一行新数据
	* @author huchiyv
	* @date 2022-6-23上午11:13:49
	* @param userPar 需要添加的数据对应的hibernate映射对象
	* @return	添加成功返回字符串SUCCESS	
	 */
	public String  insert(User userPar);
	
	/**
	 * 
	* @Description		根据主键删除数据库表中一行已经存在的数据
	* @author huchiyv
	* @date 2022-6-23上午11:18:38
	* @param id		需要删除的数据对应的hibernate映射对象的id,即表中对应主键
	* @return			删除成功返回字符串SUCCESS
	 */
	public String  delete(Integer id);
	
	/**
	 * 
	* @Description 	根据提供的主键id更新数据库表中某一行数据
	* @author huchiyv
	* @date 2022-6-23上午11:23:16
	* @param id	主键（序号）
	* @param name	 用户名
	* @param pwd	密码
	 */
	public void update(Integer id, String name, String pwd);
	
	/**
	 * 
	* @Description 	查询数据库中表格全部信息存储在一个list中
	* @author huchiyv
	* @date 2022-6-23上午11:28:29
	* @return	返回一个list
	 */
	public List<User> selectAll();
	
}


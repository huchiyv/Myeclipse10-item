package com.test;

import com.hd.UserAction;

public class DelTest {
//	public static void main(String[] args) {
//		UserAction del = new UserAction();
//		del.del(new Integer("7"));
//	}
	
	public String delUser(String id){
		UserAction del = new UserAction();
		del.del(new Integer(id));
		return "SUCCESS";
	}
}

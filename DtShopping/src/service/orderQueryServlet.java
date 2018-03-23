package service;

import java.util.List;

import dao.MainEueryImpl;
import dao.orderQueryImpl;

/*
 * xpl
 * 用于个人中心订单情况查询
 * 
 * */
public class orderQueryServlet {
	
	public int nopay(int userid) {
		orderQueryImpl orderQueryImpl=new orderQueryImpl();
		int num =orderQueryImpl.nopay(userid);
		return num;
	}
	public int  nosend(int userid) {
		orderQueryImpl orderQueryImpl=new orderQueryImpl();
		int num =orderQueryImpl.nosend(userid);
		return num;
	}
	
	public int  waitget(int userid) {
		orderQueryImpl orderQueryImpl=new orderQueryImpl();
		int num =orderQueryImpl.waitget(userid);
		return num;
	}
}

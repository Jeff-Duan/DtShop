package service;

import java.util.List;

import dao.MainEueryImpl;
/*
 * xpl
 * 用于主页面查询商品信息
 * */
public class MainQuery {
	//手机电话卡查询
	public List eQuery() {
		MainEueryImpl mainEueryImpl=new MainEueryImpl();
		List list =mainEueryImpl.queryGoods();
		return list;
	}
	
	//热门查询
	public List hotQuery() {
		MainEueryImpl mainEueryImpl=new MainEueryImpl();
		List list =mainEueryImpl.hotGoods();
		return list;
	}
	
	//查询专区
	public List zhuanquQuery(int typeid) {
		MainEueryImpl mainEueryImpl=new MainEueryImpl();
		List list =mainEueryImpl.zqQuery(typeid);
		return list;
	}
}

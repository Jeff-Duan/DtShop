package service;

import java.util.HashMap;
import java.util.List;

import dao.AfterUserOrderDaoImpl;

import dao.UserDaoImpl;
import model.Manager;
import model.Order;
import model.OrderGoodsAll;
import model.User;
import utils.PageModel;

public class QueryUpdateService {
	public PageModel QueryUser(String page,String rows){
		PageModel pageModel=null;
		AfterUserOrderDaoImpl userDaoImpl = new AfterUserOrderDaoImpl();
		pageModel = userDaoImpl.QueryUser(page,rows);
		return pageModel;
	}
	public PageModel QueryUserCondition(String id,String page,String rows){
		PageModel pageModel=null;
		AfterUserOrderDaoImpl userDaoImpl = new AfterUserOrderDaoImpl();
		pageModel = userDaoImpl.QueryUserCondition(id,page,rows);
		return pageModel;
	}
	
	public User QueryUserBack(String id){
		User user = null;
		AfterUserOrderDaoImpl userDaoImpl = new AfterUserOrderDaoImpl();
		user = userDaoImpl.QueryUserBack(id);
		return user;
	}
	public List QueryOrder(){
		List list = null;
		AfterUserOrderDaoImpl odi = new AfterUserOrderDaoImpl();
		list = odi.QueryOrderlist();
		return list;
	}
	public int updateuserstate(Object []obj){
		AfterUserOrderDaoImpl udus=new AfterUserOrderDaoImpl();
    	int i=udus.updateuserstate(obj);
    	return i;
    }
	public int UpdateOrderState(Object []obj){
		AfterUserOrderDaoImpl udus=new AfterUserOrderDaoImpl();
    	int i=udus.UpdateOrderState(obj);
    	return i;
    }
	public List QueryOrderCondition(Object []obj){
		List list = null;
		AfterUserOrderDaoImpl userDaoImpl = new AfterUserOrderDaoImpl();
		list = userDaoImpl.QueryOrderCondition(obj);
		return list;
	}
	public Manager QueryManager(Object[]obj){
		Manager manager = null;
		AfterUserOrderDaoImpl userDaoImpl = new AfterUserOrderDaoImpl();
		manager = userDaoImpl.QueryManager(obj);
		return manager;
	}
	public HashMap CountOrder(){
		HashMap map=new HashMap();
		AfterUserOrderDaoImpl odi = new AfterUserOrderDaoImpl();
		map = odi.CountOrder();
		return map;
	}
	public OrderGoodsAll QueryOrderBack(String id){
		OrderGoodsAll order = null;
		AfterUserOrderDaoImpl userDaoImpl = new AfterUserOrderDaoImpl();
		order = userDaoImpl.QueryOrderlistBack(id);
		return order;
	}
	
}

package service;

import java.util.List;

import dao.GoodDaoImpl;
import model.Good;
import utils.PageModel;

/**
 * 
 * @author hjl
 *	time:2017/8/28
 *
 */
public class QueryGoodService {
	//查询所有商品
	public PageModel quseyGood(Object [] params,String page,String rows){
		PageModel pageModel=null;
		GoodDaoImpl goodDaoImpl=new GoodDaoImpl();
		pageModel=goodDaoImpl.queryGood(params,page,rows);
		return pageModel;
	}
	//查询修改回显的商品
	public Good queryEcho(String goodsid){
		Good good=null;
		GoodDaoImpl goodDaoImpl=new GoodDaoImpl();
		good=goodDaoImpl.queryEchoGood(goodsid);
		return good;
	}
	//查询商品回收表的商品
	public List queryRecoverGood(Object [] params){
		List list=null;
		GoodDaoImpl goodDaoImpl=new GoodDaoImpl();
		list=goodDaoImpl.queryRecoverGood(params);
		return list;
	}
	//查询商品类型
	public List quseyGoodType(){
		List list=null;
		GoodDaoImpl goodDaoImpl=new GoodDaoImpl();
		list=goodDaoImpl.queryGoodType();
		return list;
	}

}

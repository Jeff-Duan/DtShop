package service;

import dao.GoodDaoImpl;
import model.Good;

public class UpdataGoodService {
	//更新商品
	public int updataGood(Good good){
		int i=0;
		GoodDaoImpl goodDaoImpl=new GoodDaoImpl();
		i=goodDaoImpl.updataGood(good);
		return i;
	}
	//删除商品
	public int deleteGood(String goodsid){
		int i=0;
		GoodDaoImpl goodDaoImpl=new GoodDaoImpl();
		i=goodDaoImpl.deleteGood(goodsid);
		return i;
	}
	
	//恢复回收站某个商品
	public int recoverGood(String goodsid){
		int i=0;
		GoodDaoImpl goodDaoImpl=new GoodDaoImpl();
		i=goodDaoImpl.recoverGood(goodsid);
		return i;
	}
	
	//添加商品的类型
	public int addGoodType(String goodstypename){
		int i=0;
		GoodDaoImpl goodDaoImpl=new GoodDaoImpl();
		i=goodDaoImpl.addGoodType(goodstypename);
		return i;
		
	}
}

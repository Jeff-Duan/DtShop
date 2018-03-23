package service;

import dao.GoodDaoImpl;
import model.Good;

public class AddGoodService {
	public int addGood(Good good){
		int i=0;
		GoodDaoImpl GoodDaoImpl=new GoodDaoImpl();
		i=GoodDaoImpl.addGood(good);
		return i;
	}
}

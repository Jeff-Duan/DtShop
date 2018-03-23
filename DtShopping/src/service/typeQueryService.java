package service;

import java.util.List;

import dao.typeidQueryImpl;

public class typeQueryService {
	public List typeidQuery(String szhi) {
		typeidQueryImpl typeidQueryImpl=new typeidQueryImpl();
		List list=typeidQueryImpl.typeidquery(szhi);
		return list;
	}
}

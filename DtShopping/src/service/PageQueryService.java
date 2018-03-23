package service;

import java.util.ArrayList;
import java.util.HashMap;

import dao.PageQueryImpl;
import utils.PageModel;

public class PageQueryService {
	public ArrayList<HashMap<String,Object>>  queryList(){
		PageQueryImpl  daoImpl=new PageQueryImpl();
		return daoImpl.queryList();
	}
	
	   //adfadfװ
		public PageModel queryPageList(String page,String pageSize,String zhi){
			PageQueryImpl  daoImpl=new PageQueryImpl();
			return daoImpl.queryPageList(page,pageSize,zhi);
		}
}

package dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import utils.PageModel;
import utils.odbcUtils;

public class PageQueryImpl {
	public ArrayList<HashMap<String,Object>>  queryList(){
		String sql="select * from emp";
		ArrayList<HashMap<String,Object>>   list  = odbcUtils.executeQuery(sql, null);
		odbcUtils.close();
		return list;
	}
	
	 	
		public PageModel  queryPageList(String page,String pageSize ,String szhi){
			String zhi="%"+szhi+"%";
			
			String sql="select goodsname,goodsprice,goodsimg from dt_goods where goodsname like '"+zhi+"'";
			
			PageModel  pageModel=new PageModel(sql,page,pageSize);
			
			List list  = odbcUtils.executeQuery(pageModel.toMysqlSql(), null);
			
			pageModel.setList(list);
			
			ArrayList<HashMap<String,Object>>  myList=  odbcUtils.executeQuery(pageModel.toCountSql(), null);
			if(myList.size()>0){
				HashMap  map  =myList.get(0);
				Integer  count =Integer.valueOf(String.valueOf(map.get("count")));
				//�������ŵ�ģ����1
				pageModel.setTotal(count);
			}
			return pageModel;
		}
		
}

package dao;

import java.util.List;

import utils.odbcUtils;

public class typeidQueryImpl {
	public List typeidquery(String szhi) {
		String zhi="%"+szhi+"%";
		String sql="select * from dt_goods a,dt_goods_type b where a.goods_typeid=b.goods_typeid and b.goodstypename like ? limit 12";
		List list =odbcUtils.executeQuery(sql,new Object[]{zhi});
		return list;
	}
}

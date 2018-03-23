package dao;




import java.util.List;

import utils.odbcUtils;

/*
 * xpl
 * 用于主页面查询商品信息
 * */
public class MainEueryImpl {
	//手机电话卡查询
	public List queryGoods() {
		String sql="select goods_id,goodsname,goodsimg from dt_goods";
		List list =odbcUtils.executeQuery(sql,null);
		return list;
	}
	
	//热门查询
	public List hotGoods() {
		String sql="select goods_id,goodsname,goodsprice,goodsimg from dt_goods order by goodssail desc limit 10 ";
		List list =odbcUtils.executeQuery(sql,null);
		return list;
	}
	
	//查询专区
	public List zqQuery(int typeid) {
		String sql="select goods_id,goodsname,goodsprice,goodsinfo,goodsimg from dt_goods where goods_typeid=? order by goodsdate desc  ";
		List list =odbcUtils.executeQuery(sql,new Object[]{typeid});
		return list;
	}
	
	
}

package dao;

import java.util.Date;

import utils.odbcUtils;

public class GrChangeDaoImpl {
	public void grchange(int id,String birthday,String username,String email,String realname,String phone,String sex) {
		String sql = "update dt_user set username=?,realname=?,sex=?,birthday=?,email=?,telphone=? where user_id=?";
		odbcUtils.executeUpdate(sql, new Object[]{username,realname,sex,birthday,email, phone,id});	
		odbcUtils.close();
	}
}

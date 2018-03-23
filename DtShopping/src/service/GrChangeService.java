package service;

import java.util.Date;

import dao.GrChangeDaoImpl;

public class GrChangeService {
	public void grchange(int id,String birthday,String username,String email,String realname,String phone,String sex) {
		GrChangeDaoImpl grChangeDaoImpl=new GrChangeDaoImpl();
		grChangeDaoImpl.grchange(id, birthday, username, email, realname, phone, sex);
	}
}

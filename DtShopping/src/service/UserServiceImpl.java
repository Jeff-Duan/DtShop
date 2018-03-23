package service;

import java.util.List;

import dao.UserDaoImpl;
import model.User;
import utils.odbcUtils;

/**
 * @author SL
 * 2017-08-28
 * 
 */
public class UserServiceImpl {
	public User login(Object[] obj){
		User user = null;
		UserDaoImpl userDaoImpl = new UserDaoImpl();
		user = userDaoImpl.login(obj);
		return user;
	}
	public User emailquery(Object[] obj){
		User user = null;
		UserDaoImpl userDaoImpl = new UserDaoImpl();
		user = userDaoImpl.emailquery(obj);
		return user;
	}
	public User phologin(Object[] obj){
		User user = null;
		UserDaoImpl userDaoImpl = new UserDaoImpl();
		user = userDaoImpl.phologin(obj);
		return user;
	}
	public User phoquery(Object[] obj){
		User user = null;
		UserDaoImpl userDaoImpl = new UserDaoImpl();
		user = userDaoImpl.phoquery(obj);
		return user;
	}
	public int register(User user) {
		int i = 0;
		UserDaoImpl userDaoImpl = new UserDaoImpl();
		i=userDaoImpl.register(user);
		return i;
	}
	public User backpass(Object[] obj){
		User user = null;
		UserDaoImpl userDaoImpl = new UserDaoImpl();
		user = userDaoImpl.backpass(obj);
		return user;
	}
	public int updatepass(User user){
		int i = 0;
		UserDaoImpl userDaoImpl = new UserDaoImpl();
		i = userDaoImpl.updatepass(user);
		return i;
		}
	

}

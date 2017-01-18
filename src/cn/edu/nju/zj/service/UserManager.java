package cn.edu.nju.zj.service;

import java.util.ArrayList;

import org.hibernate.HibernateException;

import cn.edu.nju.zj.beans.User;
import cn.edu.nju.zj.forms.UserForm;

public interface UserManager {

	public void regUser(UserForm user) throws HibernateException;
	
	public ArrayList<User> checkUser(UserForm user) throws HibernateException;

}

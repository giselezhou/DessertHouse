package cn.edu.nju.zj.dao;

import java.util.ArrayList;

import org.hibernate.HibernateException;

import cn.edu.nju.zj.beans.User;

public interface BaseDao {

	public void saveObject(Object obj) throws HibernateException;

	public ArrayList<User> checkAccount(String account, String password);
}

package cn.edu.nju.zj.dao;

import java.util.ArrayList;

import org.hibernate.HibernateException;

import cn.edu.nju.zj.beans.Buy;

public interface Buydao {
	
	public void saveObject(Object obj) throws HibernateException;
	
	public void updateObject(Object obj)throws HibernateException;
	
	public ArrayList<Buy> findbyMember(int id)throws HibernateException;
	
	public ArrayList<Buy> findbyStore(int id)throws HibernateException;
	
	public ArrayList<Buy> findbyClerk(int id)throws HibernateException;	
}

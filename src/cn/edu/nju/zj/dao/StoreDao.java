package cn.edu.nju.zj.dao;

import java.util.ArrayList;

import org.hibernate.HibernateException;

import cn.edu.nju.zj.beans.Buy;
import cn.edu.nju.zj.beans.Clerk;
import cn.edu.nju.zj.beans.Member;
import cn.edu.nju.zj.beans.Store;

public interface StoreDao {
	
	public void saveObject(Object obj) throws HibernateException;
	
	public ArrayList<Store> storelist()throws HibernateException;
	
	public void updateObject(Object obj)throws HibernateException;
	
	public ArrayList<Member> getmemberlist()throws HibernateException;
	
	public ArrayList<Buy> getbuylist()throws HibernateException;

	public ArrayList<Clerk> getclerklist()throws HibernateException;
}

package cn.edu.nju.zj.dao;

import java.util.ArrayList;

import org.hibernate.HibernateException;

import cn.edu.nju.zj.beans.Commdityplan;
import cn.edu.nju.zj.beans.Order;

public interface OrderDao {
	
	public void saveObject(Object o) throws HibernateException;
		
	public int update(int oid) throws HibernateException;
	
	public ArrayList<Order> getlist()throws HibernateException;
}

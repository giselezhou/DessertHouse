package cn.edu.nju.zj.dao;

import java.util.ArrayList;

import org.hibernate.HibernateException;

import cn.edu.nju.zj.beans.Commdityplan;

public interface ComDao {
	
	public void saveObject(Commdityplan cp) throws HibernateException;
		
	public int howmuch(int number,int storeid, int comid)throws HibernateException;
	
	public ArrayList<Commdityplan> findallComPlan()throws HibernateException;
	
	public int enoughmoney(int memberid , int need,int number ,int comid)throws HibernateException;
	
	public void changestatus(int id)throws HibernateException;
}

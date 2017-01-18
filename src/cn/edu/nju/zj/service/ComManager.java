package cn.edu.nju.zj.service;

import java.util.ArrayList;

import org.hibernate.HibernateException;

import cn.edu.nju.zj.beans.Commdityplan;
import cn.edu.nju.zj.forms.ComForm;

public interface ComManager {
	
	public void create(ComForm commdityplan) throws HibernateException;
	
	public int isenough (int comid,int storeid,int number) throws HibernateException;
	
	public ArrayList<Commdityplan> getcplist() throws HibernateException;
	
	public void permit(int id)  throws HibernateException;
}

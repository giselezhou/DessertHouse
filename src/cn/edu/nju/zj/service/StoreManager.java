package cn.edu.nju.zj.service;

import java.util.ArrayList;

import org.hibernate.HibernateException;

import cn.edu.nju.zj.beans.Buy;
import cn.edu.nju.zj.beans.Clerk;
import cn.edu.nju.zj.beans.Member;
import cn.edu.nju.zj.beans.Store;
import cn.edu.nju.zj.forms.ClerkForm;
import cn.edu.nju.zj.forms.StoreForm;

public interface StoreManager {
	
	public void saveObject(StoreForm sf) throws HibernateException;
	
	public void saveObject2(ClerkForm sf) throws HibernateException;
	
	public ArrayList<Store> storelist()throws HibernateException;
	
	public ArrayList<Clerk> clerklist()throws HibernateException;

	public void updateObject(Store st)throws HibernateException;
	
	public ArrayList<Member> getmembers()throws HibernateException;
	
	public ArrayList<Buy> getbuylist()throws HibernateException;
}

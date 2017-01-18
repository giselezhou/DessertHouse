package cn.edu.nju.zj.service;

import java.util.ArrayList;

import org.hibernate.HibernateException;

import cn.edu.nju.zj.beans.Buy;
import cn.edu.nju.zj.forms.BuyForm;

public interface BuyManager {
	public int create(BuyForm form)throws HibernateException;
	public void update(BuyForm form)throws HibernateException;
	public ArrayList<Buy> findbystore(int id)throws HibernateException;
	public ArrayList<Buy> findbymember(int id)throws HibernateException;
	public ArrayList<Buy> findbyclerk(int id)throws HibernateException;
}

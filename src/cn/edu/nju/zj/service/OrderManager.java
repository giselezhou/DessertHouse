package cn.edu.nju.zj.service;

import java.util.ArrayList;

import org.hibernate.HibernateException;

import cn.edu.nju.zj.beans.Order;
import cn.edu.nju.zj.forms.OrderForm;

public interface OrderManager {
	public void sav(OrderForm of)throws HibernateException;;
	public int  upd(int oid)throws HibernateException;;
	public ArrayList<Order> getlist()throws HibernateException;;
}

package cn.edu.nju.zj.dao;

import java.util.ArrayList;

import org.hibernate.HibernateException;

import cn.edu.nju.zj.beans.Member;
import cn.edu.nju.zj.beans.Record;
import cn.edu.nju.zj.beans.User;

public interface MemberDao {

	public void saveObject(Object obj) throws HibernateException;

	public void updateObject(Object obj)throws HibernateException;
	
	public void createrecord(int price,int memberid)throws HibernateException;
	
	public Member findMember(int id)throws HibernateException;

	public ArrayList<Record> getrlist()throws HibernateException;
}

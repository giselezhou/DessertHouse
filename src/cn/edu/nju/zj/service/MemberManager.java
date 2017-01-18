package cn.edu.nju.zj.service;

import java.util.ArrayList;

import org.hibernate.HibernateException;

import cn.edu.nju.zj.beans.Member;
import cn.edu.nju.zj.beans.Record;
import cn.edu.nju.zj.beans.User;
import cn.edu.nju.zj.forms.MemberForm;
import cn.edu.nju.zj.forms.MemberUpdForm;
import cn.edu.nju.zj.forms.UserForm;

public interface MemberManager {

	public void reg(MemberForm memberform) throws HibernateException;
	
	public void update(MemberUpdForm memberform) throws HibernateException;

	public Member find(int id)throws HibernateException;
	
	public int sti(int money)throws HibernateException;
	
	public void updatelocal(Member member)throws HibernateException;
	
	public ArrayList<Record> getrlist() throws HibernateException;

}

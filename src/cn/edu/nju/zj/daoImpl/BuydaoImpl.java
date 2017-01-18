package cn.edu.nju.zj.daoImpl;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.HibernateException;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import cn.edu.nju.zj.beans.Buy;
import cn.edu.nju.zj.dao.Buydao;

public class BuydaoImpl extends HibernateDaoSupport implements Buydao{

	@Override
	public void saveObject(Object obj) throws HibernateException {
		getHibernateTemplate().save(obj);
	}

	@Override
	public void updateObject(Object obj) throws HibernateException {
		getHibernateTemplate().update(obj);
	}

	@Override
	public ArrayList<Buy> findbyMember(int id) throws HibernateException {
		String hql = "from Buy";
		List<Buy> buylist=  getHibernateTemplate().find(hql);
		ArrayList<Buy> result = new ArrayList<Buy>();
		for(Buy buy : buylist){
			if(buy.getMemberid() == id){
				result.add(buy);
			}
		}
		return result;
	}

	@Override
	public ArrayList<Buy> findbyStore(int id) throws HibernateException {
		String hql = "from Buy";
		List<Buy> buylist=  getHibernateTemplate().find(hql);
		ArrayList<Buy> result = new ArrayList<Buy>();
		for(Buy buy : buylist){
			if(buy.getStoreid() == id){
				result.add(buy);
			}
		}
		return result;
	}

	@Override
	public ArrayList<Buy> findbyClerk(int id) throws HibernateException {
		String hql = "from Buy";
		List<Buy> buylist=  getHibernateTemplate().find(hql);
		ArrayList<Buy> result = new ArrayList<Buy>();
		for(Buy buy : buylist){
			if(buy.getClerkid() == id){
				result.add(buy);
			}
		}
		return result;
	}

}

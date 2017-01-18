package cn.edu.nju.zj.serviceImpl;

import java.util.ArrayList;

import org.hibernate.HibernateException;
import org.springframework.beans.BeanUtils;

import cn.edu.nju.zj.beans.Buy;
import cn.edu.nju.zj.beans.Clerk;
import cn.edu.nju.zj.beans.Commdityplan;
import cn.edu.nju.zj.beans.Member;
import cn.edu.nju.zj.beans.Store;
import cn.edu.nju.zj.dao.StoreDao;
import cn.edu.nju.zj.forms.ClerkForm;
import cn.edu.nju.zj.forms.StoreForm;
import cn.edu.nju.zj.service.StoreManager;

public class StoreManagerImpl implements StoreManager{

	private StoreDao dao;
	
	
	
	public StoreDao getDao() {
		return dao;
	}

	public void setDao(StoreDao dao) {
		this.dao = dao;
	}

	@Override
	public void saveObject(StoreForm sf) throws HibernateException {
		Store st = new Store();
		BeanUtils.copyProperties(sf, st);
		dao.saveObject(st);
	}

	@Override
	public ArrayList<Store> storelist() throws HibernateException {
		return dao.storelist();
	}

	@Override
	public void updateObject(Store st) throws HibernateException {
		dao.updateObject(st);
	}

	@Override
	public ArrayList<Member> getmembers() throws HibernateException {
		
		return dao.getmemberlist();
	}

	@Override
	public ArrayList<Buy> getbuylist() throws HibernateException {
		return dao.getbuylist();
	}

	@Override
	public void saveObject2(ClerkForm sf) throws HibernateException {
		Clerk cl = new Clerk();
		BeanUtils.copyProperties(sf, cl);
		dao.saveObject(cl);
	}

	@Override
	public ArrayList<Clerk> clerklist() throws HibernateException {
		// TODO Auto-generated method stub
		return dao.getclerklist();
	}

}

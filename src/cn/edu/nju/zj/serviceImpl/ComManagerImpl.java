package cn.edu.nju.zj.serviceImpl;

import java.util.ArrayList;

import org.hibernate.HibernateException;
import org.springframework.beans.BeanUtils;

import cn.edu.nju.zj.beans.Commdityplan;
import cn.edu.nju.zj.dao.ComDao;
import cn.edu.nju.zj.forms.ComForm;
import cn.edu.nju.zj.service.ComManager;

public class ComManagerImpl implements ComManager{

	private ComDao dao;
	public ComDao getDao() {
		return dao;
	}

	public void setDao(ComDao dao) {
		this.dao = dao;
	}

	@Override
	public void create(ComForm commdityplan) throws HibernateException {
		Commdityplan cp = new Commdityplan();
		BeanUtils.copyProperties(commdityplan, cp);
		dao.saveObject(cp);
	}

	@Override
	public int isenough(int comid, int storeid, int number) throws HibernateException {
		return dao.howmuch(number, storeid, comid);
	}

	@Override
	public ArrayList<Commdityplan> getcplist() throws HibernateException {
		return dao.findallComPlan();
	}

	@Override
	public void permit(int id) throws HibernateException {
		dao.changestatus(id);
	}

}

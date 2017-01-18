package cn.edu.nju.zj.daoImpl;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.HibernateException;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import cn.edu.nju.zj.beans.Commdity;
import cn.edu.nju.zj.beans.Commdityplan;
import cn.edu.nju.zj.beans.Member;
import cn.edu.nju.zj.beans.Order;
import cn.edu.nju.zj.beans.Record;
import cn.edu.nju.zj.dao.OrderDao;

public class OrderDaoImpl  extends HibernateDaoSupport implements OrderDao{

	@Override
	public void saveObject(Object o) throws HibernateException {
		getHibernateTemplate().save(o);
	}

	@Override
	public int update(int oid) throws HibernateException {
		Order o = getHibernateTemplate().get(Order.class,oid);
		int cid = o.getCommdityid();
		Commdity c = getHibernateTemplate().get(Commdity.class,cid);
		Member m = getHibernateTemplate().get(Member.class,o.getMemberid());
		int price = c.getPrice()*o.getNumber();
		if(price>m.getMoney()){
			return -1;
		}else{
			m.setMoney(m.getMoney() - price);
			getHibernateTemplate().update(m);
			o.setStatus(1);
			getHibernateTemplate().update(o);
			return 0;
		}
	}

	@Override
	public ArrayList<Order> getlist() throws HibernateException {
		String hql = "from Order";
		List<Order> storelist=  getHibernateTemplate().find(hql);
		return (ArrayList<Order>) storelist;
	}

}

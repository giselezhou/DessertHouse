package cn.edu.nju.zj.serviceImpl;

import java.util.ArrayList;
import java.util.Map;

import org.hibernate.HibernateException;
import org.springframework.beans.BeanUtils;

import com.opensymphony.xwork2.ActionContext;

import cn.edu.nju.zj.beans.Commdityplan;
import cn.edu.nju.zj.beans.Order;
import cn.edu.nju.zj.beans.User;
import cn.edu.nju.zj.dao.OrderDao;
import cn.edu.nju.zj.forms.OrderForm;
import cn.edu.nju.zj.service.OrderManager;

public class OrderManagerImpl implements OrderManager{

	private OrderDao dao;
	@Override
	public void sav(OrderForm of) {
		Order o = new Order();
		BeanUtils.copyProperties(of,o);
		o.setStatus(0);
		Map session = ActionContext.getContext().getSession();
		User now = (User) session.get("user");
		int id = now.getUserId();
		o.setMemberid(id);
		dao.saveObject(o);
	}

	@Override
	public int upd(int oid) {
		return dao.update(oid);
	}

	public OrderDao getDao() {
		return dao;
	}

	public void setDao(OrderDao dao) {
		this.dao = dao;
	}

	@Override
	public ArrayList<Order> getlist() throws HibernateException {
		return dao.getlist();
	}

}

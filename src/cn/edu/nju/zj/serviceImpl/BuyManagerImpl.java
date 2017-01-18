package cn.edu.nju.zj.serviceImpl;

import java.util.ArrayList;
import java.util.Map;

import org.hibernate.HibernateException;
import org.springframework.beans.BeanUtils;

import com.opensymphony.xwork2.ActionContext;

import cn.edu.nju.zj.beans.Buy;
import cn.edu.nju.zj.beans.User;
import cn.edu.nju.zj.dao.Buydao;
import cn.edu.nju.zj.dao.ComDao;
import cn.edu.nju.zj.forms.BuyForm;
import cn.edu.nju.zj.service.BuyManager;

public class BuyManagerImpl implements BuyManager{
	private Buydao dao;
	private ComDao dao2;
	public Buydao getDao() {
		return dao;
	}

	public void setDao(Buydao dao) {
		this.dao = dao;
	}

	public ComDao getDao2() {
		return dao2;
	}
	
	public void setDao2(ComDao dao2) {
		this.dao2 = dao2;
	}
	@Override
	public int create(BuyForm form) throws HibernateException {
		Buy b = new Buy();
		System.out.println("Buy:"+form.getNumber()+" "+form.getStoreid()+" "+form.getCommodityid());
		int price  = dao2.howmuch(form.getNumber(),form.getStoreid(), form.getCommodityid());
		if(price == -1){
			return -1;
		}else if(price == -2){
			return -2;
		}
		b.setPrice(price);
		b.setDate(new java.util.GregorianCalendar().getTime());
		BeanUtils.copyProperties(form,b);
		Map session = ActionContext.getContext().getSession();
		User now = (User) session.get("user");
		int id = now.getUserId();
		b.setMemberid(id);
		
		int check = dao2.enoughmoney(id,b.getPrice(),form.getNumber(),form.getCommodityid());
		if(check == -3){
			return -3;
		}
		if(check == -4){
			return -4;
		}
		dao.saveObject(b);
		return 0;
	}

	@Override
	public void update(BuyForm form) throws HibernateException {
		// TODO Auto-generated method stub
	}

	@Override
	public ArrayList<Buy> findbystore(int id) throws HibernateException {
		return dao.findbyStore(id);
	}

	@Override
	public ArrayList<Buy> findbymember(int id) throws HibernateException {
		return dao.findbyMember(id);
	}

	@Override
	public ArrayList<Buy> findbyclerk(int id) throws HibernateException {
		return dao.findbyClerk(id);
	}

	
}

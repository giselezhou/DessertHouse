package cn.edu.nju.zj.daoImpl;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.HibernateException;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import cn.edu.nju.zj.beans.Commdity;
import cn.edu.nju.zj.beans.Commdityplan;
import cn.edu.nju.zj.beans.Member;
import cn.edu.nju.zj.dao.ComDao;

public class ComDaoImpl extends HibernateDaoSupport implements ComDao {

	@Override
	public void saveObject(Commdityplan cp) throws HibernateException {
		System.out.println("dao is creating plan");
		int cid = cp.getCommdityid();
		Commdity cd = getHibernateTemplate().get(Commdity.class, cid);
		cd.setNumber(cd.getNumber() + cp.getNumber());
		getHibernateTemplate().update(cd);
		getHibernateTemplate().save(cp);
	}

	@Override
	public int howmuch(int number, int storeid, int comid) throws HibernateException {
		String hql = "from Commdityplan";
		List<Commdityplan> comlist = getHibernateTemplate().find(hql);
		ArrayList<Commdityplan> result = new ArrayList<Commdityplan>();
		for (Commdityplan com : comlist) {
			if (com.getStoreid() == storeid && com.getCommdityid() == comid && com.getStatus() == 1) {
				result.add(com);
			}
		}
		if (result.size() > 0) {
			int total = 0;
			for (Commdityplan com : result) {
				total += com.getNumber();
			}
			if (total < number) {
				return -2;
			} else {
				int price = 0;
				Commdity cd = getHibernateTemplate().get(Commdity.class, comid);
				price = cd.getPrice();
				int finalresult = price * number;
				return finalresult;
			}
		} else {
			return -1;
		}
	}

	@Override
	public ArrayList<Commdityplan> findallComPlan() throws HibernateException {
		String hql = "from Commdityplan";
		List<Commdityplan> comlist = getHibernateTemplate().find(hql);
		return (ArrayList<Commdityplan>) comlist;
	}

	@Override
	public void changestatus(int id) throws HibernateException {
		Commdityplan cp = null;
		cp = getHibernateTemplate().get(Commdityplan.class, id);
		cp.setStatus(1);
		getHibernateTemplate().update(cp);
	}

	@Override
	public int enoughmoney(int memberid, int need, int number, int comid) throws HibernateException {
		Member member;
		member = getHibernateTemplate().get(Member.class, memberid);
		Commdity cd = getHibernateTemplate().get(Commdity.class, comid);

		int storenumber = cd.getNumber();
		int money = member.getMoney();

		if (money >= need) {
			if (number <= storenumber) {
				member.setMoney(money - need);
				cd.setNumber(storenumber - number);
				getHibernateTemplate().update(member);
				getHibernateTemplate().update(cd);
			} else {
				return -4;
			}
		} else {
			return -3;
		}
		return 0;
	}

}

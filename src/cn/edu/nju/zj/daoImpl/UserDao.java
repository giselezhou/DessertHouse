package cn.edu.nju.zj.daoImpl;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import cn.edu.nju.zj.beans.User;
import cn.edu.nju.zj.dao.BaseDao;

public class UserDao extends HibernateDaoSupport implements BaseDao {

	@Override
	public void saveObject(Object obj) throws HibernateException {
		getHibernateTemplate().save(obj);
	}
	
	@Override
	public ArrayList<User> checkAccount(String account, String password) throws HibernateException {
		String hql = "from User";
		List<User> userList= getHibernateTemplate().find(hql); 
		ArrayList<User> checkuser = new ArrayList<User>();
		System.out.println("Input:	"+account + "	Password:	"+password);
		for(User user: userList){
			if(user.getUsername().equals(account)&&user.getPassword().equals(password)){
				System.out.println(""+user.getUsername().equals(account)+user.getPassword().equals(password));
				checkuser.add(user);
			}
		}
		return checkuser;
	}

}

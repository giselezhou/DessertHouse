package cn.edu.nju.zj.serviceImpl;

import java.util.ArrayList;

import org.hibernate.HibernateException;
import org.springframework.beans.BeanUtils;

import cn.edu.nju.zj.beans.User;
import cn.edu.nju.zj.dao.BaseDao;
import cn.edu.nju.zj.forms.UserForm;
import cn.edu.nju.zj.service.UserManager;

public class UserManagerImpl implements UserManager {

	private BaseDao dao;

	public void setDao(BaseDao dao) {
		this.dao = dao;
	}

	@Override
	public void regUser(UserForm userForm) throws HibernateException {
		User user = new User();
		user.setType("M");
		BeanUtils.copyProperties(userForm, user);
		dao.saveObject(user);
	}

	@Override
	public ArrayList<User> checkUser(UserForm user) throws HibernateException {
		ArrayList<User> list = new ArrayList<User>();
		list = dao.checkAccount(user.getUsername(), user.getPassword());
		return list;
	}

}

package cn.edu.nju.zj.action;

import java.util.ArrayList;
import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import cn.edu.nju.zj.beans.Commdityplan;
import cn.edu.nju.zj.beans.User;
import cn.edu.nju.zj.forms.ComForm;
import cn.edu.nju.zj.forms.MemberForm;
import cn.edu.nju.zj.forms.UserForm;
import cn.edu.nju.zj.service.ComManager;
import cn.edu.nju.zj.service.MemberManager;
import cn.edu.nju.zj.service.UserManager;

public class ComRegAction extends ActionSupport {

	private static final long serialVersionUID = 1L;

	private ComForm com;

	private ComManager comManager;

	public ComForm getCom() {
		return com;
	}

	public void setCom(ComForm com) {
		this.com = com;
	}

	public ComManager getComManager() {
		return comManager;
	}

	public void setComManager(ComManager comManager) {
		this.comManager = comManager;
	}

	public String execute() {
		try {
			System.out.println("creating plan");
			comManager.create(com);
			return SUCCESS;

		} catch (Exception e) {
			e.printStackTrace();
			return ERROR;
		}
	}

}

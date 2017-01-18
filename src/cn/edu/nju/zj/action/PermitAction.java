package cn.edu.nju.zj.action;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

import cn.edu.nju.zj.beans.Commdityplan;
import cn.edu.nju.zj.forms.BuyForm;
import cn.edu.nju.zj.service.BuyManager;
import cn.edu.nju.zj.service.ComManager;

public class PermitAction extends ActionSupport {

	private static final long serialVersionUID = 1L;

	private ComManager comManager;
	private int cpid;

	public ComManager getComManager() {
		return comManager;
	}



	public void setComManager(ComManager comManager) {
		this.comManager = comManager;
	}

	public String execute() {
		try {
			
			int id = this.cpid;
			System.out.println("Permit: "+id);
			comManager.permit(id);
			return SUCCESS;
			
		} catch (Exception e) {
			e.printStackTrace();
			return ERROR;
		}
	}



	public int getCpid() {
		return cpid;
	}



	public void setCpid(int cpid) {
		this.cpid = cpid;
	}
}

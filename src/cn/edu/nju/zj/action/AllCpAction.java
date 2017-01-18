package cn.edu.nju.zj.action;

import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import cn.edu.nju.zj.forms.BuyForm;
import cn.edu.nju.zj.service.BuyManager;
import cn.edu.nju.zj.service.ComManager;

public class AllCpAction extends ActionSupport {

	private static final long serialVersionUID = 1L;

	private ComManager comManager;


	public ComManager getComManager() {
		return comManager;
	}



	public void setComManager(ComManager comManager) {
		this.comManager = comManager;
	}

	public String execute() {
		try {
			
			Map request  = (Map)ActionContext.getContext().get("request");
			request.put("list", comManager.getcplist());
			System.out.println("ShowCps");
			return SUCCESS;
			
		} catch (Exception e) {
			e.printStackTrace();
			return ERROR;
		}
	}
}

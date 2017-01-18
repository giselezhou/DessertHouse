package cn.edu.nju.zj.action;

import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import cn.edu.nju.zj.forms.BuyForm;
import cn.edu.nju.zj.service.BuyManager;
import cn.edu.nju.zj.service.ComManager;
import cn.edu.nju.zj.service.StoreManager;

public class AllStoreAction extends ActionSupport {

	private static final long serialVersionUID = 1L;

	private StoreManager storeManager;



	public String execute() {
		try {
			
			Map request  = (Map)ActionContext.getContext().get("request");
			request.put("slist", storeManager.storelist());
			System.out.println("ShowStores");
			return SUCCESS;
			
		} catch (Exception e) {
			e.printStackTrace();
			return ERROR;
		}
	}



	public StoreManager getStoreManager() {
		return storeManager;
	}



	public void setStoreManager(StoreManager storeManager) {
		this.storeManager = storeManager;
	}
}

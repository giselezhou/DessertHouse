package cn.edu.nju.zj.action;

import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import cn.edu.nju.zj.forms.BuyForm;
import cn.edu.nju.zj.forms.ClerkForm;
import cn.edu.nju.zj.forms.StoreForm;
import cn.edu.nju.zj.service.BuyManager;
import cn.edu.nju.zj.service.ComManager;
import cn.edu.nju.zj.service.StoreManager;

public class ClerkCreateAction extends ActionSupport {

	private static final long serialVersionUID = 1L;

	private StoreManager storeManager;
	private ClerkForm store;






	public ClerkForm getStore() {
		return store;
	}



	public void setStore(ClerkForm store) {
		this.store = store;
	}



	public String execute() {
		try {
			storeManager.saveObject2(store);
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

package cn.edu.nju.zj.action;

import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import cn.edu.nju.zj.forms.BuyForm;
import cn.edu.nju.zj.forms.OrderForm;
import cn.edu.nju.zj.service.BuyManager;
import cn.edu.nju.zj.service.ComManager;
import cn.edu.nju.zj.service.OrderManager;

public class AllOdAction extends ActionSupport {

	private static final long serialVersionUID = 1L;
	
	private OrderManager ordermanager;

	public OrderManager getOrdermanager() {
		return ordermanager;
	}

	public void setOrdermanager(OrderManager ordermanager) {
		this.ordermanager = ordermanager;
	}

	public String execute() {
		try {
			
			System.out.println("orders : ");
			Map request  = (Map)ActionContext.getContext().get("request");
			request.put("olist", ordermanager.getlist());
			return SUCCESS;
			
		} catch (Exception e) {
			e.printStackTrace();
			return ERROR;
		}
	}
}

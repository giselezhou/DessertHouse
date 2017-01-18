package cn.edu.nju.zj.action;

import com.opensymphony.xwork2.ActionSupport;

import cn.edu.nju.zj.forms.BuyForm;
import cn.edu.nju.zj.forms.OrderForm;
import cn.edu.nju.zj.service.BuyManager;
import cn.edu.nju.zj.service.ComManager;
import cn.edu.nju.zj.service.OrderManager;

public class OrderCreateAction extends ActionSupport {

	private static final long serialVersionUID = 1L;

	private OrderForm orderform;
	
	private OrderManager ordermanager;
	
	private int oid;
	

	public OrderForm getOrderform() {
		return orderform;
	}

	public void setOrderform(OrderForm orderform) {
		this.orderform = orderform;
	}

	public OrderManager getOrdermanager() {
		return ordermanager;
	}

	public void setOrdermanager(OrderManager ordermanager) {
		this.ordermanager = ordermanager;
	}

	public int getOid() {
		return oid;
	}

	public void setOid(int oid) {
		this.oid = oid;
	}

	public String execute() {
		try {
			
			System.out.println("Create order : "+oid);
			ordermanager.sav(orderform);
			return SUCCESS;
			
		} catch (Exception e) {
			e.printStackTrace();
			return ERROR;
		}
	}
}

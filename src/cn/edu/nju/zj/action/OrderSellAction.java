package cn.edu.nju.zj.action;

import com.opensymphony.xwork2.ActionSupport;

import cn.edu.nju.zj.forms.BuyForm;
import cn.edu.nju.zj.forms.OrderForm;
import cn.edu.nju.zj.service.BuyManager;
import cn.edu.nju.zj.service.ComManager;
import cn.edu.nju.zj.service.OrderManager;

public class OrderSellAction extends ActionSupport {

	private static final long serialVersionUID = 1L;
	
	private OrderManager ordermanager;
	
	private int oid;
	
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
			
			System.out.println("Upd order : "+oid);
			int r = ordermanager.upd(oid);
			if(r == 0){
				return SUCCESS;
			}else{
				return ERROR;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			return ERROR;
		}
	}
}

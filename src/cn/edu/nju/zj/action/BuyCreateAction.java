package cn.edu.nju.zj.action;

import com.opensymphony.xwork2.ActionSupport;

import cn.edu.nju.zj.forms.BuyForm;
import cn.edu.nju.zj.service.BuyManager;
import cn.edu.nju.zj.service.ComManager;

public class BuyCreateAction extends ActionSupport {

	private static final long serialVersionUID = 1L;

	private BuyForm buy;
	
	private BuyManager buyManager;

	private ComManager comManager;
	
	private int comdid;
	
	public BuyForm getBuy() {
		return buy;
	}

	public void setBuy(BuyForm buy) {
		this.buy = buy;
	}


	public BuyManager getBuyManager() {
		return buyManager;
	}



	public void setBuyManager(BuyManager buyManager) {
		this.buyManager = buyManager;
	}


	public ComManager getComManager() {
		return comManager;
	}



	public void setComManager(ComManager comManager) {
		this.comManager = comManager;
	}

	public String execute() {
		try {
			
			System.out.println("Want to Buy: "+buy.getCommodityid());
			int re = buyManager.create(buy);
			if(re>=0){
				return SUCCESS;
			}else{
				return ERROR;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			return ERROR;
		}
	}

	public int getComdid() {
		return comdid;
	}

	public void setComdid(int comdid) {
		this.comdid = comdid;
	}
}

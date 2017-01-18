package cn.edu.nju.zj.action;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collection;
import java.util.Comparator;
import java.util.Date;
import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import cn.edu.nju.zj.beans.Buy;
import cn.edu.nju.zj.beans.Member;
import cn.edu.nju.zj.forms.BuyForm;
import cn.edu.nju.zj.service.BuyManager;
import cn.edu.nju.zj.service.ComManager;
import cn.edu.nju.zj.service.StoreManager;

public class AllBuyAction extends ActionSupport {

	private static final long serialVersionUID = 1L;

	private StoreManager storeManager;



	public String execute() {
		try {
			
			ArrayList<Buy> blist =  storeManager.getbuylist();
			Map request  = (Map)ActionContext.getContext().get("request");
					
			
			ArrayList<Buy> bclist = blist;
			ArrayList<Buy> l1 = new ArrayList<Buy>();
			ArrayList<Buy> l2 = new ArrayList<Buy>();
			ArrayList<Buy> l3 = new ArrayList<Buy>();
			ArrayList<Buy> l4 = new ArrayList<Buy>();
			ArrayList<Buy> l5 = new ArrayList<Buy>();
			ArrayList<Buy> l6 = new ArrayList<Buy>();
			ArrayList<Buy> l7 = new ArrayList<Buy>();
			ArrayList<Buy> l8 = new ArrayList<Buy>();
			ArrayList<Buy> l9 = new ArrayList<Buy>();
			ArrayList<Buy> l10 = new ArrayList<Buy>();

			Date d1 = new SimpleDateFormat("yyyy-MM-dd").parse("2015-06-01");
			Date d2 = new SimpleDateFormat("yyyy-MM-dd").parse("2016-06-01");
			Calendar dd = Calendar.getInstance();//定义日期实例
			dd.setTime(d1);
			while(dd.getTime().before(d2)){//判断是否到结束日�?
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			String str = sdf.format(dd.getTime());
			SimpleDateFormat sss = new SimpleDateFormat("yyyy-MM-dd");
				for(Buy b :bclist){
					System.out.println(sss.format(b.getDate().getTime()));
					System.out.println("STR"+str);
					if(sss.format(b.getDate().getTime()).equals(str)){
						switch (b.getCommodityid()){
						case 1:
							l1.add(b);
							break;
						case 2:
							l2.add(b);
							break;
						case 3:
							l3.add(b);
							break;
						case 4:
							l4.add(b);
							break;
						case 5:
							l5.add(b);
							break;
						case 6:
							l6.add(b);
							break;
						case 7:
							l7.add(b);
							break;
						case 8:
							l8.add(b);
							break;
						case 9:
							l9.add(b);
							break;
						case 10:
							l10.add(b);
							break;
						}
					}
				}
				dd.add(Calendar.DAY_OF_MONTH, 1);//进行当前日期月份�?1
			}
			request.put("blist",bclist);
			request.put("l1",l1);
			request.put("l2",l2);
			request.put("l3",l3);
			request.put("l4",l4);
			request.put("l5",l5);
			request.put("l6",l6);
			request.put("l7",l7);
			request.put("l8",l8);
			request.put("l9",l9);
			request.put("l10",l10);
			System.out.println("SB");
			System.out.println(l3.size());
			
			
			
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
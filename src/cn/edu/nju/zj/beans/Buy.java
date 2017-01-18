package cn.edu.nju.zj.beans;

import java.util.Date;

public class Buy {
	private int buyid;
	private int commodityid;
	private int number;
	private int storeid;
	private int memberid;
	private int clerkid;
	private int price;
	private Date date; 
	public int getBuyid() {
		return buyid;
	}
	public void setBuyid(int buyid) {
		this.buyid = buyid;
	}
	public int getCommodityid() {
		return commodityid;
	}
	public void setCommodityid(int commodityid) {
		this.commodityid = commodityid;
	}
	public int getNumber() {
		return number;
	}
	public void setNumber(int number) {
		this.number = number;
	}
	public int getStoreid() {
		return storeid;
	}
	public void setStoreid(int storeid) {
		this.storeid = storeid;
	}
	public int getMemberid() {
		return memberid;
	}
	public void setMemberid(int memberid) {
		this.memberid = memberid;
	}
	public int getClerkid() {
		return clerkid;
	}
	public void setClerkid(int clerkid) {
		this.clerkid = clerkid;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	
}

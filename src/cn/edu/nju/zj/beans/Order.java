package cn.edu.nju.zj.beans;

public class Order {
	private int orderid;
	private int memberid;
	private int commdityid;
	private int number;
	private int status;
	public int getOrderid() {
		return orderid;
	}
	public void setOrderid(int orderid) {
		this.orderid = orderid;
	}
	public int getMemberid() {
		return memberid;
	}
	public void setMemberid(int memberid) {
		this.memberid = memberid;
	}
	public int getCommdityid() {
		return commdityid;
	}
	public void setCommdityid(int commdityid) {
		this.commdityid = commdityid;
	}
	public int getNumber() {
		return number;
	}
	public void setNumber(int number) {
		this.number = number;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	
}

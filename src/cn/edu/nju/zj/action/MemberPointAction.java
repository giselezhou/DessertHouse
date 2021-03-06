package cn.edu.nju.zj.action;

import java.util.ArrayList;
import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import cn.edu.nju.zj.beans.Member;
import cn.edu.nju.zj.beans.User;
import cn.edu.nju.zj.forms.MemberForm;
import cn.edu.nju.zj.forms.MemberUpdForm;
import cn.edu.nju.zj.forms.UserForm;
import cn.edu.nju.zj.service.MemberManager;
import cn.edu.nju.zj.service.UserManager;

public class MemberPointAction extends ActionSupport {

	private static final long serialVersionUID = 1L;

	private MemberUpdForm member;

	private MemberManager memberManager;

	public MemberUpdForm getMember() {
		return member;
	}

	public void setMember(MemberUpdForm member) {
		this.member = member;
	}

	public MemberManager getMemberManager() {
		return memberManager;
	}

	public void setMemberManager(MemberManager memberManager) {
		this.memberManager = memberManager;
	}

	public String execute() {
		try {
				
				Map request = (Map)ActionContext.getContext().get("request");
				Map session = ActionContext.getContext().getSession();
				User now = (User) session.get("user");
				int id = now.getUserId();
				Member mem = memberManager.find(id);
				int point =  mem.getPoint();
				if(point>member.getPoint()){
					mem.setPoint(point - member.getPoint());
					int up = member.getPoint()/10;
					mem.setMoney(mem.getMoney()+up);
					memberManager.updatelocal(mem);
				}else{
					return ERROR;
				}
				return SUCCESS;
		} catch (Exception e) {
			e.printStackTrace();
			return ERROR;
		}
	}

}

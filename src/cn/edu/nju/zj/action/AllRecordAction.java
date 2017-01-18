package cn.edu.nju.zj.action;

import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import cn.edu.nju.zj.beans.Member;
import cn.edu.nju.zj.beans.User;
import cn.edu.nju.zj.forms.MemberForm;
import cn.edu.nju.zj.service.MemberManager;

public class AllRecordAction extends ActionSupport{
	private static final long serialVersionUID = 1L;

	private MemberForm member;

	private MemberManager memberManager;

	public MemberForm getMember() {
		return member;
	}

	public void setMember(MemberForm member) {
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
			Map request  = (Map)ActionContext.getContext().get("request");
			request.put("rlist", memberManager.getrlist());
			System.out.println("ShowCps");
			return SUCCESS;

		} catch (Exception e) {
			e.printStackTrace();
			return ERROR;
		}
	}
}

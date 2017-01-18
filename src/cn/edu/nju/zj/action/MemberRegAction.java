package cn.edu.nju.zj.action;

import java.util.ArrayList;
import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import cn.edu.nju.zj.beans.User;
import cn.edu.nju.zj.forms.MemberForm;
import cn.edu.nju.zj.forms.UserForm;
import cn.edu.nju.zj.service.MemberManager;
import cn.edu.nju.zj.service.UserManager;

public class MemberRegAction extends ActionSupport {

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
			memberManager.reg(member);
			return SUCCESS;

		} catch (Exception e) {
			e.printStackTrace();
			return ERROR;
		}
	}

}

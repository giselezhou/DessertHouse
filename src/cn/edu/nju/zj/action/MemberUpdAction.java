package cn.edu.nju.zj.action;

import java.util.ArrayList;
import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import cn.edu.nju.zj.beans.User;
import cn.edu.nju.zj.forms.MemberForm;
import cn.edu.nju.zj.forms.MemberUpdForm;
import cn.edu.nju.zj.forms.UserForm;
import cn.edu.nju.zj.service.MemberManager;
import cn.edu.nju.zj.service.UserManager;

public class MemberUpdAction extends ActionSupport {

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
			memberManager.update(member);
			return SUCCESS;

		} catch (Exception e) {
			e.printStackTrace();
			return ERROR;
		}
	}

}

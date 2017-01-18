package cn.edu.nju.zj.serviceImpl;

import java.util.ArrayList;
import java.util.Map;
import java.util.Random;

import org.hibernate.HibernateException;
import org.springframework.beans.BeanUtils;

import com.opensymphony.xwork2.ActionContext;

import cn.edu.nju.zj.beans.Member;
import cn.edu.nju.zj.beans.Record;
import cn.edu.nju.zj.beans.User;
import cn.edu.nju.zj.dao.MemberDao;
import cn.edu.nju.zj.forms.MemberForm;
import cn.edu.nju.zj.forms.MemberUpdForm;
import cn.edu.nju.zj.service.MemberManager;

public class MemberManagerImpl implements MemberManager{
	
	private MemberDao dao;
	public static final String ALLCHAR = "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ";

	public void setDao(MemberDao dao) {
		this.dao = dao;
	}
	
	@Override
	public void reg(MemberForm memberform) throws HibernateException {
		Member member = new Member();
		Map session = ActionContext.getContext().getSession();
		User now = (User) session.get("user");
		int id = now.getUserId();
		BeanUtils.copyProperties(memberform, member);
		member.setMemberid(id);
		member.setStatus(0);
		member.setPoint(0);
		member.setMoney(0);
		//------------
		StringBuffer sb = new StringBuffer();
		Random r = new Random();
		for(int i = 0 ;i<7;i++){
			sb.append(ALLCHAR.charAt(r.nextInt(ALLCHAR.length())));
		}
		String bin = sb.toString();
		//------------
		member.setBin(bin);
		
		dao.saveObject(member);
	}

	@Override
	public void update(MemberUpdForm memberform) throws HibernateException {

		Map session = ActionContext.getContext().getSession();
		User now = (User) session.get("user");
		int id = now.getUserId();
		Member member = dao.findMember(id);
		
		
		System.out.println("To Update:"+member.getMemberid());
		
		if(memberform.getBin()!=null){
			member.setBin(memberform.getBin());
		}
		if(memberform.getLocation()!=null){
			member.setLocation(memberform.getLocation());
		}
		if(memberform.getSex()!=null){
			member.setSex(memberform.getSex());
		}
		if(memberform.getAge()!=member.getAge()){
			member.setAge(memberform.getAge());
		}
		if(memberform.getLevel()!=member.getLevel()){
			//member.setLevel(memberform.getLevel());
		}
		if(memberform.getPoint()!=member.getPoint()){
			//member.setPoint(memberform.getPoint());
		}		
		if(memberform.getStatus()!=member.getStatus()){
			//member.setStatus(memberform.getStatus());
		}
		if(memberform.getMoney()!=member.getMoney()){
			//member.setMoney(memberform.getMoney());
		}
		System.out.println("Upd: "+member.getMemberid());
		System.out.println("Upd: "+member.getAge());
		System.out.println("Upd: "+member.getBin());
		System.out.println("Upd: "+member.getLevel());
		System.out.println("Upd: "+member.getLocation());
		System.out.println("Upd: "+member.getPoint());
		System.out.println("Upd: "+member.getSex());
		System.out.println("Upd: "+member.getStatus());
		System.out.println("Upd: "+member.getMoney());
		dao.updateObject(member);
	}

	@Override
	public Member find(int id) throws HibernateException {
		Member member = dao.findMember(id);
		return member;
	}

	@Override
	public int sti(int money) throws HibernateException {
		
		Map session = ActionContext.getContext().getSession();
		User now = (User) session.get("user");
		int id = now.getUserId();
		Member member = dao.findMember(id);
		
		if(member.getStatus()!=0){
			int od = member.getMoney();
			member.setMoney(od+money);
			int po = money/10;
			int odd = member.getPoint();
			member.setPoint(odd+po);
			if(member.getPoint()>100){
				member.setLevel(member.getLevel()+1);
			}
			dao.updateObject(member);
			dao.createrecord(money, id);
			return 2;
		}else{
			if(money>=200){
				int od = member.getMoney();
				member.setMoney(od+money);
				member.setStatus(1);
				int po = money/10;
				int odd = member.getPoint();
				member.setPoint(odd+po);
				if(member.getPoint()>100){
					member.setLevel(member.getLevel()+1);
				}
				dao.updateObject(member);
				dao.createrecord(money, id);
				return 1;
			}else{
				int od = member.getMoney();
				member.setMoney(od+money);
				int po = money/10;
				int odd = member.getPoint();
				member.setPoint(odd+po);
				if(member.getPoint()>100){
					member.setLevel(member.getLevel()+1);
				}
				dao.updateObject(member);
				dao.createrecord(money, id);
				return 0;
			}
		}
	}

	@Override
	public void updatelocal(Member member) throws HibernateException {
		dao.updateObject(member);
	}

	@Override
	public ArrayList<Record> getrlist() throws HibernateException {
		return dao.getrlist();
	}

}

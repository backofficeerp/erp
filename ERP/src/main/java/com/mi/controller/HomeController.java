package com.mi.controller;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/*import com.mi.model.Role;
import com.mi.model.User;*/
import com.mi.resource_util.DBConnection;
import com.mi.resource_util.HibernateUtil;
import com.sun.xml.internal.ws.api.server.Module;

@Controller
public class HomeController {

/*	@RequestMapping(value={"/","home"}, method = RequestMethod.GET)
	public String home(String status, Model model){
		System.out.println("In Home controller");*/
		
		/*Connection con = null;
		PreparedStatement ps = null;
		ResultSet set = null;
		
		String q1 = "select * from ERP.user";
		
		try {
			con = DBConnection.getConnection();
			ps = con.prepareStatement(q1);
			set = ps.executeQuery();
			
			if(set.next()){
				System.out.println("connection done");
				System.out.println("name: " + set.getString("vch_user_name") );
			}else{
				System.out.println("no connection");
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			try {
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}*/
		
		
		
		/*Role roleSuperAdmin = new Role();
		roleSuperAdmin.setId(1);
		roleSuperAdmin.setRoleName("super_admin");
		
		Role roleSubAdmin = new Role();
		roleSubAdmin.setId(2);
		roleSubAdmin.setRoleName("sub_admin");
		
		Set<Role> shivamRoleSet = new HashSet<>();
		shivamRoleSet.add(roleSuperAdmin);
		shivamRoleSet.add(roleSubAdmin);
		
		Set<Role> subRoleSet = new HashSet<Role>();
		subRoleSet.add(roleSubAdmin);
		
		User userShivam = new User();
		userShivam.setId(1);
		userShivam.setName("Shivam");
		userShivam.setUname("shivam");
		userShivam.setUpass("shivam");
		userShivam.setRoleId(shivamRoleSet);
		
		User userAhad = new User();
		userAhad.setId(2);
		userAhad.setName("Ahad");
		userAhad.setUname("ahad");
		userAhad.setUpass("ahad");
		userAhad.setRoleId(subRoleSet);
		
		User userGaurav = new User();
		userGaurav.setId(3);
		userGaurav.setName("Gaurav");
		userGaurav.setUname("gaurav");
		userGaurav.setUpass("gaurav");
		userGaurav.setRoleId(subRoleSet);
		
		Configuration cfg = new Configuration();
		cfg.configure("com/mi/resources/mysql.cfg.xml");
		SessionFactory sf =  cfg.buildSessionFactory();
		Session session =  sf.openSession();
		Transaction t = session.beginTransaction();
		
		session.saveOrUpdate(userShivam);
		session.saveOrUpdate(userAhad);
		session.saveOrUpdate(userGaurav);
		session.saveOrUpdate(roleSuperAdmin);
		session.saveOrUpdate(roleSubAdmin);
		
		t.commit();
		session.close();
		sf.close();*/
		
		
		
		/*return "home";
	}*/
	
	/*@RequestMapping(value="/admin", method = RequestMethod.GET)
	public String admin(HttpServletRequest request){
		System.out.println("In admin");
		System.out.println("loggeduser: " + request.getSession().getAttribute("loggedUser"));
		return "admin";
	}*/
	
	/*@RequestMapping(value="/error", method = RequestMethod.GET)
	public String error(){
		System.out.println("In error");
		return "error";
	}
	
	@RequestMapping(value="/log_in", method = RequestMethod.GET)
	public String logIn(){
		System.out.println("In log_in");
		return "log_in";
	}
	
	@RequestMapping(value="/log_out", method = RequestMethod.GET)
	public String logOut(HttpServletRequest request){
		System.out.println("In log_out");
		request.getSession().setAttribute("loggedUser", "");
		return "home";
	}*/
	
	@RequestMapping(value="/testingPage", method = RequestMethod.GET)
	public String testingPage(HttpServletRequest request, Model model){
		System.out.println("in testing page");
		/*Session session = HibernateUtil.openSession();
		User user = (User)session.get(User.class, 1);
		
		model.addAttribute("mobile" + user.getMobile());
		request.getSession().setAttribute("mobileNo", user.getMobile());
		
		System.out.println(user.getMobile());
		
		session.close();*/
		
		return "testingPage";
	}
	
	@RequestMapping(value="/testingPage2", method = RequestMethod.GET)
	public String testingPage2(HttpServletRequest request, Model model){
		System.out.println("in testing page");
		Connection con = null;
		ResultSet set = null;
		PreparedStatement ps = null;
		
		String q1 = "select * from user where id = 2";
		
		try {
			con = DBConnection.getConnection();
			ps = con.prepareStatement(q1);
			set = ps.executeQuery();
			if(set.next()){
				System.out.println("mobile: " + set.getString("mobile"));
				request.getSession().setAttribute("mobileNo", set.getString("mobile"));
			}
		} catch (SQLException e) {
			
			e.printStackTrace();
		}finally{
			try {
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		return "testingPage2";
	}
	
	
	
	
		
	
	
	
	
}

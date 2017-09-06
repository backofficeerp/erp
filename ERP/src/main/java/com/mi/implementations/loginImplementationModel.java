package com.mi.implementations;

import java.util.Date;
import java.util.List;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.transaction.TransactionManager;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.StatelessSession;
import org.hibernate.Transaction;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Property;
import org.hibernate.criterion.Restrictions;

import com.mi.model.CompanyAdminMaster;
import com.mi.model.LoginManager;
import com.mi.model.SuperAdminMaster;
import com.mi.model.UserTypeMaster;
import com.mi.resource_util.HibernateUtil;
import com.mi.resource_util.Utility;

public class loginImplementationModel {

	// fetch all usertype from user_type_master table to be shown in the login
	// user type dropdown
	// This function returns List<com.mi.model.UserTypeMaster> object
	public static List getAlluserType() {

		List userType = null;
		Session session = HibernateUtil.openSession();
		Criteria cr = session.createCriteria(UserTypeMaster.class);
		userType = (List) cr.list();
		return userType;

	}

	// validating username and password for super admin user type
	// various validation status i.e.
	// 0 = username does not exists
	// 1 = username is valid but password not
	// 2 = username and password both are valid
	public static int isSuperAdminValid(HttpServletRequest request) {
		int validationStatus = 0;

		// getting the username and password from the request object
		String uname = request.getParameter("uname");
		String upass = request.getParameter("upass");

		// new hibernate session
		Session session = HibernateUtil.openSession();

		// seleting all details from super_admin_master table
		Criteria cr = session.createCriteria(SuperAdminMaster.class);

		// puting restriction via username so that we get an unique object
		Criterion crn = Restrictions.eq("username", uname);
		cr.add(crn);
		SuperAdminMaster superAdmin = (SuperAdminMaster) cr.uniqueResult();

		// if super admin with same username is available then we'll get the
		// unique super admin object
		if (superAdmin != null) {
			validationStatus = 1;

			// checking for matching password i.e. first decrypting the MD5
			// pattern and then validating it
			if (Utility.DecryptText(superAdmin.getPassword()).equals(upass)) {
				validationStatus = 2;

				// as everything is setup now, same user and his/her details
				// will be binded to the session object and along with various
				// details on the login_manager table
				prepareLogin(request, uname, 1, superAdmin.getId());
			}
		}

		// closing the Hibernate session
		session.close();

		return validationStatus;

	}

	// validating username and password for company user type
	// various validation status i.e.
	// 0 = username does not exists
	// 1 = username is valid but password not
	// 2 = username and password both are valid

	public static int isCompanyAdminValid(HttpServletRequest request) {
		int validationStatus = 0;

		// getting the username and password from the request object
		String uname = request.getParameter("uname");
		String upass = request.getParameter("upass");

		// new hibernate session
		Session session = HibernateUtil.openSession();

		// seleting all details from super_admin_master table
		Criteria cr = session.createCriteria(CompanyAdminMaster.class);

		// puting restriction via username so that we get an unique object
		Criterion crn = Restrictions.eq("username", uname);
		cr.add(crn);
		CompanyAdminMaster companyAdmin = (CompanyAdminMaster) cr
				.uniqueResult();

		// if super admin with same username is available then we'll get the
		// unique super admin object
		if (companyAdmin != null) {
			validationStatus = 1;

			// checking for matching password i.e. first decrypting the MD5
			// pattern and then validating it
			if (Utility.DecryptText(companyAdmin.getPassword()).equals(upass)) {
				validationStatus = 2;

				// as everything is setup now, same user and his/her details
				// will be binded to the session object and along with various
				// details on the login_manager table
				prepareLogin(request, uname, 2, companyAdmin.getId());

			}
		}

		// closing the Hibernate session
		session.close();

		return validationStatus;

	}

	public static boolean isBranchAdminValid() {
		boolean isValid = false;

		return isValid;

	}

	/*public static void prepareLogin(HttpServletRequest request,
			String loggedUser, int loggedUserType, int loggedUserId) {

		Session session = HibernateUtil.openSession();
		Transaction tr = session.beginTransaction();

		// fetching the max id from login manager table to update the login and
		// logout or various details
		int loginManagerMaxIdInt = 0;
		Criteria c2 = session.createCriteria(LoginManager.class);
		c2.addOrder(Order.desc("id"));
		c2.setMaxResults(1);
		LoginManager loginManager = (LoginManager) c2.uniqueResult();
		if (loginManager != null) {
			loginManagerMaxIdInt = loginManager.getId();
		}
		loginManagerMaxIdInt++;
		
		System.out.println("logManId: " + loginManagerMaxIdInt);

		// preparing the new loginManager object to be stored in the DB
		LoginManager newLoginManager = new LoginManager();
		newLoginManager.setId(loginManagerMaxIdInt);
		newLoginManager.setUserId(loggedUserId);
		newLoginManager.setLoginTime(new Date(System.currentTimeMillis()));
		UserTypeMaster userTypeMaster = new UserTypeMaster();
		userTypeMaster.setId(loggedUserType);
		newLoginManager.setUserTypeMaster(userTypeMaster);

		// binding the username, userType and loginManager id value to
		// the session
		// object
		request.getSession().setAttribute("loggedUser", loggedUser);
		request.getSession().setAttribute("loggedUserType", loggedUserType);
		request.getSession().setAttribute("loggedLoginManagerId",
				loginManagerMaxIdInt);

		// finally saving it and commiting
		session.save(newLoginManager);

		tr.commit();
		session.close();

	}*/
	
	public static void prepareLogin(HttpServletRequest request,
			String loggedUser, int loggedUserType, int loggedUserId) {

	
		Session session = HibernateUtil.openSession();
		Transaction tr = session.beginTransaction();
		// fetching the max id from login manager table to update the login and
		// logout or various details
		int loginManagerMaxIdInt = 0;
		Criteria c2 = session.createCriteria(LoginManager.class);
		c2.addOrder(Order.desc("id"));
		c2.setMaxResults(1);
		LoginManager loginManager = (LoginManager) c2.uniqueResult();
		if (loginManager != null) {
			System.out.println("yes i am here also");
			loginManagerMaxIdInt = loginManager.getId();
		}
		
		/*DetachedCriteria maxId = DetachedCriteria.forClass(LoginManager.class)
			    .setProjection( Projections.max("id") );
		Criteria c2 = session.createCriteria(LoginManager.class)
			    .add( Property.forName("id").eq(maxId));*/
		
		/*LoginManager loginManager = (LoginManager) c2.uniqueResult();
		if (loginManager != null) {
			loginManagerMaxIdInt = loginManager.getId();
		}*/
		loginManagerMaxIdInt++;
		
		System.out.println("logManId: " + loginManagerMaxIdInt);

		// preparing the new loginManager object to be stored in the DB
		LoginManager newLoginManager = new LoginManager();
		newLoginManager.setId(loginManagerMaxIdInt);
		newLoginManager.setUserId(loggedUserId);
		newLoginManager.setLoginTime(new Date(System.currentTimeMillis()));
		UserTypeMaster userTypeMaster = new UserTypeMaster();
		userTypeMaster.setId(loggedUserType);
		newLoginManager.setUserTypeMaster(userTypeMaster);

		// binding the username, userType and loginManager id value to
		// the session
		// object
		request.getSession().setAttribute("loggedUser", loggedUser);
		request.getSession().setAttribute("loggedUserType", loggedUserType);
		request.getSession().setAttribute("loggedLoginManagerId",
				loginManagerMaxIdInt);

		// finally saving it and commiting
		session.save(newLoginManager);
		
		
		tr.commit();
		
		session.close();

	}

}

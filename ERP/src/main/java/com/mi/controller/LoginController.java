package com.mi.controller;

import java.io.IOException;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.Restrictions;
import org.hibernate.internal.CriteriaImpl.CriterionEntry;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.mi.implementations.loginImplementationModel;
import com.mi.model.LoginManager;
import com.mi.resource_util.HibernateUtil;
import com.mi.resource_util.Utility;

@Controller
public class LoginController {

	// Default or homepage of login
	@RequestMapping(value = { "/", "login" }, method = RequestMethod.GET)
	public String login(Model model, HttpServletRequest request) {
		System.out.println("in login controller");

		// checking whether the loggedUser is logged or not by checking for null
		if (Utility.getLoggedUser(request) != null
				&& Utility.getLoggedUser(request) != "") {

			// if not null then redirecting the loggedUser based on his/her
			// usertype
			switch (Utility.getLoggedUserTypeUuid(request)) {
			case "7b824b91-92c6-11e7-a05d-b8975ad405b5":
				return "crustAdministration";

			case "8d0f2733-92c8-11e7-a05d-b8975ad405b5":
				return "companyManagementDashboard";

			default:
				return "login";
			}

		} else {
			// is null then login page is returned
			model.addAttribute("userTypeSet",
					loginImplementationModel.getAlluserType());
			return "login";
		}

	}
	
	@RequestMapping(value = "login2" , method = RequestMethod.GET)
	public String login2(Model model, HttpServletRequest request) {
		System.out.println("in login controller 2");

			
			model.addAttribute("userTypeSet",
					loginImplementationModel.getAlluserType());
			return "login";

	}

	@RequestMapping(value = "error", method = RequestMethod.GET)
	public String error(Model model) {
		System.out.println("in Error");
		return "error";
	}

	// This is an response body method i.e. for ajax request to get from login
	// for and process it for further validation
	// validation are done on the basis of pre-define user type i.e.
	// 0 = no user selected
	// 1 = superadmin type user validation
	// 2 = company type user validation
	// 3 = branch type user validation
	@RequestMapping(value = "/logInProcess", method = RequestMethod.POST)
	@ResponseBody
	public void logInProcess(@RequestParam(value = "uname") String uname,
			@RequestParam(value = "upass") String upass,
			HttpServletRequest request, HttpServletResponse response)
			throws IOException {
		System.out.println("In log_in_process");
		// json object which is to be send back to the ajax request
		String json = null;

		// switch case to get the refer to the specific usertype validtion based
		// on String 1, 2, 3 .. values
		switch (request.getParameter("userType")) {
		// as string 0 of usertype tells that o usertype has been selected from
		// usertype dropdown

		case "0":
			json = "{\"url\" : \"failed\", \"validationMessage\" : \"Please select the user type\"}";
			response.getWriter().write(json);
			break;
		// string 1 tells that user is of type superadmin therfore same
		// validation has been perform

		case "7b824b91-92c6-11e7-a05d-b8975ad405b5":

			// this nested switch case is get the various validationStatus
			// number i.e. 1, 2, 3 which have their own meaning
			// value 2 = username and password is correct therefore some genuine
			// url is return via json with no validation message cos it's not
			// needed

			switch (loginImplementationModel.isSuperAdminValid(request)) {
			case 0:
				System.out.println("case 0");
				json = "{\"url\" : \"failed\", \"validationMessage\" : \"Username does not exist\"}";
				response.getWriter().write(json);
				break;
			case 1:
				System.out.println("case 1");
				json = "{\"url\" : \"failed\", \"validationMessage\" : \"Please type the correct password\"}";
				response.getWriter().write(json);
				break;
			case 2:
				System.out.println("case 2");
				json = "{\"url\" : \"crustAdministration\"}";
				response.getWriter().write(json);
				break;
			}

			break;

		case "8d0f2733-92c8-11e7-a05d-b8975ad405b5":

			switch (loginImplementationModel.isCompanyAdminValid(request)) {
			case 0:
				json = "{\"url\" : \"failed\", \"validationMessage\" : \"Username does not exist\"}";
				response.getWriter().write(json);
				break;
			case 1:
				json = "{\"url\" : \"failed\", \"validationMessage\" : \"Please type the correct password\"}";
				response.getWriter().write(json);
				break;
			case 2:
				json = "{\"url\" : \"companyManagementDashboard\"}";
				response.getWriter().write(json);
				break;
			}
			break;

		case "8d0f2e25-92c8-11e7-a05d-b8975ad405b5":
			json = "{\"url\" : \"failed\", \"validationMessage\" : \"Branch not prepared yet. Please try again later\"}";
			response.getWriter().write(json);
			break;

		}

	}

	// logout method to logout the user by just invalidating the session object
	// because in that session object only all important object are bind
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public ModelAndView logout(HttpServletRequest request) {

		//new session
		Session session = HibernateUtil.openSession();
		//begin transaction logout time updation
		Transaction tr = session.beginTransaction();
		
		//fetching the loginManager row from login_manager table for current logged User 
		LoginManager loginManager = (LoginManager) session.get(
				LoginManager.class,
				Utility.getLoggedLoginManagerUuid(request));

		//Criteria cr = session.createCriteria(LoginManager.class);
		//Criterion crn = Restrictions.eq("id", 5);
		//cr.add(crn);
		//LoginManager loginManager = (LoginManager)cr.uniqueResult();
		
		//changing the logut time to current time in the fetched object
		loginManager.setLogoutTime(Utility.getUTCInMillisecond());
		
		//updating the same object to the db
		session.update(loginManager);
		
		tr.commit();
		//invalidating the sessin object 
		request.getSession().invalidate();
		
		//finally closing the session
		session.close();
		return new ModelAndView("redirect:" + "login");
	}

}

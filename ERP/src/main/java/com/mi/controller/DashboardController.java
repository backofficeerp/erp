package com.mi.controller;

import java.io.IOException;
import java.util.HashSet;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mi.customModel.AssignedModule;
import com.mi.implementations.loginImplementationModel;
import com.mi.resource_util.Utility;

@Controller
public class DashboardController {

	// Main request mapping for AdminDashboard
	@RequestMapping(value = "/adminDashboard", method = RequestMethod.GET)
	public String adminDashboard(Model model, HttpServletRequest request) {
		System.out.println("In hrm dashboard");

		/*
		 * if(LogInImplementationModel.isUserLogged(request)){
		 * 
		 * if(LogInImplementationModel.isUserAdmin(request)){
		 * 
		 * request.getSession().setAttribute("assignedModule",
		 * DashboardImplementationModel.getAdminModules(request));
		 * 
		 * return "index"; }else{ return "login"; }
		 * 
		 * 
		 * }else{ return "login";
		 * 
		 * }
		 */

		return "";

	}

	// Main request mapping for SubAdminDashboard
	@RequestMapping(value = "/subAdminDashboard", method = RequestMethod.GET)
	public String subAdminDashboard(Model model, HttpServletRequest request) {
		System.out.println("in subadmin");
		/*
		 * if(LogInImplementationModel.isUserLogged(request)){
		 * 
		 * if(LogInImplementationModel.isUserSubAdmin(request)){
		 * 
		 * request.getSession().setAttribute("assignedModule",
		 * DashboardImplementationModel.getSubAdminModules(request));
		 * 
		 * return "subAdminDashboard"; }else{ return "login"; }
		 * 
		 * 
		 * }else{ return "login";
		 * 
		 * }
		 */

		return "";

	}

	@RequestMapping(value = "/dashbord", method = RequestMethod.GET)
	public String Dashboard_test(Model model, HttpServletRequest request) {

		return "dashbord";
	}

	@RequestMapping(value = "/crustAdministration", method = RequestMethod.GET)
	public String crustAdministration(Model model, HttpServletRequest request) {

		// checking whether the loggedUser is logged or not by checking for null
		//also checking whether user is of super admin type or not
		if (Utility.getLoggedUser(request) != null
				&& Utility.getLoggedUser(request) != "" && Utility.getLoggedUserTypeUuid(request).equals("7b824b91-92c6-11e7-a05d-b8975ad405b5")) {

			model.addAttribute("uri", "crustAdministration");
			return "crustAdministration";

		} else {
			// is null or different user type logged then login page is returned
			model.addAttribute("userTypeSet",
					loginImplementationModel.getAlluserType());
			return "login";
		}

		
	}

	@RequestMapping(value = "/companyManagementDashboard", method = RequestMethod.GET)
	public String companyManagementDashboard(Model model,
			HttpServletRequest request) {

		// checking whether the loggedUser is logged or not by checking for null
		//also checking whether user is of company type or not
				if (Utility.getLoggedUser(request) != null
						&& Utility.getLoggedUser(request) != "" && Utility.getLoggedUserTypeUuid(request).equals("8d0f2733-92c8-11e7-a05d-b8975ad405b5")) {

					model.addAttribute("uri", "companyManagementDashboard");
					return "companyManagementDashboard";

				} else {
					// is null or different user type logged then login page is returned
					model.addAttribute("userTypeSet",
							loginImplementationModel.getAlluserType());
					return "login";
				}
	}

	@RequestMapping(value = "/header", method = RequestMethod.GET)
	public String header(Model model, HttpServletRequest request) {

		return "header";
	}

	@RequestMapping(value = "/reload", method = RequestMethod.POST)
	@ResponseBody
	public void logInProcess(HttpServletRequest request,
			HttpServletResponse response) {
		System.out.println("In aj reload");

	}

}

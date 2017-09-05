package com.mi.controller;

import java.sql.Date;
import java.util.List;
import java.util.ListIterator;

import javax.servlet.http.HttpServletRequest;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.mi.customModel.AssignedModule;

import com.mi.resource_util.HibernateUtil;

@Controller
public class HRMController {

	@RequestMapping(value = "/hrmDashboard", method = RequestMethod.GET)
	public String hrmDashboard2(Model model, HttpServletRequest request) {

		return "hrm_dashbord";
	}

	@RequestMapping(value = "/HRMDashboard", method = RequestMethod.GET)
	public String hrmDashboard(Model model, HttpServletRequest request) {
		/*if (LogInImplementationModel.isUserLogged(request)) {
			AssignedModule assignedModule = (AssignedModule) request
					.getSession().getAttribute("assignedModule");
			if (assignedModule.isHumanResourceManagement()) {

				HRMImplementationModel.getAllEmployee(request, model);

				return "HRMDashboard";
			} else {
				return "subAdminDashboard";
			}

		} else {
			return "login";
		}*/

		return "";
		
	}

	@RequestMapping(value = "/createEmployee", method = RequestMethod.GET)
	public String createEmployee(Model model, HttpServletRequest request) {
		System.out.println("in create employee");
		/*if (LogInImplementationModel.isUserLogged(request)) {
			AssignedModule assignedModule = (AssignedModule) request
					.getSession().getAttribute("assignedModule");
			if (assignedModule.isHumanResourceManagement()) {
				HRMImplementationModel.getDesignationByLoggedAdminBranch(request, model);
				model.addAttribute("formType", "create");
				return "createEmployee";
			} else {
				return "subAdminDashboard";
			}

		} else {
			return "login";
		}*/

		return "";
		
	}

	
	
	@RequestMapping(value = "/createEmployeeProcess", method = RequestMethod.POST)
	public String createEmployeeProcess(Model model,
			HttpServletRequest request) {
		/*System.out.println("in create employee process");
		
		HRMImplementationModel.saveEmployee(request);
		
		System.out.println("userId: " + request.getParameter("userId"));*/
		
		return "createEmployee";

	}
	
	@RequestMapping(value = "/modifyEmployee", method = RequestMethod.POST)
	public String modifyEmployee(Model model,
			HttpServletRequest request) {
		/*
		if (LogInImplementationModel.isUserLogged(request)) {
			AssignedModule assignedModule = (AssignedModule) request
					.getSession().getAttribute("assignedModule");
			if (assignedModule.isHumanResourceManagement()) {
				HRMImplementationModel.getUserById(request, model);
				model.addAttribute("formType", "modify");
				return "createEmployee";
			} else {
				return "subAdminDashboard";
			}

		} else {
			return "login";
		

			}*/
		
		return "";
		
	}
	
	@RequestMapping(value = "/modifyEmployeeProcess", method = RequestMethod.POST)
	public String modifyEmployeeProcess(Model model,
			HttpServletRequest request) {
		System.out.println("in modify employee process");
		
		/*if (LogInImplementationModel.isUserLogged(request)) {
			AssignedModule assignedModule = (AssignedModule) request
					.getSession().getAttribute("assignedModule");
			if (assignedModule.isHumanResourceManagement()) {
				
				System.out.println("userId: " + request.getParameter("userId"));
				HRMImplementationModel.modifyEmployee(request);
				HRMImplementationModel.getAllEmployee(request, model);
				return "HRMDashboard";
			} else {
				return "subAdminDashboard";
			}

		} else {
			return "login";
		

			}*/
		
		return "";
		
	}
}


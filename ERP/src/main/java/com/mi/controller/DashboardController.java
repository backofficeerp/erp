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

@Controller
public class DashboardController {

		//Main request mapping for AdminDashboard
		@RequestMapping(value="/adminDashboard", method = RequestMethod.GET)
		public String adminDashboard(Model model, HttpServletRequest request){
				System.out.println("In hrm dashboard");
				
				/*if(LogInImplementationModel.isUserLogged(request)){
					
					if(LogInImplementationModel.isUserAdmin(request)){
						
						request.getSession().setAttribute("assignedModule", DashboardImplementationModel.getAdminModules(request));
			
						return "index";
					}else{
						return "login";
					}
					
					
				}else{
					return "login";
					
				}*/
				
				return "";
				
			}

		
		//Main request mapping for SubAdminDashboard
		@RequestMapping(value="/subAdminDashboard", method = RequestMethod.GET)
		public String subAdminDashboard(Model model, HttpServletRequest request){
			System.out.println("in subadmin");
			/*if(LogInImplementationModel.isUserLogged(request)){
				
				if(LogInImplementationModel.isUserSubAdmin(request)){
					
					request.getSession().setAttribute("assignedModule", DashboardImplementationModel.getSubAdminModules(request));
					
					return "subAdminDashboard";
				}else{
					return "login";
				}
				
				
			}else{
				return "login";
				
			}*/
			
			return "";
				
		}
		
		@RequestMapping(value="/dashbord", method = RequestMethod.GET)
		public String Dashboard_test(Model model, HttpServletRequest request){
				
				return "dashbord";
			}
		
		@RequestMapping(value="/crustAdministration", method = RequestMethod.GET)
		public String crustAdministration(Model model, HttpServletRequest request){
				model.addAttribute("uri", "crustAdministration");
				return "crustAdministration";
			}
		
		@RequestMapping(value="/companyManagementDashboard", method = RequestMethod.GET)
		public String companyManagementDashboard(Model model, HttpServletRequest request){
				
				return "companyManagementDashboard";
			}
		
		@RequestMapping(value="/header", method = RequestMethod.GET)
		public String header(Model model, HttpServletRequest request){
				
				return "header";
			}
		
		
		
		
		@RequestMapping(value="/reload", method = RequestMethod.POST)
		@ResponseBody
		public void logInProcess(HttpServletRequest request, HttpServletResponse response){
			System.out.println("In aj reload");
			
				
			}
		
		
			
		
			
	}

	
	


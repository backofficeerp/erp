package com.mi.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class CompanyManagementController {

	
	@RequestMapping(value="/companyDetails", method = RequestMethod.GET)
	public String companyDetails(Model model, HttpServletRequest request){
			
			return "companyDetails";
		}
	
	@RequestMapping(value="/packageUpgrade", method = RequestMethod.GET)
	public String packageUpgrade(Model model, HttpServletRequest request){
			
			return "packageUpgrade";
		}
	
	@RequestMapping(value="/manageBranches", method = RequestMethod.GET)
	public String manageBranches(Model model, HttpServletRequest request){
		
		
		model.addAttribute("uri", "manageBranches");
		
		
			return "manageBranches";
		}
	
	@RequestMapping(value="/createBranch", method = RequestMethod.GET)
	public String createBranch(Model model, HttpServletRequest request){
		
		
		
			return "createBranch";
		}
	
	
}

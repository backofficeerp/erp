package com.mi.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.mi.implementations.CrustAdministrationImplementationModel;

@Controller
public class CrustAdministrationController {

	@RequestMapping(value = "createCompany", method = RequestMethod.GET)
	public String createCompany(Model model, HttpServletRequest request){
		
		model.addAttribute("countryList", CrustAdministrationImplementationModel.getAllCountry());
		model.addAttribute("companySizeList", CrustAdministrationImplementationModel.getAllCompanySize());
		model.addAttribute("companyTypeList", CrustAdministrationImplementationModel.getAllCompanyType());
		return "createCompany";
	}
	
	@RequestMapping(value = "companyListing", method = RequestMethod.GET)
	public String companyListing(Model model, HttpServletRequest request){
		
		model.addAttribute("uri", "companyListing");
		
		return "companyListing";
	}
	
	@RequestMapping(value = "createDesignation", method = RequestMethod.GET)
	public String createDesignation(Model model, HttpServletRequest request){
		
		model.addAttribute("uri", "createDesignation");
		
		return "createDesignation";
	}
	
	@RequestMapping(value = "createDepartment", method = RequestMethod.GET)
	public String createDepartment(Model model, HttpServletRequest request){
		
		model.addAttribute("uri", "createDepartment");
		
		return "createDepartment";
	}
	
}

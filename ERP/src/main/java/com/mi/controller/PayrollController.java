package com.mi.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.mi.implementations.CrustAdministrationImplementationModel;
import com.mi.implementations.PayrollImplementationModel;

@Controller
public class PayrollController {

	
	@RequestMapping(value = "createDesignationProcess", method = RequestMethod.POST)
	public String createDesignationProcess(Model model, HttpServletRequest request){
		System.out.println("ok i am here");
		String name=request.getParameter("designationName");
		
		PayrollImplementationModel.saveDesignation(request);
		/*model.addAttribute("countryList", CrustAdministrationImplementationModel.getAllCountry());
		model.addAttribute("companySizeList", CrustAdministrationImplementationModel.getAllCompanySize());
		model.addAttribute("companyTypeList", CrustAdministrationImplementationModel.getAllCompanyType());*/
		return "createDesignation";
	}
	
	
}

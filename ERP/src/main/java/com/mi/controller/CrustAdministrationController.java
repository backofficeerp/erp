package com.mi.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.mi.implementations.CrustAdministrationImplementationModel;
import com.mi.implementations.loginImplementationModel;
import com.mi.resource_util.Utility;

@Controller
public class CrustAdministrationController {

	@RequestMapping(value = "createCompany", method = RequestMethod.GET)
	public String createCompany(Model model, HttpServletRequest request) {

		// checking whether the loggedUser is logged or not by checking for null
		// also checking whether user is of super admin type or not
		if (Utility.getLoggedUser(request) != null
				&& Utility.getLoggedUser(request) != ""
				&& Utility.getLoggedUserTypeUuid(request).equals(
						"7b824b91-92c6-11e7-a05d-b8975ad405b5")) {

			// adding all the requisite dropdown
			model.addAttribute("countryList",
					CrustAdministrationImplementationModel.getAllCountry());
			model.addAttribute("companySizeList",
					CrustAdministrationImplementationModel.getAllCompanySize());
			model.addAttribute("companyTypeList",
					CrustAdministrationImplementationModel.getAllCompanyType());

			return "createCompany";

		} else {
			// is null or different user type logged then login page is returned
			model.addAttribute("userTypeSet",
					loginImplementationModel.getAlluserType());
			return "login";
		}

	}
	
	@RequestMapping(value = "modifyCompany", method = RequestMethod.POST)
	public String modifyCompany(Model model, HttpServletRequest request) {

			System.out.println("companyuuid: " + request.getParameter("companyUuid"));

			return "createCompany";


	}

	@RequestMapping(value = "companyListing", method = RequestMethod.GET)
	public String companyListing(Model model, HttpServletRequest request) {

		// checking whether the loggedUser is logged or not by checking for null
		// also checking whether user is of super admin type or not
		if (Utility.getLoggedUser(request) != null
				&& Utility.getLoggedUser(request) != ""
				&& Utility.getLoggedUserTypeUuid(request).equals(
						"7b824b91-92c6-11e7-a05d-b8975ad405b5")) {

			// binding the uri to model so that active side navigation select
			// can be fetched
			model.addAttribute("uri", "companyListing");
			model.addAttribute("CompanyMasterList",
					CrustAdministrationImplementationModel
							.getAllCompanyMaster(model, request));
			return "companyListing";

		} else {
			// is null or different user type logged then login page is returned
			model.addAttribute("userTypeSet",
					loginImplementationModel.getAlluserType());

			return "login";
		}

	}

	@RequestMapping(value = "createCompanyProcess", method = RequestMethod.POST)
	public String createCompanyProcess(Model model, HttpServletRequest request) {

		CrustAdministrationImplementationModel.saveCompany(request);

		// adding all the requisite dropdown
		model.addAttribute("countryList",
				CrustAdministrationImplementationModel.getAllCountry());
		model.addAttribute("companySizeList",
				CrustAdministrationImplementationModel.getAllCompanySize());
		model.addAttribute("companyTypeList",
				CrustAdministrationImplementationModel.getAllCompanyType());

		return "createCompany";

	}

}

package com.mi.implementations;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.ui.Model;

import com.mi.model.CompanyAdminMaster;
import com.mi.model.CompanyMaster;
import com.mi.model.CompanySizeMaster;
import com.mi.model.CompanyTypeMaster;
import com.mi.model.CountryMaster;
import com.mi.resource_util.HibernateUtil;
import com.mi.resource_util.Utility;

public class CrustAdministrationImplementationModel {

	public static List getAllCompanyType() {
		List companyTypeList = null;

		Session session = HibernateUtil.openSession();
		Criteria cr = session.createCriteria(CompanyTypeMaster.class);
		companyTypeList = (List) cr.list();
		session.close();
		return companyTypeList;
	}

	public static List getAllCountry() {
		List countryList = null;
		Session session = HibernateUtil.openSession();
		Criteria cr = session.createCriteria(CountryMaster.class);
		countryList = (List) cr.list();
		session.close();

		return countryList;
	}

	public static List getAllCompanySize() {
		List companySizeList = null;
		Session session = HibernateUtil.openSession();
		Criteria cr = session.createCriteria(CompanySizeMaster.class);
		companySizeList = (List) cr.list();
		session.close();

		return companySizeList;
	}

	// this return an arraylist object which is to be shown in manage companies
	// table
	public static List getAllCompanyMaster(Model model, HttpServletRequest request) {
		List companyMasterList = null;

		Session session = HibernateUtil.openSession();
		Criteria cr = session.createCriteria(CompanyMaster.class);
		companyMasterList = (List) cr.list();

		// binding the hib session object to model because the companyMasterList
		// object is going to be fetched depper and as lazy fetching is enable
		// therefore we have to keep this session oponed
		//also will be closing this session in the bottom of the jsp page
		request.setAttribute("companyMasterListSession", session);

		return companyMasterList;
	}

	// This method is for saving/creating the new company. Will get all the
	// required parameter from the request object
	// 'new' prefix on object variable means object which are going to be saved
	// or created in DB side
	// 'ref' prefix on object variable means object which are just going to be
	// used as a reference or foreign key for the persisting/new prefixed object
	public static void saveCompany(HttpServletRequest req) {
		// preparing all the required object which are to be persisted
		CompanyMaster newCompanyMaster = null;
		CompanyAdminMaster newCompanyAdminMaster = null;
		CompanySizeMaster refCompanySizeMaster = null;
		CompanyTypeMaster refCompanyTypeMaster = null;
		CountryMaster refCountryMaster = null;
		CompanyMaster refCompanyMaster = null;
		String newCompanyUuid = null;

		// opening a new hibernate session
		Session session = HibernateUtil.openSession();
		Transaction tr = session.beginTransaction();

		// preparing company size, company type and country object from user
		// input
		refCompanySizeMaster = new CompanySizeMaster();
		refCompanySizeMaster.setUuid(req.getParameter("companySize"));

		refCompanyTypeMaster = new CompanyTypeMaster();
		refCompanyTypeMaster.setUuid(req.getParameter("companyType"));

		refCountryMaster = new CountryMaster();
		refCountryMaster.setUuid(req.getParameter("country"));

		// preparing new company master object and also attaching the previous
		// three object with this
		newCompanyMaster = new CompanyMaster();
		newCompanyMaster.setCompanyName(req.getParameter("companyName"));
		newCompanyMaster.setCompanySizeMaster(refCompanySizeMaster);
		newCompanyMaster.setCompanyTypeMaster(refCompanyTypeMaster);
		newCompanyMaster.setCountryMaster(refCountryMaster);
		newCompanyMaster.setAddDate(Utility.getUTCInMillisecond());
		newCompanyMaster.setStatus("1");

		// saving the company master object with session and getting the
		// generated uuid to be further used as a foreingn key for company admin
		// master
		newCompanyUuid = (String) session.save(newCompanyMaster);

		// preparing the company master object for company admin master which is
		// to associated
		refCompanyMaster = new CompanyMaster();
		refCompanyMaster.setUuid(newCompanyUuid);

		// preparing the company_admin_master object from user input and also
		// attaching the previous company master object with this
		newCompanyAdminMaster = new CompanyAdminMaster();
		newCompanyAdminMaster.setFirstName(req.getParameter("firstName"));
		newCompanyAdminMaster.setMiddleName(req.getParameter("middleName"));
		newCompanyAdminMaster.setLastName(req.getParameter("lastName"));
		newCompanyAdminMaster.setMobileNo(req.getParameter("mobileNo"));
		newCompanyAdminMaster.setEmail(req.getParameter("email"));
		newCompanyAdminMaster.setPassword(Utility.EncryptText(req
				.getParameter("password")));
		newCompanyAdminMaster.setCompanyMaster(refCompanyMaster);
		newCompanyAdminMaster.setAddDate(Utility.getUTCInMillisecond());
		newCompanyAdminMaster.setStatus("1");

		// saving it in session
		session.save(newCompanyAdminMaster);

		// finally committing both the object to DB
		tr.commit();
		session.close();

	}

}

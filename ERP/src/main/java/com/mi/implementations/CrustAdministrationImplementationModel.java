package com.mi.implementations;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;

import com.mi.model.CompanySizeMaster;
import com.mi.model.CompanyTypeMaster;
import com.mi.model.CountryMaster;
import com.mi.resource_util.HibernateUtil;

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

}

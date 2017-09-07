package com.mi.implementations;

import javax.servlet.http.HttpServletRequest;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.mi.model.BranchMaster;
import com.mi.model.DesignationMaster;
import com.mi.resource_util.HibernateUtil;
import com.mi.resource_util.Utility;

public class PayrollImplementationModel {

	
	public static void saveDesignation(HttpServletRequest request){
		Session session = HibernateUtil.openSession();
		Transaction tr = session.beginTransaction();
		
		DesignationMaster newDesignationMaster = null;
		BranchMaster refBranchMaster = null;
		
		newDesignationMaster = new DesignationMaster();
		newDesignationMaster.setDesignationName(request.getParameter("designationName"));
		newDesignationMaster.setAddDate(Utility.getUTCInMillisecond());
		newDesignationMaster.setStatus("1");
		refBranchMaster = new BranchMaster();
		refBranchMaster.setUuid("5cdbe087-93bc-11e7-86fe-b8975ad405b5");
		newDesignationMaster.setBranchMaster(refBranchMaster);
		session.save(newDesignationMaster);
		
		tr.commit();
		session.close();
	}
	
}

package com.mi.resource_util;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class HibernateUtil {

	
	private static SessionFactory sessionFactory;
	private static Session session;
	
	static{
		sessionFactory = new Configuration().configure("com/mi/model/mysql.cfg.xml").buildSessionFactory();
	}
	
	public static Session openSession(){
		session = sessionFactory.openSession();
		return session;
	}
	
	public static Session getSession(){
		
		return session;
	}
	
	public static void closeSession(){
		
		System.out.println(session);
		if(session != null){
			System.out.println("session closed");
			session.close();
		}
		
	}
	
	public static void closeSessionFactory(){
		sessionFactory.close();
	}
	
}

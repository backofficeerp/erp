package com.mi.resource_util;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.StatelessSession;
import org.hibernate.cfg.Configuration;

public class HibernateUtil {

	
	private static SessionFactory sessionFactory;
	private static Session session;
	private static StatelessSession stateLessSession;
	
	static{
		sessionFactory = new Configuration().configure("com/mi/model/mysqlWEB.cfg.xml").buildSessionFactory();
	}
	
	public static Session openSession(){
		session = sessionFactory.openSession();
		return session;
	}
	
	public static Session getSession(){
		
		return session;
	}
	
	public static StatelessSession openStatelessSession(){
		stateLessSession = sessionFactory.openStatelessSession();
		return stateLessSession;
	}
	
	public static StatelessSession getStatelessSession(){
		
		return stateLessSession;
	}
	
	public static void closeStateLessSession(){
		if(stateLessSession != null){
			System.out.println("stateless session closed");
			stateLessSession.close();
		}
	}
	
	public static void closeSession(){
		
		if(session != null){
			System.out.println("session closed");
			session.close();
		}
		
	}
	
	public static void closeSessionFactory(){
		sessionFactory.close();
	}
	
}

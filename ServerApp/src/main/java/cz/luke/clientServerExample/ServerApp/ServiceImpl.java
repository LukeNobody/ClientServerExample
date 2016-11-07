package cz.luke.clientServerExample.ServerApp;

import cz.luke.clientServerExample.Common.hessian.Service;
import cz.luke.clientServerExample.Common.model.Message;

import org.apache.log4j.Logger;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

public class ServiceImpl implements Service {
	
	private static final Logger logger = Logger.getLogger(ServiceImpl.class);
	
	@Autowired
	SessionFactory mySessionFactory;
	
	@Override
	public String proceed(Message p) {
		if (logger.isDebugEnabled()) {
			logger.debug("Object received on server app");
		}
		Session session = mySessionFactory.openSession();
		session.beginTransaction();
		session.save(p);
		session.getTransaction().commit();
		session.close();
		

		if (logger.isDebugEnabled()) {
			logger.debug("Object added to database");
		}
		
		return String.valueOf(p.getId());
	}

}

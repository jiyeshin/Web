package test;

import org.junit.Test;

import dao.UserDao;
import dao.UserDaoImpl;
import vo.TMember;

public class Main {

	
	@Test
	public void sampleTest() {
		UserDao userDao = UserDaoImpl.sharedInstance();
		System.out.println(userDao.emailCheck("aaaa@aaaa.aaa"));
	}
		

	

}

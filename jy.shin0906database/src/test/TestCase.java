package test;

import org.junit.Test;

import dao.UserDao;
import dao.UserDaoImpl;
import vo.TMember;

public class TestCase {

	@Test
	public void sampleTest() {
		UserDao userDao = UserDaoImpl.sharedInstance();
		System.out.println(userDao.emailCheck("aaaa@aaaa.aaa"));
		/*
		TMember member = new TMember();
		member.setEmail("naver@naver.com");
		member.setName("관리자");
		member.setPhone("01097532468");
		member.setPw("11111");
		

		boolean r = userDao.memberRegister(member);
		System.out.println(r);*/
	}
}

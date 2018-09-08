package service;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;

import dao.UserDao;
import dao.UserDaoImpl;
import vo.TMember;

public class UserServiceImpl implements UserService {
	private UserDao userDao;
	private UserServiceImpl() {
		userDao = UserDaoImpl.sharedInstance();
	}
	private static UserService userService;
	public static UserService sharedInstance() {
		if(userService == null) {
			userService = new UserServiceImpl();
		}
		return userService;
	}
	@Override
	public TMember login(HttpServletRequest request) {
		//파라미터 전부 읽기 
		String email = request.getParameter("email");
		String pw = request.getParameter("pw");
		
		//아래 메시지가 안나오는 경우는 Controller 의 URL을 확인해보고 메소드 이름을 확인해야 함. 
		//파라미터가 잘못 나오는 경우는 jsp 파일의 name과 getParameter의 이름을 확인 
		//System.out.println("email: "+email+"   pw: "+pw);
		
		//수행할 연산이 있으면 연산을 수행 - 여기서는 없음 
		
		//호출할 DAO 메소드의 매개변수를 생성 
		TMember member = new TMember();
		member.setEmail(email);
		member.setPw(pw);
		
		//DAO 메소드 호출 
		TMember user = userDao.login(member);
		//결과 리턴 
		return user;
	}
	@Override
	public boolean memberRegister(HttpServletRequest request) {
		System.out.println("서비스 도착");
		boolean result=false;
		//파라미터 읽기 
		try {
			request.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e) {			
			e.printStackTrace();
		}
		String email = request.getParameter("email");
		String name = request.getParameter("name");
		String phone = request.getParameter("phone");
		String pw = request.getParameter("pw");
		//int gender = request.getParameter("gender");
		
		//Dao 메소드의 파라미터 만들기 
		TMember member = new TMember();
		member.setEmail(email);
		member.setName(name);
		member.setPw(pw);
		member.setPhone(phone);
		//member.setGender(gender);
		System.out.println(member);
		
		//Dao 메소드 호출 
		result=userDao.memberRegister(member);
		return result;		
	}
	@Override
	public boolean emailCheck(HttpServletRequest request) {
		//파라미터 읽어오기 
		String email = request.getParameter("email");
		
		//Dao의 메소드 호출 
		boolean result=userDao.emailCheck(email);
		
		return result;
	}
}

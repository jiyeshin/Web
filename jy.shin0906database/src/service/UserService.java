package service;

import javax.servlet.http.HttpServletRequest;
import vo.TMember;

//비즈니스 로직을 처리할 메소드를 선언할 인터페이스 
//여기의 메소드는 클라이언트의 요청1개당 1개로 매핑되어야 함. 
public interface UserService {
		public TMember login(HttpServletRequest request); //로그인을 처리하는 메소드 
		
		public boolean memberRegister (HttpServletRequest request); //회원가입을 처리하는 메소드 
		
		public boolean emailCheck(HttpServletRequest request);
}

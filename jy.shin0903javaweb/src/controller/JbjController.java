package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("*.jbj")
public class JbjController extends HttpServlet {
	private static final long serialVersionUID = 1L;       

    public JbjController() {
        super();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("jbj 요청 발생");
		
		//getRequestURI -> /jy.shin0903javaweb/login.jbj
		//getContextPath -> /jy.shin0903javaweb
		//login.jbj만 출력하기 위한 로직		
		String requestURI=request.getRequestURI();
		String contextPath=request.getContextPath();
		String command = requestURI.substring(contextPath.length()+1);
		switch(command) {
		case "longin.do":
			System.out.println("로그인 요청 처리");
			break;
		case "register.do":
			System.out.println("회원가입 요청 처리");
			break;
		}		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/register")
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public Register() {
        super();       
    }
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {		
		request.setCharacterEncoding("UTF-8");
		
		String email=request.getParameter("email");
		String name=request.getParameter("name");
		String pw=request.getParameter("pw");
		String gender=request.getParameter("gender");
		
		System.out.println("email: " + email);
		System.out.println("name: " + name);
		System.out.println("pw: " + pw);
		System.out.println("gender: " + gender);
		
		//결과 페이지에 전송할 데이터를 저장 - redirect는 request 안받음 
		/*
		request.setAttribute("msg", "회원가입에 성공하셨습니다.");
		
		//결과 페이지로 포워딩 - 새로고침하면 작업을 다시 수행 
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("output.jsp");
		dispatcher.forward(request, response);
		*/
		
		request.getSession().setAttribute("msg","회원가입에 성공하셨습니다.(getSession)");
		response.sendRedirect("output.jsp");
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {		
		doGet(request, response);
	}

}

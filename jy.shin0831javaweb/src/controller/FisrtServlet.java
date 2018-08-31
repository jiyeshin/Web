package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//url과 서블릿 클래스를 매핑시켜주는 어노테이션
@WebServlet("/park/*")
public class FisrtServlet extends HttpServlet {
	//Serializable 인터페이스를 implements한 경우 구분하기 위한 코드. 없으면 경고 
	private static final long serialVersionUID = 1L;
       
    //생성자
    public FisrtServlet() {
        super();
    }

	//get 방식으로 요청을 했을 때 호출되는 메소드 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//출력할 타입 설정 
		response.setContentType("text/html; charset=UTF-8;");
		//출력 객체 만들기 
		PrintWriter out = response.getWriter();
		out.print("<html><head>");
		out.println("<title>서블릿</title></head>");
		out.println("<body> 처음 만드는 서블릿 </body></html>");
	}

	//post 방식으로 요청을 했을 때 호출되는 메소드 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response); //처리를 doGet에게 위임(delegate)
	}

}

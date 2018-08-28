<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		//파라미터 읽기 
		request.setCharacterEncoding("utf-8");
	
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		//읽은 파라미터를 콘솔에 출력 
		System.out.println(id);
		System.out.println(pw);
		
		
		
		//결과 페이지로 이동 - 포워딩 방법 vs 리다이렉트 방법 
		/*
		//포워딩으로 결과 페이지로 이동  - process.jsp로 새로고침됨 . 
		RequestDispatcher dispatcher = request.getRequestDispatcher("result.jsp");
		dispatcher.forward(request, response);
	*/
	
	/*
		//리다이렉트로 결과 페이지로 이동 -url 이 변경됨 - result.jsp 로 새로고침됨. 
		request.setAttribute("data1", "리퀘스트"); //리퀘스트에 저장 - 이동하면 소멸됨 
		session.setAttribute("data2", "세션"); //세션에 저장 - 이동해도 유지됨 
		response.sendRedirect("result.jsp");
	*/
	
	
	//포워딩으로 이동 
	request.setAttribute("data1", "리퀘스트"); //리퀘스트에 저장 - 이동해도 유지됨.
	session.setAttribute("data2", "세션"); //세션에 저장 - 이동해도 유지됨 
	
	RequestDispatcher dispatcher = request.getRequestDispatcher("result.jsp");
	dispatcher.forward(request, response);
	
	%>



</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>배열과 리스트 생성 </title>
</head>
<body>
<%@page import = "java.util.*" %>
		<%
			/*
			//배열 
			String [] ar ={"자바스크립트", "자바", "씨언어", "파이썬"};
			request.setAttribute("list", ar); //배열의 데이터를 list라는 이름으로 request 객체에 저장 
		
			//결과를 출력할 페이지로 포워딩 
			RequestDispatcher dispatcher = request.getRequestDispatcher("listdisplay.jsp"); 
			dispatcher.forward(request, response);
			*/
			
			//리스트 
			List<String> list = new ArrayList<>();
			list.add("html");
			list.add("루비");
			list.add("R");
			list.add("php");
			request.setAttribute("list", list);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("listdisplay.jsp"); 
			dispatcher.forward(request, response);
			
			
			
			
			
			
			
		%>
</body>
</html>
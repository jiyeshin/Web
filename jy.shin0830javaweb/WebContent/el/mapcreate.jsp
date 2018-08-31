<%@page import="vo.Menu"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ page import = "java.util.*" %>
<%
/*
		Map <String, Object> map = new HashMap<>();
		map.put("coffee", "아메리");		
		map.put("price", 1500);
		
		//request에 저장 
		request.setAttribute("data", map);
*/

		vo.Menu menu = new vo.Menu();
		menu.setCoffee("라떼");
		menu.setPrice(2500);
		request.setAttribute("data", menu);
		
		
		
		
		//결과를 출력할 페이지로 포워딩 
		RequestDispatcher dispatcher = request.getRequestDispatcher("mapdisplay.jsp"); 
		dispatcher.forward(request, response);

%>

</body>
</html>
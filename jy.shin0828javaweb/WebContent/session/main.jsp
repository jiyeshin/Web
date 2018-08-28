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
	String id = (String)session.getAttribute("id");
	String nick = (String)session.getAttribute("nick");
	if(id==null){
		out.println("<a href = 'login.jsp'> 로그인 </a><br/>");
	}else{
		out.println("<p>" + nick + "님 환영합니다. </p>");
		out.println("<a href = 'logout.jsp'> 로그아웃 </a><br/>");
	}
%>
	
	
</body>
</html>
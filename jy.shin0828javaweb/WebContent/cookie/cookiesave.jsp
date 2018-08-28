<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
 <!-- 쿠키에 저장되는 데이터가 한글이라서 utf-8로 인코딩하기위한 클래스를 사용하기 위해서 import -->
<%@ page import='java.net.*' %>    

<%
	String msg = "hello";
	String value = URLEncoder.encode(msg, "utf-8"); //utf-8로 인코딩 
	Cookie cookie = new Cookie("greeting", value); //쿠키 생성 
	response.addCookie(cookie); //브라우저에 쿠키 저장 
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠키 생성 </title>
</head>
<body>
	<a href='cookieread.jsp'> 쿠키 읽기 </a>
</body>
</html>
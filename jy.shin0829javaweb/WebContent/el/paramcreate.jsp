<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>파라미터와 쿠키 </title>
</head>
<body>
		<% 
				//쿠키 생성과 저장 
				Cookie cookie = new Cookie("sessionid", "hashik83kd42");
				response.addCookie(cookie);
		
		%>
		
		<a href = 'paramdisplay.jsp?query=rain'> 파라미터 출력 </a>
		
</body>
</html>
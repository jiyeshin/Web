<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <%
 	Cookie [] cookies = request.getCookies(); //모든 쿠키 가져오기 
 %>   
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@page import = "java.net.*" %>
<%

	//배열이나 리스트의 데이터를 순회할 떄는 이렇게 null이  아 때 순회하도록해야 
	//NullPointerException이 발생하지 않음 
	if(cookies !=null && cookies.length>0){
	//모든 쿠키를 순회하면서 쿠키의 값을 읽어서 출력 
			for(Cookie cookie : cookies){
						String value = cookie.getValue();
						String msg = URLDecoder.decode(
								value, "utf-8");
						out.println(cookie.getName() + ":"+msg+"<br/>");
			}
	}
%>
</body>
</html>
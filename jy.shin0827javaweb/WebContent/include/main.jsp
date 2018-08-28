<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>소스코드 포함하기 </title>
</head>
<body>
	<% int num=787; %>
	<!-- sub.jspf 파일을 포함하기  -->
	<%@ include file="sub.jspf"  %>
	
	<!-- sub.jsp 파일에 str이라는 변수가 있으므로 가져와서 출력  -->
	<div><%=str %></div>

</body>
</html>
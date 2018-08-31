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
		String attr = application.getInitParameter("user12");
		System.out.println(attr);
		%>
		<p> 파라미터: ${param.query }</p>
		<p> 쿠키: ${cookie.sessionid.value }</p>
		<p>초기화 파라미터: ${initParam.user12 }</p>
</body>
</html>
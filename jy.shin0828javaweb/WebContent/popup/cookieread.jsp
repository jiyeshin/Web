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
	 Cookie [] cookies = request.getCookies();
	boolean flag = false;
	if(cookies != null){
		for(Cookie cookie : cookies){
			if(cookie.getName().equals("popup")){
				flag = true;
				break;
			}
		}
	}
	if(flag==false){
		out.println("<script>");
		out.println("window.open('https://www.google.com', 'google', width='300')");
		out.println("</script>");
	}
	%>

</body>
</html>
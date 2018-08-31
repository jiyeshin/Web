<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

 <%@ page errorPage = "/error/errorview.jsp" %>   
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>에러 발생 페이지 </title>
</head>
<body>
<!--  name이라는 파라미터가 없는데 메소드를 호출해서 널포인터익셉션이 발생  -->
	<%=request.getParameter("name").toLowerCase()%>
</body>
</html>
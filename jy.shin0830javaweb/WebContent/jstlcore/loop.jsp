<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		<ul>
		<!-- items 자리를 바꿔가면 확인해보기  -->
				<c:forEach var="temp" items="${str}">
						<li> ${temp} </li> 
				</c:forEach>
		</ul>
</body>
</html>
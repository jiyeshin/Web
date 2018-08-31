<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <!--jstl의 core 기능을 사용하기위한 태그 라이브러리 설정  -->
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>choose test</title>
</head>
<body>
<c:choose>
		<c:when test="${param.score >=90 }">
				<h3> 당신의 성적은 A입니다. </h3>
		</c:when>
		<c:when test="${param.score >=80 }">
				<h3> 당신의 성적은 B입니다. </h3>
		</c:when>
		<c:when test="${param.score >=70 }">
				<h3> 당신의 성적은 C입니다. </h3>
		</c:when>
		<c:when test="${param.score >=60 }">
				<h3> 당신의 성적은 D입니다. </h3>
		</c:when>
		<c:otherwise>
				<h3> 당신의 성적은 F입니다. </h3>
		</c:otherwise>
</c:choose>		
</body>
</html>
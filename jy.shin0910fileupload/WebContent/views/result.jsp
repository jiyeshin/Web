<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결과 페이지 </title>
</head>
<body>
	이름: ${map.name}<br/>
	업로드 된 파일 이름: ${map.uploadname}<br/>
	원본 파일 이름: ${map.originalname}<br/>
</body>
</html>
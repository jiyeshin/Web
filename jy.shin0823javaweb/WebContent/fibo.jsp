<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
     <!-- 패키기 import -->
 <%@ page import="java.util.*"   %>
 
 <!-- 불필요한 공백 제거  -->
 <%@ page trimDirectiveWhitespaces="true"  %> 
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
//20번째 피보나치 수열의 값 구하기 

int n1=1;
int n2=1;
int fibo = 1;
int idx=3;
while(idx<=20){
	fibo=n1+n2;
	n1=n2;
	n2=fibo;
	idx=idx+1;
}

%>
20번째 피보나치 수열의 값음 <%=fibo %> 입니다. 
</body>
</html>
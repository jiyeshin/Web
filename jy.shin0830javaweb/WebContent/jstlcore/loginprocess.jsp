<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
		session.setAttribute("id", "ididididididid"); //세션에 아이디 저장 
		response.sendRedirect("loginresult.jsp"); //결과 페이지로 리다이렉트

%>
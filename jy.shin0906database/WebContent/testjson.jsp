<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="org.json.*"%>
<%
	JSONObject obj = new JSONObject();
	obj.put("name", "권이름");
	
	JSONArray ar = new JSONArray();
	ar.put("김이름");
	ar.put("마바사");
	ar.put("아메리");
	
%>

<%=obj%>
<%=ar%>
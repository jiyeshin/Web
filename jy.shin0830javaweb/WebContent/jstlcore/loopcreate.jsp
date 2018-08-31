<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="java.util.*" %>

<%
		//문자열 배열 만들기 
		String [] msg = {"Hello", "Hi", "Hola"};
		
		
		//문자열 리스트 만들기 
		List <String> list = new ArrayList<>();
		list.add("java");
		list.add("html");
		list.add("ruby");
		
		//맵 객체 생성하고 데이터 저장 
		Map <String, Object> map = new HashMap<>();
		map.put("language", "C");
		map.put("DB", "oracle");
		
		//,로 구분된 문자열 만들기 
		String str ="Asd,Fgg,Hjk";
		
		//결과 페이지에 전달하기위해서 데이터 저장 
		request.setAttribute("msg", msg);
		request.setAttribute("list", list);
		request.setAttribute("map", map);
		request.setAttribute("str", str);
		
		//결과 페이지로 이동하기 
		//결과를 출력할 페이지로 포워딩 
		RequestDispatcher dispatcher = request.getRequestDispatcher("loop.jsp"); 
		dispatcher.forward(request, response);
		
		


%>

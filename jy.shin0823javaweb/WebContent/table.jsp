<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
     <!-- 패키기 import -->
 <%@ page import="java.util.*"   %>
 
 <!-- 불필요한 공백 제거  -->
 <%@ page trimDirectiveWhitespaces="true"  %>    
   
 <%
 //테이블 형식의 데이터 만들기  
 List<Map<String, Object>> list = new ArrayList<>();
 Map <String, Object> table = new HashMap <>();
 table.put("이름", "가나다");
 table.put("나이", 30);
 list.add(table);
 
 table = new HashMap<>();
 table.put("이름", "마바사");
 table.put("나이", 40);
 list.add(table);
 
 
 
 %>  
   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Map의 List를 출력 </title>
</head>
<body>
<table border='1' align='center' width='300'>
	<tr>
		<th> 이름 </th> 
		<th> 나이  </th>
	</tr>
	<% for(Map map : list){%>
		 <tr>
		 	<td><%=map.get("이름") %></td>
		 	<td><%=map.get("나이") %></td>
		 </tr>
		 	
		 
		 
	<%  }%> 



</table>


</body>
</html>
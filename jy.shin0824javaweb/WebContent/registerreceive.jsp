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
	request.setCharacterEncoding("utf-8");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String birth= request.getParameter("birth");
		String tel= request.getParameter("tel");
		String etc = request.getParameter("etc");
	%>

	이메일:<%=email %><br/>
	비밀번호: <%=password%><br/>
	생년월일: <%=birth%><br/>
	전화번호: <%=tel%><br/>
	기타사항: <%=etc%><br/>

<%
	response.sendRedirect("페이지 경로 ");
%>

</body>
</html>
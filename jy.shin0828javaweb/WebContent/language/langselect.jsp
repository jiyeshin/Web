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
		
		Cookie [] cookies = request.getCookies(); //쿠키 읽기 
		String lg = "kor"; //쿠키 값 저장할 변수 
		//lang이라는 이름의 쿠키의 값을 lg라는 변수에 저장 
		if(cookies != null){
			for(Cookie ck : cookies){
					if(ck.getName().equals("lang")){
						lg=ck.getValue();
					}
			}
		}
		if(lg.equals("eng")){
				out.println("<h3> English </h3>");
		}else{
				out.println("<h3> 한글 </h3>");
		}
		
	%>


	<!-- form의 데이터를 langsave.jsp로 전송  -->
	<form action='langsave.jsp'>
		<h3> 언어 선택 </h3>
		<input type='radio' value = 'eng' name='lang' id='english'/> 영어 
		<input type='radio' value = 'kor' name = 'lang' checked='checked' id='korean'/> 한국어 <br/>
		<input type='submit' value = '선택완료'/>	
	</form>
	<script>
		<% 
				if(lg.equals("eng")){
					out.println("document.getElementById('english').checked=true");
				}
		%>
	</script>
	
</body>
</html>
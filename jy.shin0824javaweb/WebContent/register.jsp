<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ page import="java.util.*, java.io.*" %>
<%
	//문자열을 파일에 기록 
	// 접속한 ip 주소 가져오기 
	String ip = request.getRemoteAddr();
	//접속한 날짜 구하기 
	Date date = new Date();
	Calendar cal = new GregorianCalendar();
	int year = cal.get(Calendar.YEAR);
	int month=cal.get(Calendar.MONTH)+1;
	int day=cal.get(Calendar.DATE);
	String filename= year + "" + month + "" + day +".txt";
	//기록할 파일 스트림 객체 만들기 
	PrintWriter pw = new PrintWriter(new FileOutputStream("/Users/a503-12/Documents/" + filename, true));
	pw.println(ip + " - " + date + "\n");
	pw.flush();
	pw.close();

%>

<%
//web.xml 파일에 설정한 초기화 파라미터 읽기 
String dbname = application.getInitParameter("dbname");
out.println("읽어온 파라미터: "+ dbname + "<br/>");
%>

<form action="registerreceive.jsp" method="post">
<h1 align='center'> 가입신청 </h1>
	<table align='center' cellspacing='10' border='1'>
	<tr>
		<td width='100' align='right'> 이메일 </td>
		<td width='200'> <input type='email' name='email' size='30'/></td>
	</tr>
	<tr>
		<td width='100' align='right'> 비밀번호 </td>
		<td width='200'><input type='password' name='password' size='30'/></td>
	</tr>
		<tr>
		<td width='100' align='right'> 비밀번호 확인 </td>
		<td width='200'><input type='password' size='30'/></td>
	</tr>
	<tr>
		<td width='100' align='right'> 생년월일 </td>
		<td width='200'><input type="date" name='birth'size='30'/></td>
	</tr>
	<tr>
		<td width='100' align='right'> 전화번호 </td>
		<td width='200'><input type="tel" name='tel'size='11' maxlength='11'/></td>
	</tr>
	<tr>
		<td width='100' align='right'> 기타사항 </td>
		<td width='200'><textarea cols='40' rows='10' name='etc'/></textarea></td>
	</tr>
	<tr>
		<td colspan='2' align='center'> <input type='submit' value='회원가입' /><input type='reset' value='작성취소' /></td>
	</tr>
	</table>
</form>


</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>파라미터 전송 </title>
</head>
<body>
	<a href='parameterreceive.jsp?name=kim&age=24'> 파라미터 전송 </a> <br/>
	
	<form action='formreceive.jsp' method='get'>
	<br/><br/>
		이메일<input type='email' name='email'/><br/>
		<fieldset>
			<legend> 성별 </legend>
			<input type='radio' value='woman' name='gender' checked='checked'/>여자  
			<input type='radio' value='man' name='gender' />남자  
		</fieldset>
		<fieldset>
			<legend> 취미 </legend>
			<input type='checkbox' name='hobby' value='reading'/>독서  
			<input type='checkbox' name='hobby' value='swimming'/>수영 
			<input type='checkbox' name='hobby' value='game'/>게임 
			<input type='checkbox' name='hobby' value='sports'/>운동 
			<input type='checkbox' name='hobby' value='movie'/>영화   	
		</fieldset>
	
	<br/><input type='submit' value='전송' /><br/>
	
	</form>
</body>
</html>
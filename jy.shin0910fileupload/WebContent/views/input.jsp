<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 데이터 입력 화면 </title>
</head>
<body>
	<form action="insert.file" method="post" enctype="multipart/form-data">
		첨부파일: <input type="file" name="file"/> <br/>
		보충설명: <input type="text" name="description"/><br/>
		<input type="submit" value="데이터 전송"/>
	</form>
</body>
</html>
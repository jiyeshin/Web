<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jquery 연습 </title>
<style>
	a{  text-decoration:none;}
	
</style>
</head>
<body>

	프로젝트 이름까지의 경로: ${pageContext.request.contextPath} <!--webContent까지의 위치와 같음  -->

	<input type="button" value="클릭" id="btn"/>
	<a href="logout"> 로그 아웃 </a>
	
		<nav>
				<ul>
				<li><a href="login.jbj"> 로그인 </a></li>
				<li><a href="register.jbj">회원가입</a></li>
				</ul>
		</nav>
	
	
</body>
<script src="${pageContext.request.contextPath}/resources/js/jquery.js">
</script>

<script>
	$('#btn').bind('click', function(){
		console.log("로그출력")
	});
	
	//브라우저창을 닫거나 새로 고침을 할 때 
	$(window).bind("beforeunload", function(){
		//서버에게 logout요청을 ajax로 전송 
		$.ajax({
			url:"logout"
		})
	});
	

	
	//스크립트에 $로 시작하면 jquery를 사용하는것임. 
	//문서의 내용을 전부 읽자마자 
	/*
	$(function(){
		alert("jquery를 사용합니다. ")
	})
*/
</script>

</html>
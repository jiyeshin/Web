<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>페이지 이동 - HTML에서 요청 </title>
</head>
<body>
	<a href='process.jsp'> process로 이동 </a> <br/>
	<form action='process.jsp' id='myform'> 
			이메일 <input type='email' name='email'/><br/>
			비밀번호 <input password='password' name='pw'/><br/>
			<input type='submit' value='전송' />
	</form>
	
	<input type='button' value='location 이용' id='btn1'/>
	<input type='button' value='window 이용' id='btn2'/>
	<input type='button' value='뒤로가기' id='backbtn'/>
	<input type='button' value='새로고침' id='reloadbtn'/>
	<input type='button' value='폼 데이터 전송' id='formsubmitbtn'/>
	<input type='button' value='ajax' id='ajaxbtn'/>
	
</body>
<script>
		var btn1 = document.getElementById("btn1")
		var btn2 = document.getElementById("btn2")
		var backbtn = document.getElementById("backbtn")
		var reloadbtn = document.getElementById("reloadbtn")
		var formsubmitbtn = document.getElementById("formsubmitbtn")
		var ajaxbtn = document.getElementById("ajaxbtn")
		
		btn1.addEventListener("click", function(e){
			location.href='process.jsp?email=관리자' //process.jsp 요청 
		});
		btn2.addEventListener("click", function(e){
			window.location='process.jsp' //process.jsp 요청 
		});
		backbtn.addEventListener("click", function(e){
			history.back(); //이전 url로 이동 
		});
		reloadbtn.addEventListener("click", function(e){
			location.reload(); //새로고침 - 현재 url을 다시 요
		});
		formsubmitbtn.addEventListener("click", function(e){
			document.getElementById("myform").submit(); 
		});
		ajaxbtn.addEventListener("click", function(e){
			var request = new XMLHttpRequest(); //ajax 요청 객체 생성 
			//request.open('GET', 'process.jsp?email=master');//요청을 생성
			
			//ajax에서 post 방식으로 파라미터 전송 
			request.open('POST', 'process.jsp');
			request.setRequestHeader("Content-type", 'application/x-www-form-urlencoded') //전송방식을 form으로 설정해서 post방식으로 전송. 
			request.send('email=1234@gmail.com'); //요청 
			//ajax 요청에 성공하면 호출되는 콜백 메소드 등록 
			request.onreadystatechange = function(){
				if(request.state ==4){
					if(request.status>=200 && request.status<300){
						alert("요청 성공")
					}
				}
			}
		});
		
		
		
		
</script>

</html>
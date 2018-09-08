<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>회원가입 </h2>
	<div id="registermsg">${registermsg }</div>
	<form autocomplete="off" action="insert" method="post" id="registerform">
		<label for="email"> 이메일 </label> <input type="email" name="email" id="email" required="required"/><br/>
		
		<span id="emailmsg"></span>
		<br/>
		<label for="password"> 비밀번호 </label> <input type="password" name="pw" id="pw" required="required"/><br/>
		<label for="name"> 이름 </label> <input type="text" name="name" id="name" required="required"/><br/>
		<label for="phone"> 전화번호</label> <input type="tel" name="phone" id="phone" /><br/>
		
		<input type="submit" value="회원가입"/>
		<input type="button" value="메인으로" onclick="location.href='../'"/> 
		<!--../를 빼고 쓰면 경로가 생각과 다름. 왜냐하면 파일의 위치를 기준으로 이동하는게 아니라 URL 기준임.   -->
		
	</form>
</body>
<script src="${pageContext.request.contextPath}/resources/js/jquery.js"></script>
<script>
	var email = document.getElementById("email")
	var emailmsg = document.getElementById("emailmsg")
	
	var emailcheck=false; //이메일 중복 검사 통과 여부를 저장할 변수 
	
	email.addEventListener("blur", function(){
		emailchekc=false;
		var value = email.value //이메일에 입력된 값 가져오기 
		
		$.ajax({
			url: 'emailcheck',
			data:{'email': value},
			dataType: 'json',
			success:function(result){
				if(result.result==true){
					emailmsg.innerHTML = "사용 불가능한 아이디입니다."
					emailmsg.style.color="red";
					emailcheck=false;
				}else{
					emailmsg.innerHTML = "사용 가능한 아이디입니다."
					emailmsg.style.color="blue";
					emailcheck=true;
				}
			}
		});
	});
	//폼의 데이터를 전송할 때 
	document.getElementById("registerform").addEventListener("submit", function(e){
		var event = e || window.event
		if(emailcheck==false){
			alert("이메일 중복 체크를 하세요")
			emailmsg.innerHTML="이메일 중복 체크를 다시 하세요"
			event.preventDefault(); //이벤트 발생시 기본적으로 수행하는 내용을 하지 않기. 폼의 데이터가 전송되지 않음. 
		}
	})
	
</script>

</html>
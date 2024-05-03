<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  
 
  <!--Bootstrap Css-->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
  <!--Font-aweome-->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
 <link href="https://fonts.googleapis.com/css2?family=Poppins&display=swap" rel="stylesheet">
  <!--Custom Css-->  
   <link type="text/css" rel="stylesheet" href="css/style.css"/> 




	<!-- css적용되도록 login.css 파일을 연결시킵니다. -->
	<link href="${pageContext.request.contextPath}/resources/css/member/login.css" rel="stylesheet">
	
		
		<title>로그인 페이지</title>

</head>

<body>
<div class="distance">
	<div class="title">
		<a href="http://localhost:8080/urihome_mini_web">
			<img src="${pageContext.request.contextPath}/resources/image/common/LOGO.png" width="150"/>
		</a>
	</div>



	<div class="login-wrapper">
		<h2>로그인</h2>
		<form method="post" action="${pageContext.request.contextPath}/login" id="login-form">
			<input type="text" name="mid" placeholder="아이디" required>
			<input type="password" name="mpassword" placeholder="비밀번호" required>
			
			
			<label for="remember-check">
				<input type="checkbox" id="remember-check">아이디 저장
			</label>
			
			
			<button class="loginbutton" type="submit">로그인</button>
			
			
		</form>
		<div class="login-function">
			
			<a href="${pageContext.request.contextPath}/member/idFind">아이디 찾기</a>|
			<a href="${pageContext.request.contextPath}/member/passwordFind">비밀번호 찾기</a>|
			<a href="${pageContext.request.contextPath}/member/joinForm">회원 가입</a>
		</div>		
		
	</div>
		
	<div class="container">
		<img width="400px" height="200px"src="${pageContext.request.contextPath}/resources/image/loginbt.png">
	</div>
	
	<div class="footer">
			<span>Urizip Copyright .All Rights Reserved</span>
	</div>
</div>	


</body>



</html>
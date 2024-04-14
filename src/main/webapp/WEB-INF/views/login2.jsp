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




	<!-- css적용되도록 login2.css 파일을 연결시킵니다. -->
	<link href="${pageContext.request.contextPath}/resources/css/login2.css" rel="stylesheet">
	<!-- boxicons 홈페이지에서 이미지 가져오기위해 사용합니다. -->
	<link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
		<!-- 페이지 상단에 로그인 페이지라고 뜹니다. -->
		<title>로그인 페이지</title>

</head>

<body>

<div class="header">
	<!-- Urizip에 a태그로 감싸서 메인홈페이지로 이동하는 링크를 걸어줍니다. -->
	<a class="title" href="/urihome_mini_web">
		<h1>Urizip</h1>
	</a>
</div> 


<div class="body">
	<!-- 클래스명 wrapper로 로그인기능에 해당하는부분을 묶어줍니다. -->
	<div class="wrapper">
		<!-- form태그
		action속성은 폼을 전송할 서버쪽 스크립트 파일을 지정합니다. 
		name속성은 폼을 식별하기 위한 이름을 지정합니다 -->
		<form action="" name="login">
			
			
			<!--Login를 h태그로 감싸서 어떤기능하는부분인지 제목으로 지정해줍니다.-->
			<h1>Login</h1>
			
			<!-- input태그
			type속성은 입력태그의 유형을 나타냅니다.
			placeholder속성은 입력 이전에 기본적으로 출력될 문자열을 정의합니다.
			required속성은 입력되지않았을때 입력하도록 문구가 나타납니다.-->
			<!-- id를 입력하는 div부분입니다. -->
			<div class="input-box">
				<input type="text" placeholder="Userid" required>
				<!--boxicons 홈페이지에서 사람모양 이미지를 가져옵니다. -->
				<i class='bx bxs-user'></i>
			</div>
			
			<!-- password를 입력하는 div부분입니다. -->
			<div class="input-box">
				<input type="password" placeholder="Password" required>
				<!--boxicons 홈페이지에서 자물쇠 이미지를 가져옵니다. -->
				<i class='bx bxs-lock-alt' ></i>
			</div>
			
			<!-- 아이디기억 체크박스가 있는 div부분 입니다.  -->
			<div class="remember-id">
				<!--lable태그로 input태그를 감싸주면 글씨부분을 클릭해도 체크박스가 작동한다. -->
				<label>
					<input type="checkbox">아이디 기억
				</label>
				
				<!-- 비밀번호찾기,아이디찾기를 우측 정렬하기위해서 justify-content-end를 사용 -->
				<div class="d-flex justify-content-end">
					<a href="#">비밀번호 찾기</a>
					<!-- 비밀번호,아이디 찾기 구분하기위해 / -->
					/
					<a href="#">아이디 찾기</a>
				</div>
				
			</div>
			
			<!-- 버튼의 타입을 submit /submit은 폼데이터를 제출하는 제출버튼임을 명시합니다. -->
			<button type="submit" class="btn">Login</button>
			
			<!-- 회원가입 링크가 걸려있는 div부분입니다. -->
			<div class="register-link">
				<p><a href="#">회원가입</a></p>				
			</div>
			
		</form>
	</div>
</div>
</body>

</html>
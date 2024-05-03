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
	<link href="${pageContext.request.contextPath}/resources/css/member/idFind.css" rel="stylesheet">
	
		
		<title>아이디 찾기 페이지</title>

</head>

<body>

<%@ include file="/WEB-INF/views/common/header.jsp" %>
	



	<div class="idfind-wrapper">
		<h2>아이디 찾기</h2>
						
		<input type="radio" id="email" name="contactMethod" value="email" checked>
		<label for="email">이메일로 찾기</label>
		<input type="radio" id="phone" name="contactMethod" value="phone">
		<label for="phone">전화번호로 찾기</label><br>	
			
			
		<form method="post" action="#" id="idfind-form">			
			<input type="text" name="userName" placeholder="이름" required>
			
			
			<div id="emailField" >
		        <input type="email" id="emailInput" name="email" placeholder="이메일">
		    </div>
		    <div id="phoneField" style="display: none;">
		        <input type="text" id="phoneInput" name="phone" placeholder="전화번호">
		    </div>			
			
			<button class="idfindbutton" type="submit">확인</button>			
		</form>
		<div class="idfind-function" >
			<a href="${pageContext.request.contextPath}/member/passwordFind">비밀번호 찾기</a>|
			<a href="${pageContext.request.contextPath}/member/login">로그인 화면이동</a>|
			<a href="${pageContext.request.contextPath}/member/joinForm">회원 가입</a>
		</div>		
		
	</div>	
	
	
<%@ include file="/WEB-INF/views/common/footer.jsp" %>


<script>
    const emailField = document.getElementById('emailField'); /*id가 'emailField'인 요소를 찾아서 가져오는 역할을 합니다. emailField <-변수명*/
    const phoneField = document.getElementById('phoneField'); 

    document.querySelectorAll('input[name="contactMethod"]').forEach((radio) => { /*name 속성이 "contactMethod"인 모든 <input> 요소를 선택하고, 각 요소에 대해 반복적으로 작업을 수행합니다. */
        radio.addEventListener('change', function() { /*요소에 이벤트 리스너를 추가합니다. 'radio' 변수에 저장된 라디오 버튼 요소에 대해 'change' 이벤트를 감지하고, 해당 이벤트가 발생할 때 실행할 함수를 등록하는 것입니다.  */
            if (this.value === 'email') { /*radio의 값이 email일때*/
                emailField.style.display = 'block';
                phoneField.style.display = 'none';
            } else if (this.value === 'phone') { /*radio의 값이 phone일때*/
                emailField.style.display = 'none';
                phoneField.style.display = 'block';
            }
        });
    });
</script>


</body>



</html>
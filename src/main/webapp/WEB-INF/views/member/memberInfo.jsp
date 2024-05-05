<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
      <meta charset="UTF-8">
      <title>회원 정보 수정 | 우리집</title>
      <!-- Bootstrap 5를 위한 외부 라이브러리 설정 -->
	  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
	  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
	  <!-- jQuery 외부 라이브러리 설정 -->
	  <script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.min.js"></script>
	  <script src="${pageContext.request.contextPath}/resources/js/member/mypage.js" rel="stylesheet"></script>
	  
	  <!-- 사용자 정의 자바스크립트 -->
	  <script>
	   
	  </script>
	  
   </head>
   <!-- css 적용 -->
   	<link href="${pageContext.request.contextPath}/resources/css/member/mypage.css" rel="stylesheet">
   	<link href="${pageContext.request.contextPath}/resources/css/member/memberInfo.css" rel="stylesheet">
   <body>
    <%@ include file="/WEB-INF/views/common/header.jsp" %>
    
    <!-- 전체 div -->
    <div class="mypage-div d-flex">
    	<!-- mypage-tab -->
		<jsp:include page="/WEB-INF/views/member/mypageTab.jsp"></jsp:include>
		
		<div class="member-info mx-5" style="flex: 5;">
			<div class="mb-5 ms-5" id="signUp">
				<h3><strong>회원정보수정</strong></h3>
			</div>
			<div id="joinFormDiv">
				<form id="joinForm" name="joinForm" onsubmit="joinFormCheckData()" method="post" action="join" class="validation-form" novalidate>
					<div class="form-group mt-4">
						<label class="form-label">아이디</label>
						<input type="text" class="form-control" onchange="isRightID()" id="mid" name="mid">
						<span class="form-text" id="midSpan">알파벳, 숫자를 혼용해서 6자 이상 20자 이하</span>
					</div>
					<div class="form-group mt-2">
						<label class="form-label">비밀번호</label>
						<input type="password" class="form-control" onchange="isRightPassword()" id="mpassword" name="mpassword">
						<span class="form-text" id="mpasswordSpan">알파벳 대소문자, 숫자, 특수문자를 혼용해서 8자 이상 15장 이하</span>
					</div>
					<div class="form-group mt-2">
						<label class="form-label">비밀번호 확인</label>
						<input type="password" class="form-control" onchange="isRightPasswordCheck()" id="mpasswordCheck" name="mpasswordCheck">
						<span class="form-text" id="mpasswordCheckSpan">&nbsp;</span>
					</div>
					<div class="form-group mt-2">
						<label class="form-label">이름</label>
						<input type="text" class="form-control" onchange="isRightName()" id="mname" name="mname">
						<span class="form-text" id="nameSpan">&nbsp;</span>
					</div>
					<div class="mt-2">
						<label class="form-label">주소</label>
						<div class="d-flex">
						<span ><input type="text" class="form-control mb-2" id="mzip" name="mzip" placeholder="우편번호" disabled></span>
						<span><input type="button" id="addressBtn" name="addressBtn" value="우편번호" class="btn btn-outline-secondary btn-sm ms-1 mt-1"></span>
						</div>
						<div>
							<span><input type="text" class="form-control mb-2" id="maddress" name="maddress" placeholder="기본 주소" disabled></span>
						</div>
						<div>
							<span><input type="text" class="form-control" id="mdetailAddress" name="mdetailAddress" placeholder="나머지 주소"></span>
						</div>
					</div>
					<div class="mt-3">
						<label class="form-label align-middle">일반전화</label>
						<div class="d-flex">
						<div>
							<span>
								<select class="form-select" id="mtel1" name="mtel1">
									<option>02</option>
									<option>031</option>
								</select>
							</span>
						</div>
						<div>
							<span><input type="text" class="form-control" onchange="isRightNormalPhone()" id="mtel2" name="mtel2"></span>
						</div>
						<div>
							<span><input type="text" class="form-control" onchange="isRightNormalPhone()" id="mtel3" name="mtel3"></span>
						</div>
						</div>
						<span class="form-text" id="mtelSpan">&nbsp;</span>
					</div>
					<div class="mt-2">
						<label class="form-label align-middle">휴대전화</label>
						<div class="d-flex">
						<div>
							<span>
								<select class="form-select" id="mphone1" name="mphone1">
									<option>010</option>
									<option>011</option>
								</select>
							</span>
						</div>
						
						<div>
							<span><input type="text" class="form-control" onchange="isRightCellPhone()" id="mphone2" name="mphone2"></span>
						</div>
						<div>
							<span><input type="text" class="form-control" onchange="isRightCellPhone()" id="mphone3" name="mphone3"></span>
						</div>
						</div>
						<span class="form-text" id="mphoneSpan">&nbsp;</span>
					</div>
						<div class="form-group mt-2">
						<label class="form-label">이메일</label>
						<input type="email" class="form-control" onchange="isRightEmail()" id="memail" name="memail">
						<span class="form-text" id="memailSpan">&nbsp;</span>
					</div>
					<div class="mt-2 mb-2">
					<div class="form-check mb-2">
						<input class="form-check-input" type="checkbox" value="1" id="agreeAll" name="agreeAll">
						 <label	class="form-check-label" for="agreeAll"> 전체 동의 </label>
					</div>
					<div class="form-check mb-2">
						<input class="form-check-input" type="checkbox" value="1" id="agree1" name="agree1"> <label
							class="form-check-label" for="agree1"> 이용약관 동의(필수) </label>
					</div>
					<div class="form-check mb-2">
						<input class="form-check-input" type="checkbox" value="1" id="agree2" name="agree2"> <label
							class="form-check-label" for="agree2"> 개인정보처리방침 동의(필수) </label>
					</div>
					<div class="form-check">
						<input class="form-check-input" type="checkbox" value="1" id="agree3" name="agree3">
						<label class="form-check-label" for="agree3"> 개인정보 처리 위탁 동의(선택) </label>
					</div>
					<span class="form-text" id="checkSpan">&nbsp;</span>
					</div>
					
					<button type="submit" class="btn btn-dark">수정하기</button>
				</form>
			</div>
		</div> <!-- joinForm -->
	
	</div> <!-- 전체 div -->
	<%@ include file="/WEB-INF/views/common/footer.jsp" %>
	</body>
</html>
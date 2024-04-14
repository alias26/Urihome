<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<!DOCTYPE html>
	<html>

	<head>
		<meta charset="UTF-8">
		<title>우리집, 회원가입</title>
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
		<link href="${pageContext.request.contextPath}/resources/css/member/join.css" rel="stylesheet">

		<!-- jquery -->
		<script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.min.js"></script>
		<script src="${pageContext.request.contextPath}/resources/js/member/join.js"></script>
		<!-- user script-->
		<script>
		</script>
	</head>

	<body class="pt-5">
		<%@ include file="/WEB-INF/views/common/header.jsp" %>
			<div class="mt-3 mb-3 container py-4">
				<div class="mt-5 mb-5" id="signUp">
					<h2>회원가입</h2>
				</div>
				<div id="joinFormDiv">
					<form action="${pageContext.request.contextPath}/" id="joinForm" name="joinForm" onsubmit="joinFormCheckData()" method="post" class="validation-form" novalidate>
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
							<input type="text" class="form-control" onchange="isRightName()" id="name" name="name">
							<span class="form-text" id="nameSpan">&nbsp;</span>
						</div>
						<div class="mt-2">
							<label class="form-label">주소</label>
							<div class="d-flex">
							<span ><input type="text" class="form-control mb-2" id="address1" name="address1" placeholder="우편번호" disabled></span>
							<span><input type="button" id="addressBtn" name="addressBtn" value="우편번호" class="btn btn-outline-secondary btn-sm ms-1 mt-1"></span>
							</div>
							<div>
								<span><input type="text" class="form-control mb-2" id="address2" name="address2" placeholder="기본 주소" disabled></span>
							</div>
							<div>
								<span><input type="text" class="form-control" id="address3" name="address3" placeholder="나머지 주소"></span>
							</div>
						</div>
						<div class="mt-3">
							<label class="form-label align-middle">일반전화</label>
							<div class="d-flex">
							<div>
								<span>
									<select class="form-select" id="normalPhone1" name="normalPhone1">
										<option>02</option>
										<option>031</option>
									</select>
								</span>
							</div>
							<div>
								<span><input type="text" class="form-control" id="normalPhone2" name="normalPhone2"></span>
							</div>
							<div>
								<span><input type="text" class="form-control" id="normalPhone3" name="normalPhone3"></span>
							</div>
							</div>
							<span class="form-text" id="normalPhoneSpan">&nbsp;</span>
						</div>
						<div class="mt-2">
							<label class="form-label align-middle">휴대전화</label>
							<div class="d-flex">
							<div>
								<span>
									<select class="form-select" id="cellPhone1" name="cellPhone1">
										<option>010</option>
										<option>011</option>
									</select>
								</span>
							</div>
							
							<div>
								<span><input type="text" class="form-control" id="cellPhone2" name="cellPhone2"></span>
							</div>
							<div>
								<span><input type="text" class="form-control" id="cellPhone3" name="cellPhone3"></span>
							</div>
							</div>
							<span class="form-text" id="cellPhoneSpan">&nbsp;</span>
						</div>
							<div class="form-group mt-2">
							<label class="form-label">이메일</label>
							<input type="email" class="form-control" onchange="isRightEmail()" id="email" name="email">
							<span class="form-text" id="emailSpan">&nbsp;</span>
						</div>
						<div class="mt-2 mb-2">
						<div class="form-check mb-2">
							<input class="form-check-input" type="checkbox" value="" id="checkAll" name="checkAll">
							 <label	class="form-check-label" for="checkAll"> 전체 동의 </label>
						</div>
						<div class="form-check mb-2">
							<input class="form-check-input" type="checkbox" value="" id="check1" name="check"> <label
								class="form-check-label" for="check1"> 이용약관 동의(필수) </label>
						</div>
						<div class="form-check mb-2">
							<input class="form-check-input" type="checkbox" value="" id="check2" name="check"> <label
								class="form-check-label" for="check2"> 개인정보처리방침 동의(필수) </label>
						</div>
						<div class="form-check">
							<input class="form-check-input" type="checkbox" value="" id="check3" name="check">
							<label class="form-check-label" for="check3"> 개인정보 처리 위탁 동의(선택) </label>
						</div>
						<span class="form-text" id="checkSpan">&nbsp;</span>
						</div>
						
						<button type="submit" class="btn btn-dark">회원가입</button>
					</form>
				</div>
			</div>
			<%@ include file="/WEB-INF/views/common/footer.jsp" %>
	</body>

	</html>
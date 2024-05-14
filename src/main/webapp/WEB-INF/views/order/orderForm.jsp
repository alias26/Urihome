<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>우리집, 회원가입</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
<link
	href="${pageContext.request.contextPath}/resources/css/order/orderForm.css"
	rel="stylesheet">

<!-- jquery -->
<script
	src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.min.js"></script>

<!-- user script-->
<script
	src="${pageContext.request.contextPath}/resources/js/order/orderForm.js"></script>
	
	<script type="text/javascript">
	    function fillDeliveryInfo() {
	        // 주문자 정보 가져오기
	        var oname1 = document.getElementById('oname1').value;
	        var email = document.getElementById('email').value;
	        var cellPhone1_1 = document.getElementById('cellPhone1_1').value;
	        var cellPhone1_2 = document.getElementById('cellPhone1_2').value;
	        var cellPhone1_3 = document.getElementById('cellPhone1_3').value;
	        var address1_1 = document.getElementById('address1_1').value;
	        var address1_2 = document.getElementById('address1_2').value;
	        var address1_3 = document.getElementById('address1_3').value;
	
	        // 배송지 정보 채우기
	        document.getElementById('oname2').value = oname1;
	        document.getElementById('cellPhone2_1').value = cellPhone1_1;
	        document.getElementById('cellPhone2_2').value = cellPhone1_2;
	        document.getElementById('cellPhone2_3').value = cellPhone1_3;
	        document.getElementById('address2_1').value = address1_1;
	        document.getElementById('address2_2').value = address1_2;
	        document.getElementById('address2_3').value = address1_3;
	    }
	</script>
	
	<script type="text/javascript">
    function clearDeliveryInfo() {
        // 배송지 정보 입력란 비우기
        document.getElementById('oname2').value = '';
        document.getElementById('cellPhone2_1').value = '';
        document.getElementById('cellPhone2_2').value = '';
        document.getElementById('cellPhone2_3').value = '';
        document.getElementById('address2_1').value = '';
        document.getElementById('address2_2').value = '';
        document.getElementById('address2_3').value = '';
    }
</script>
</head>

<body class="pt-5">
	<%@ include file="/WEB-INF/views/common/header.jsp"%>
	<div class="mt-3 mb-3 container py-4">
		<div class="mt-5 mb-5" id="orderFormTag">
			<h2>주문서 작성</h2>
		</div>
		<div class="d-flex">
			<div id="orderFormDiv">
				<form action="orderWait" id="orderForm"
					name="orderForm" onsubmit="orderFormCheckData()" method="post"
					class="validation-form" novalidate>
					<div>
						<div>
							<h5>주문 정보</h5>
						</div>
						<div class="form-group mt-4">
							<label class="form-label">주문자</label> <input type="text"
								class="form-control" onchange="isRightName('oname1')" id="oname1" name="oname1" value="${member.mname}">
							<span class="form-text" id="onameSpan1">&nbsp;</span>
						</div>
						<div class="form-group mt-2">
							<label class="form-label">이메일</label> <input type="email"
								class="form-control" onchange="isRightEmail()" id="email"
								name="email" value="${member.memail}"> <span class="form-text" id="emailSpan">&nbsp;</span>
						</div>
						<div class="mt-2">
							<label class="form-label align-middle">휴대전화</label>
							<div class="d-flex">
								<div>
									<span> <select class="form-select" id="cellPhone1_1"
										name="cellPhone1_1">
											<option <c:if test="${mphone[0] == 010}">selected</c:if>>010</option>
											<option <c:if test="${mphone[0] == 011}">selected</c:if>>011</option>
									</select>
									</span>
								</div>

								<div>
									<span><input type="text" class="form-control"
										onchange="isRightCellPhone('cellPhone1')" id="cellPhone1_2"
										name="cellPhone1_2" value="${mphone[1]}"></span>
								</div>
								<div>
									<span><input type="text" class="form-control"
										onchange="isRightCellPhone('cellPhone1')" id="cellPhone1_3"
										name="cellPhone1_3" value="${mphone[2]}"></span>
								</div>
							</div>
							<span class="form-text" id="cellPhoneSpan1">&nbsp;</span>
						</div>
						<div class="mt-2">
							<label class="form-label">주소</label>
							<div class="d-flex">
								<span><input type="text" class="form-control mb-2"
									id="address1_1" name="address1" placeholder="우편번호" disabled value="${member.mzip}"></span>
								<span><input type="button" id="addressBtn"
									name="addressBtn" value="우편번호"
									class="btn btn-outline-secondary btn-sm ms-1 mt-1"></span>
							</div>
							<div>
								<span><input type="text" class="form-control mb-2"
									id="address1_2" name="address2" placeholder="기본 주소" disabled value="${member.maddress}"></span>
							</div>
							<div>
								<span><input type="text" class="form-control"
									id="address1_3" name="address3" placeholder="나머지 주소" value="${member.mdetailAddress}"></span>
							</div>
						</div>
					</div>
					<div class="mt-4">
						
						<div>
							<h5>배송지</h5>
						</div>
						 <!-- 배송지 정보 버튼 그룹 -->
						<div class="mt-3 d-flex">
						    <!-- 주문자 정보와 동일 라디오 버튼 -->
						    <div class="me-3">
						        <label class="btn">
						            <input type="radio" name="deliveryOption" onclick="fillDeliveryInfo()"> 주문자와 정보 동일
						        </label>
						    </div>
						    <!-- 배송지 정보 초기화 라디오 버튼 -->
						    <div>
						        <label class="btn">
						            <input type="radio" name="deliveryOption" onclick="clearDeliveryInfo()"> 배송지 정보 초기화
						        </label>
						    </div>
						</div>
						<div class="form-group mt-4">
							<label class="form-label">받는사람</label> <input type="text"
								class="form-control" onchange="isRightName('oname2')" id="oname2" name="oname2">
							<span class="form-text" id="onameSpan2">&nbsp;</span>
						</div>
						<div class="mt-2">
							<label class="form-label align-middle">휴대전화</label>
							<div class="d-flex">
								<div>
									<span> <select class="form-select" id="cellPhone2_1"
										name="cellPhone2_1">
											<option>010</option>
											<option>011</option>
									</select>
									</span>
								</div>
								<div>
									<span><input type="text" class="form-control"
										onchange="isRightCellPhone('cellPhone2')" id="cellPhone2_2"
										name="cellPhone2_2"></span>
								</div>
								<div>
									<span><input type="text" class="form-control"
										onchange="isRightCellPhone('cellPhone2')" id="cellPhone2_3"
										name="cellPhone2_3"></span>
								</div>
							</div>
							<span class="form-text" id="cellPhoneSpan2">&nbsp;</span>
						</div>
						<div class="mt-2">
							<label class="form-label">주소</label>
							<div class="d-flex">
								<span><input type="text" class="form-control mb-2"
									id="address2_1" name="address1" placeholder="우편번호" disabled></span>
								<span><input type="button" id="addressBtn"
									name="addressBtn" value="우편번호"
									class="btn btn-outline-secondary btn-sm ms-1 mt-1"></span>
							</div>
							<div>
								<span><input type="text" class="form-control mb-2"
									id="address2_2" name="address2" placeholder="기본 주소" disabled></span>
							</div>
							<div>
								<span><input type="text" class="form-control"
									id="address2_3" name="address3" placeholder="나머지 주소"></span>
							</div>
						</div>
					</div>
					<div class="mt-4">
						<div>
							<h5>결제 수단</h5>
						</div>
						<div>
							<label class="mt-2 me-auto">결제 수단 선택</label>
							<div class="mt-2" >
								<button type="button" id="bank" name="paymentBtn" onclick="changeBtn('bank')">
									<img class="grayscale"
										src="${pageContext.request.contextPath}/resources/image/order/ico_bank.gif">
								</button>
								<button type="button" id="card" name="paymentBtn" onclick="changeBtn('card')">
									<img class="grayscale"
										src="${pageContext.request.contextPath}/resources/image/order/ico_card.gif">
								</button>
								<button type="button" id="kakaopay" name="paymentBtn" onclick="changeBtn('kakaopay')">
									<img class="grayscale"
										src="${pageContext.request.contextPath}/resources/image/order/ico_kakaopay.gif">
								</button>
								<button type="button" id="mobile" name="paymentBtn" onclick="changeBtn('mobile')">
									<img class="grayscale"
										src="${pageContext.request.contextPath}/resources/image/order/ico_mobile.gif">
								</button>
								<button type="button" id="realtime" name="paymentBtn" onclick="changeBtn('realtime')">
									<img class="grayscale"
										src="${pageContext.request.contextPath}/resources/image/order/ico_realtime.gif">
								</button>
							</div>
						</div>
					</div>
					<div class="mt-4">
						<div class="form-check mb-2">
							<input class="form-check-input" type="checkbox" value=""
								id="checkAll" onchange="selectCheckbox()" name="checkAll">
							<label class="form-check-label" for="checkAll"> 모든 약관 동의
							</label>
						</div>
						<div class="form-check mb-2">
							<input class="form-check-input" type="checkbox" value=""
								id="check1" name="check"> <label
								class="form-check-label" for="check1"> 쇼핑몰 이용약관 동의(필수) </label>
						</div>
						<div class="form-check mb-2">
							<input class="form-check-input" type="checkbox" value=""
								id="check2" name="check"> <label
								class="form-check-label" for="check2"> 개인정보 수집 및 이용
								동의(필수) </label>
						</div>
						<span class="form-text" id="checkSpan">&nbsp;</span>
					</div>
					<div class="mb-2" style="text-align: center;">
						<h5>주문 내용을 확인하였으며 약관에 동의합니다.</h5>
					</div>
					<div class="mt-2 d-grid">
						<button class="btn btn-primary">결제하기</button>
					</div>
				</form>
			</div>
			<div class="flex-column ms-4" id="orderProductDiv">
				<div style="width: 250px;">
					<div>
						<h5>주문상품</h5>
					</div>
					<div class="container">
						<div class="d-flex mb-4">
							<div class="me-1">
								<a href=""><img
									src="${pageContext.request.contextPath}/resources/image/best5.jpg"
									width="90px" height="90px" class="rounded-3"></a>
							</div>
							<div class="description ms-auto">
								<strong>상품 이름1</strong>
								<p>수량: x개</p>
								<p>x,xxx원</p>
							</div>
							<div class="ms-auto me-0">
								<button class="btn btn-sm">X</button>
							</div>
						</div>
					</div>
				</div>
				<div class="mb-3">
					<div>
						<h5>결제 정보</h5>
					</div>
					<div class="d-flex">
						<span class="me-auto">주문 상품</span> <strong>x,xxx원</strong>
					</div>
					<div class="d-flex">
						<span class="me-auto">배송비</span> <strong>+x,xxx원</strong>
					</div>
				</div>
				<div>
					<div class="d-flex text-bg-light" id="totalPrice">
						<h5 class="me-auto">최종 결제 금액</h5>
						<strong>x,xxx원</strong>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@ include file="/WEB-INF/views/common/footer.jsp"%>
</body>

</html>
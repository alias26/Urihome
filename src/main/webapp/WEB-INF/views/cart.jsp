<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Insert title here</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Insert title here</title>
<!--qnxmtmxmfoq 5 외부 라이브러리 설정-->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link href="${pageContext.request.contextPath }/resources/css/cart.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
<!-- jquery 외부라이브러리 설정 -->
<script
	src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.min.js"></script>


<!-- 사용자 정의 자바스크립트 -->


</head>

<body class="pt-5">
	<%@ include file="/WEB-INF/views/common/header.jsp"%>
	<!-- bootstrap의 grid를 이용해 전체 가로비율을 2:8:2로 지정  -->
	<div class="row">
		<div class="col-2"></div>

		<div class="col-8 ms-0">
			<h2 class="cart-title " style="text-align: center">장바구니</h2>

			<div class="ms-3 border-bottom">
				<div class="totalCheck">
					<div class="pt-5 mb-2" style="font-size: 15px">장바구니에 담긴 상품은
						30일 동안 보관됩니다.</div>
					<div class="d-flex mb-3">
						<div class="col-2">
							<input class="form-check-input" type="checkbox" value=""
								id="checkAll" checked>

						</div>
						<div class="col-4 ms-4">상품정보</div>
						<div class="col-2 ms-4">배송정보</div>
						<div class="col-2 ms-4">상품금액</div>
						<div class="col-2 ms-4">선택</div>

					</div>
				</div>
			</div>


			<div class="shopping-cart-layout">
				<!-- 장바구니  목록을 보여준다 -->
				<ul class="list-unstyled">
					<li class="cart-items">
						<div class="d-flex">
							<div class=" col-2">
								<input class="form-check-input" type="checkbox"
									id="order-checkbox" value="" checked> <img
									src="${pageContext.request.contextPath}/resources/image/cart2.jpg"
									width="120">
							</div>

							<div class="cart-item-info col-4">

								<p class=cart-item-name>블랑 센터피스 접시</p>
								<span class="item-arrrive-txt"> 내일 <span
									class="item-arrrive-day">(목) </span> <span
									class="item-arrrive-date"> 4/11 </span> <span
									class="item-exepctation-date"> 도착예정 </span>
								</span>
								<p class="cart-item-price mt-2 mb-1">33,000원</p>
								<div class="d-flex">
									<button class="cart-number-button btn btn-dark btn-sm">-</button>
									<div class=" cart-number">1</div>
									<button class="cart-number-button btn btn-dark btn-sm">+</button>
								</div>

							</div>

							<div class="arrive-info col-2 d-flex" style="align-items: center">
								<div>3,000원 조건 /기본배송</div>
							</div>
							<div class="price-info col-2 d-flex" style="align-items: center">
								<div style="margin-left: 60px">33,000원</div>
							</div>
							<div class="row option-info col-2">
								<button type="button" class="btn btn-dark btn-sm m-1">주문</button>
								<button type="button" class="btn btn-dark btn-sm m-1">관심상품</button>
								<button type="button" class="btn btn-dark btn-sm m-1">삭제</button>
							</div>
						</div>

					</li>
					<hr />
					<li class="cart-items">
						<div class="d-flex">
							<div class=" col-2">
								<input class="form-check-input" type="checkbox"
									id="order-checkbox" value="" checked> <img
									src="${pageContext.request.contextPath}/resources/image/cart1.jpg"
									width="120">
							</div>

							<div class="cart-item-info col-4">

								<p class=cart-item-name>하트 시그널 커피잔 1인조 세트 (3color)</p>
								<span class="item-arrrive-txt"> <span
									class="item-arrrive-day">(월) </span> <span
									class="item-arrrive-date"> 4/15 </span> <span
									class="item-exepctation-date"> 도착예정 </span>
								</span>
								<p class="cart-item-price mt-2 mb-1">22,400원</p>
								<div class="d-flex">
									<button class="cart-number-button btn btn-dark btn-sm ">-</button>
									<div class=" cart-number">2</div>
									<button class="cart-number-button btn btn-dark btn-sm">+</button>
								</div>

							</div>

							<div class="arrive-info col-2 d-flex" style="align-items: center">
								<div>무료 /기본배송</div>
							</div>
							<div class="price-info col-2 d-flex" style="align-items: center">
								<div style="margin-left: 60px">44,800원</div>
							</div>
							<div class="row option-info col-2">
								<button type="button" class="btn btn-dark btn-sm m-1">주문</button>
								<button type="button" class="btn btn-dark btn-sm m-1">관심상품</button>
								<button type="button" class="btn btn-dark btn-sm m-1">삭제</button>
							</div>
						</div>

					</li>
					<hr>
					<li class="cart-items">
						<div class="d-flex">
							<div class=" col-2">
								<input class="form-check-input" type="checkbox" id="check1"
									value="" checked> <img
									src="${pageContext.request.contextPath}/resources/image/cart3.jpg"
									width="120">
							</div>

							<div class="cart-item-info col-4">

								<p class=cart-item-name>클래식레이스 4인 홈세트 25P</p>
								<span class="item-arrrive-txt"> 내일 <span
									class="item-arrrive-day">(월) </span> <span
									class="item-arrrive-date"> 4/11 </span> <span
									class="item-exepctation-date"> 도착예정 </span>
								</span>
								<p class="cart-item-price mt-2 mb-1">99,000원</p>
								<div class="d-flex">
									<button class="cart-number-button btn btn-dark btn-sm">-</button>
									<div class=" cart-number">1</div>
									<button class="cart-number-button btn btn-dark btn-sm">+</button>
								</div>

							</div>

							<div class="arrive-info col-2 d-flex" style="align-items: center">
								<div>3,000원 조건 /기본배송</div>
							</div>
							<div class="price-info col-2 d-flex" style="align-items: center">
								<div style="margin-left: 60px">33,000원</div>
							</div>
							<div class="row option-info col-2">
								<button type="button" class="btn btn-dark btn-sm m-1">주문</button>
								<button type="button" class="btn btn-dark btn-sm m-1">관심상품</button>
								<button type="button" class="btn btn-dark btn-sm m-1">삭제</button>
							</div>
						</div>

					</li>
					<hr>
				</ul>
			</div>
			<div class="total-price-count d-flex" style="align-items: center">
				<div style="margin-left: 350px">176,800 + 배송비 0(무료) = 176,800원</div>
			</div>
			<div class="final-order">
				<button type="button" class="btn btn-secondary btn-md ">선택상품
					주문</button>
				<button type="button" class="btn btn-dark btn-md ">전체상품 주문</button>
			</div>
		</div>
		<div class="col-2"></div>
	</div>
</body>
</html>
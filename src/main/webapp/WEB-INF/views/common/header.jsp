<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<link rel="stylesheet" href="/resources/css/header.css" type="text/css">

<div id="header" class="header">
	<nav class="navbar navbar-expand-lg fixed-top bg-light">
		<div class="logo">
			<a class="navbar-brand" href="${pageContext.request.contextPath}/">
			<img src="${pageContext.request.contextPath}/resources/image/common/LOGO.png" width="90" height="50"></a>
		</div>
		<button class="navbar-toggler ms-auto" type="button"
			data-bs-toggle="collapse"
			data-bs-target="#navbarDropdownCenter,#navbarDropdownEnd">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse justify-content-center"
			id="navbarDropdownCenter">
			<ul class="navbar-nav">
				<li class="nav-item dropdown ms-3 me-3">
					<button class="btn" aria-expanded="false">전체</button>
				</li>
				<li class="nav-item dropdown ms-3 me-3">
					<button class="btn" aria-expanded="false">신상품</button>
				</li>
				<li class="nav-item dropdown ms-3 me-3">
					<button class="btn" aria-expanded="false">BEST</button>
				</li>
				<li class="nav-item dropdown ms-3 me-3">
					<button class="btn" aria-expanded="false">그릇</button>
					<ul class="dropdown-menu">
						<li><a class="dropdown-item" href="#">소파 전체</a></li>
						<li><a class="dropdown-item" href="#">다인용 소파</a></li>
						<li><a class="dropdown-item" href="#">1인용 소파</a></li>
					</ul>
				</li>
				<li class="nav-item dropdown ms-3 me-3">
					<button class="btn" aria-expanded="false">접시</button>
					<ul class="dropdown-menu">
						<li><a class="dropdown-item" href="#">테이블 전체</a></li>
						<li><a class="dropdown-item" href="#">식탁</a></li>
						<li><a class="dropdown-item" href="#">책상</a></li>
						<li><a class="dropdown-item" href="#">사이드테이블</a></li>
						<li><a class="dropdown-item" href="#">소파테이블</a></li>
					</ul>
				</li>
				<li class="nav-item dropdown ms-3 me-3">
					<button class="btn" aria-expanded="false">수저세트</button>
					<ul class="dropdown-menu">
						<li><a class="dropdown-item" href="#">의자 전체</a></li>
						<li><a class="dropdown-item" href="#">인테리어 의자</a></li>
						<li><a class="dropdown-item" href="#">사무용 의자</a></li>
						<li><a class="dropdown-item" href="#">라운지체어</a></li>
						<li><a class="dropdown-item" href="#">스톨</a></li>
						<li><a class="dropdown-item" href="#">벤치</a></li>
					</ul>
				</li>
			</ul>
		</div>
		<div class="d-flex">
			<div class="collapse navbar-collapse justify-content-end"
				id="navbarDropdownEnd">

				<ul class="navbar-nav">
					<li class="nav-item dropdown">
						<button class="btn" aria-expanded="false">
							<i class="bi bi-person-circle fs-5"></i>
						</button>
						<ul class="dropdown-menu">
							<li><a class="dropdown-item" href="#">주문조회</a></li>
							<li><a class="dropdown-item" href="#">관심상품</a></li>
							<li><a class="dropdown-item" href="#">최근 본 상품</a></li>
							<li><a class="dropdown-item" href="#">적립금</a></li>
							<li><a class="dropdown-item" href="#">쿠폰</a></li>
							<li><a class="dropdown-item" href="#">쓰임포인트</a></li>
							<li><a class="dropdown-item" href="#">나의정보</a></li>
							<li class="text-center d-grid m-2"><button
									class="btn btn-dark btn-sm" aria-expanded="false">로그인
								</button></li>
							<li class="text-center d-grid m-2"><button
									class="btn btn-sm" aria-expanded="false">회원가입</button></li>
						</ul>
					</li>
					<li class="nav-item dropdown">
						<button class="btn" aria-expanded="false">
							<i class="bi bi-bag fs-5"></i>
						</button>
						<ul class="dropdown-menu">
							<li><p id="cartInfo">장바구니가 비어있습니다.</p></li>
							<hr>
							<li id="cartMoveButton" class="text-center">
								<button class="btn btn-dark btn-sm" aria-expanded="false">
									장바구니로 이동</button>
							</li>
						</ul>
					</li>
					<li class="nav-item dropdown">
						<button class="btn" aria-expanded="false">
							<i class="bi bi-search fs-5"></i>
						</button>
						<ul class="dropdown-menu">
							<li>
								<form class="form-inline">
									<input class="form-control" type="search" placeholder="Search">
								</form>
							</li>
						</ul>
					</li>
				</ul>
			</div>
		</div>
	</nav>
</div>

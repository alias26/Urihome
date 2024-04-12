<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>따뜻한 가구, 우리집에 어서오세요</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link href="/resources/css/index.css" rel="stylesheet">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.0/font/bootstrap-icons.css">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
<!-- jquery -->
<script
	src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.min.js"></script>
<!-- user script-->
</head>
<body class="pt-5">
	<%@ include file="/WEB-INF/views/common/header.jsp"%>
	<!-- Carousel -->
	<div id="wrapper">
	<div id="demo" class="carousel slide" data-bs-ride="carousel">

		<!-- Indicators/dots -->
		<div class="carousel-indicators">
			<button type="button" data-bs-target="#demo" data-bs-slide-to="0"
				class="active"></button>
			<button type="button" data-bs-target="#demo" data-bs-slide-to="1"></button>
			<button type="button" data-bs-target="#demo" data-bs-slide-to="2"></button>
		</div>

		<!-- The slideshow/carousel -->
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img
					src="https://ssueim.com/web/upload/appfiles/ZaReJam3QiELznoZeGGkMG/ca6af8fe16e014721f63106078f85c68.jpg"
					alt="Los Angeles" class="d-block" style="width: 100%">
				<div class="carousel-caption"></div>
			</div>
			<div class="carousel-item">
				<img
					src="https://ssueim.com/web/upload/appfiles/ZaReJam3QiELznoZeGGkMG/6c4915ebe0c28c9e5ce52758cb6da2c5.jpg"
					alt="Chicago" class="d-block" style="width: 100%">
				<div class="carousel-caption"></div>
			</div>
			<div class="carousel-item">
				<img
					src="https://ssueim.com/web/upload/appfiles/ZaReJam3QiELznoZeGGkMG/ca6af8fe16e014721f63106078f85c68.jpg"
					alt="New York" class="d-block" style="width: 100%">
				<div class="carousel-caption"></div>
			</div>
		</div>

		<!-- Left and right controls/icons -->
		<button class="carousel-control-prev" type="button"
			data-bs-target="#demo" data-bs-slide="prev">
			<span class="carousel-control-prev-icon"></span>
		</button>
		<button class="carousel-control-next" type="button"
			data-bs-target="#demo" data-bs-slide="next">
			<span class="carousel-control-next-icon"></span>
		</button>
	</div>

	<h2 class="mt-5 mb-5" style="text-align: center">B E S T</h2>
	<!-- css icon -->
	<div id="carouselExampleControls" class="carousel carousel-dark slide"
		data-bs-ride="carousel" data-interval="5000">

		<div class="carousel-inner">
			<div class="carousel-item active">
				<div
					class="card-wrapper container-md d-flex  justify-content-around">
					<div class="card border-0 p-3">
						<img id="bestseller"
							src="${pageContext.request.contextPath}/resources/image/chair.jpg"
							class="card-img-top" alt="...">
					</div>
					<div class="card border-0 p-3">
						<img id="bestseller"
							src="${pageContext.request.contextPath}/resources/image/chair2.jpg"
							class="card-img-top" alt="...">
						<div class="card-body"></div>
					</div>
					<div class="card border-0 p-3">
						<img id="bestseller"
							src="${pageContext.request.contextPath}/resources/image/chair10.jpg"
							class="card-img-top " alt="...">
						<div class="card-body"></div>
					</div>
					<div class="card border-0 p-3">
						<img id="bestseller"
							src="${pageContext.request.contextPath}/resources/image/chair11.jpg"
							class="card-img-top" alt="...">
						<div class="card-body"></div>
					</div>
				</div>
			</div>
			<div class="carousel-item">
				<div class="card-wrapper container-md d-flex justify-content-around">
					<div class="card border-0 p-3 ">
						<img id="bestseller" src="${pageContext.request.contextPath}/resources/image/chair5.jpg"
							class="card-img-top" alt="...">
						<div class="card-body"></div>
					</div>
					<div class="card border-0 p-3">
						<img id="bestseller" src="${pageContext.request.contextPath}/resources/image/chair6.jpg"
							class="card-img-top" alt="...">
						<div class="card-body"></div>
					</div>
					<div class="card border-0 p-3">
						<img id="bestseller" src="${pageContext.request.contextPath}/resources/image/chair7.jpg"
							class="card-img-top" alt="...">
						<div class="card-body"></div>
					</div>
					<div class="card border-0 p-3">
						<img id="bestseller" src="${pageContext.request.contextPath}/resources/image/chair8.jpg"
							class="card-img-top" alt="...">
						<div class="card-body"></div>
					</div>
				</div>
			</div>

			<button class="carousel-control-prev " type="button"
				data-bs-target="#carouselExampleControls" data-bs-slide="prev">
				<span class="carousel-control-prev-icon " aria-hidden="true"></span>
				<span class="visually-hidden">Previous</span>
			</button>
			<button class="carousel-control-next " type="button"
				data-bs-target="#carouselExampleControls" data-bs-slide="next">
				<span class="carousel-control-next-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Next</span>
			</button>


		</div>
	</div>
	<div class="mb-5" style="text-align: center">
		<h2 class="title">MD 추천템</h2>
	</div>
	<div class="container" id="recommendItem">
		<div id="box">

			<img id="content-img"
				src="https://ssueim.com/web/product/big/202404/9d011e8c1884aaa631376cbd9caf024b.jpg">
			<div class="btn" name="cart"
				style="background-color: black; border-radius: 50%;">
				<i class="bi bi-bag" style="color: white"></i>
			</div>


			<div id="info">
				<div id="name">블랑 4인 홈세트 27P</div>
				<div id="price">199,000원</div>
			</div>
		</div>
		<div id="box">

			<img id="content-img"
				src="https://ssueim.com/web/product/big/202309/09642480b50e05fc3fe0013d865de602.jpg">
			<div class="btn" name="cart"
				style="background-color: black; border-radius: 50%">
				<i class="bi bi-bag" style="color: white"></i>
			</div>

			<div id="info">
				<div id="name">[4월18일 발송예정] 보담 6인 홈세트</div>
				<div id="price">159,000원</div>
			</div>
		</div>
		<div id="box">
			<img id="content-img"
				src="https://ssueim.com/web/product/big/202009/53645479796c9e0bc493ae269a609516.jpg">
			<div class="btn" name="cart"
				style="background-color: black; border-radius: 50%">
				<i class="bi bi-bag" style="color: white"></i>
			</div>
			<div id="info">
				<div id="name">키엘로 2인 홈세트 13P (크림화이트)</div>
				<div id="price">69,000원</div>
			</div>
		</div>
		<div id="box">
			<img id="content-img"
				src="https://ssueim.com/web/product/big/202010/ab0d0f8d3c21e5cbe9cc151285a3dff7.jpg">
			<div class="btn" name="cart"
				style="background-color: black; border-radius: 50%">
				<i class="bi bi-bag" style="color: white"></i>
			</div>
			<div id="info">
				<div id="name">마일드 화이트 계란찜기(중)</div>
				<div id="price">10,900원</div>
			</div>
		</div>
		<div id="box">
			<img id="content-img"
				src="https://ssueim.com/web/product/big/202401/1c1f10690bf5301ee503b4fbbab8f0da.jpg">
			<div class="btn" name="cart"
				style="background-color: black; border-radius: 50%">
				<i class="bi bi-bag" style="color: white"></i>
			</div>
			<div id="info">
				<div id="name">테르 그레이베이지 2인 홈세트 14P</div>
				<div id="price">79,000원</div>
			</div>
		</div>
		<div id="box">
			<img id="content-img"
				src="https://ssueim.com/web/product/big/202009/11e358bac5feeaf86e36ea99c7b04af2.jpg">
			<div class="btn" name="cart"
				style="background-color: black; border-radius: 50%">
				<i class="bi bi-bag" style="color: white"></i>
			</div>
			<div id="info">
				<div id="name">키엘로 면기 대 (2color)</div>
				<div id="price">9,900원</div>
			</div>
		</div>
		<div id="box">
			<img id="content-img"
				src="https://ssueim.com/web/product/big/202207/3b6d59aa271014997cd388e2623643c2.jpg">
			<div class="btn" name="cart"
				style="background-color: black; border-radius: 50%">
				<i class="bi bi-bag" style="color: white"></i>
			</div>
			<div id="info">
				<div id="name">어라운드 시리얼머그 (3color)</div>
				<div id="price">13,500원</div>
			</div>
		</div>
		<div id="box">
			<img id="content-img"
				src="https://ssueim.com/web/product/big/202110/868fcc2069a8d64c15b43688fe6cefff.jpg">
			<div class="btn" name="cart"
				style="background-color: black; border-radius: 50%">
				<i class="bi bi-bag" style="color: white"></i>
			</div>
			<div id="info">
				<div id="name">스테이블 오벌 접시 (2color)</div>
				<div id="price">12,900원</div>
			</div>
		</div>
		<div id="box">
			<img id="content-img"
				src="https://ssueim.com/web/product/big/202209/4b639ab0916375ccce6b1ddb502f3b97.jpg">
			<div class="btn" name="cart"
				style="background-color: black; border-radius: 50%">
				<i class="bi bi-bag" style="color: white"></i>
			</div>
			<div id="info">
				<div id="name">클래식레이스 4인 홈세트 25P</div>
				<div id="price">99,000원</div>
			</div>
		</div>
		<div id="box">
			<img id="content-img"
				src="https://ssueim.com/web/product/big/202112/bdc6a9bb63646414b21e1c20888c3180.jpg">
			<div class="btn" name="cart"
				style="background-color: black; border-radius: 50%">
				<i class="bi bi-bag" style="color: white"></i>
			</div>
			<div id="info">
				<div id="name">스테이블 커피잔 세트 (2color)</div>
				<div id="price">8,900원</div>
			</div>
		</div>
		<div id="box">
			<img id="content-img"
				src="https://ssueim.com/web/product/big/202111/fe4c8dc3d61cac512a733c6f41fa7775.jpg">
			<div class="btn" name="cart"
				style="background-color: black; border-radius: 50%">
				<i class="bi bi-bag" style="color: white"></i>
			</div>
			<div id="info">
				<div id="name">그레이스 머그</div>
				<div id="price">7,500원</div>
			</div>
		</div>
		<div id="box">
			<img id="content-img"
				src="https://ssueim.com/web/product/big/202211/d731d3417834fd7f73f0da17b6dcb24d.jpg">
			<div class="btn" name="cart"
				style="background-color: black; border-radius: 50%">
				<i class="bi bi-bag" style="color: white"></i>
			</div>
			<div id="info">
				<div id="name">블랑 센터피스 접시</div>
				<div id="price">33,000원</div>
			</div>
		</div>
	</div>
	<div style="text-align: center;">
		<button id="more-btn" style="font-weight: bolder;">더보기</button>
	</div>
	</div>
	<%@ include file="/WEB-INF/views/common/footer.jsp"%>
</body>
</html>
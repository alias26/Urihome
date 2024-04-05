<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>따뜻한 가구, 우리집에 어서오세요</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
	<link rel="stylesheet" href="/resources/css/index.css" type="text/css">
	<!-- jquery -->
	<script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.min.js"></script>
	<!-- user script-->
	<script>
	</script>
</head>
<body>
	<div id="header">
		<nav class="navbar navbar-expand-lg">
		  <div class="container-fluid">
		  	<div class="logo">
		    	<a class="navbar-brand" href="#">우리집</a>
		   	</div>
		    <!-- <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDarkDropdown" aria-controls="navbarNavDarkDropdown" aria-expanded="false" aria-label="Toggle navigation">
		      <span class="navbar-toggler-icon"></span>
		    </button> -->
		    <div class="collapse navbar-collapse justify-content-center" id="navbarDropdownCenter">
		      <ul class="navbar-nav">
		      	<li class="nav-item dropdown ms-3 me-3">
		          <button class="btn" aria-expanded="false">
		            전체
		          </button>
	            </li>
		        <li class="nav-item dropdown ms-3 me-3">
		          <button class="btn" aria-expanded="false">
		            소파
		          </button>
		          <ul class="dropdown-menu">
		            <li><a class="dropdown-item" href="#">소파 전체</a></li>
		            <li><a class="dropdown-item" href="#">다인용 소파</a></li>
		            <li><a class="dropdown-item" href="#">1인용 소파</a></li>
		          </ul>
		        </li>
		        <li class="nav-item dropdown ms-3 me-3">
		          <button class="btn" aria-expanded="false">
		            테이블
		          </button>
		          <ul class="dropdown-menu">
		            <li><a class="dropdown-item" href="#">테이블 전체</a></li>
		            <li><a class="dropdown-item" href="#">식탁</a></li>
		            <li><a class="dropdown-item" href="#">책상</a></li>
		            <li><a class="dropdown-item" href="#">사이드테이블</a></li>
		            <li><a class="dropdown-item" href="#">소파테이블</a></li>
		          </ul>
		         </li>
		         <li class="nav-item dropdown ms-3 me-3">
		          <button class="btn" aria-expanded="false">
		            의자
		          </button>
		          <ul class="dropdown-menu">
		            <li><a class="dropdown-item" href="#">의자 전체</a></li>
		            <li><a class="dropdown-item" href="#">인테리어 의자</a></li>
		            <li><a class="dropdown-item" href="#">사무용 의자</a></li>
		            <li><a class="dropdown-item" href="#">라운지체어</a></li>
		            <li><a class="dropdown-item" href="#">스톨</a></li>
		            <li><a class="dropdown-item" href="#">벤치</a></li>
		          </ul>
		          </li>
		          <li class="nav-item dropdown ms-3 me-3">
		          <button class="btn" aria-expanded="false">
		            수납, 선반장
		          </button>
		          <ul class="dropdown-menu">
		            <li><a class="dropdown-item" href="#">수납, 선반장 전체</a></li>
		            <li><a class="dropdown-item" href="#">수납, 선랍장</a></li>
		            <li><a class="dropdown-item" href="#">선반장, 진열장</a></li>
		            <li><a class="dropdown-item" href="#">TV장, 거실장</a></li>
		            <li><a class="dropdown-item" href="#">행거</a></li>
		            <li><a class="dropdown-item" href="#">이동선반, 트롤리</a></li>
		          </ul>
		          </li>
			          <li class="nav-item dropdown ms-3 me-3">
			          <button class="btn" aria-expanded="false">
			           조명
			          </button>
			          <ul class="dropdown-menu">
			            <li><a class="dropdown-item" href="#">조명 전체</a></li>
			            <li><a class="dropdown-item" href="#">단스탠드</a></li>
			            <li><a class="dropdown-item" href="#">장스탠드</a></li>
			            <li><a class="dropdown-item" href="#">펜던트 조명</a></li>
			            <li><a class="dropdown-item" href="#">벽 조명</a></li>
			          </ul>
			          </li>
			          <li class="nav-item dropdown ms-3">
			          <button class="btn" aria-expanded="false">
			            침대
			          </button>
		   		   		<ul class="dropdown-menu">
			            <li><a class="dropdown-item" href="#">침대 전체</a></li>
			          </ul>
			        </li>
			      </ul>
			    </div>
			    <div class="d-flex">
			    <div class="collapse navbar-collapse justify-content-end" id="navbarDropdownEnd">
			      <ul class="navbar-nav">
			        <li class="nav-item dropdown">
			          <button class="btn" aria-expanded="false">
			            마이페이지
			          </button>
       				  <ul class="dropdown-menu">
			            <li><a class="dropdown-item" href="#">주문조회</a></li>
			            <li><a class="dropdown-item" href="#">관심상품</a></li>
			            <li><a class="dropdown-item" href="#">최근 본 상품</a></li>
			            <li><a class="dropdown-item" href="#">적립금</a></li>
			            <li><a class="dropdown-item" href="#">쿠폰</a></li>
			            <li><a class="dropdown-item" href="#">쓰임포인트</a></li>
			            <li><a class="dropdown-item" href="#">나의정보</a></li>
	        				</ul>
	      			</li>
	      			<li class="nav-item dropdown">
			          <button class="btn" aria-expanded="false">
			            장바구니
			          </button>
	       				 <ul class="dropdown-menu">
	       				 	<li><p id="cartInfo">장바구니가 비어있습니다.</p></li>
	       				 	<hr/>
			            	<li id="cartMoveButton">
			            		<button class="btn btn-dark" aria-expanded="false">
          		  				장바구니로 이동
	          					</button>
	          				</li>
        				</ul>
	      			</li>
	   				</ul>
	    		</div>
	          		<button class="btn" aria-expanded="false">
          		  검색
	          		</button>
		     	</div>
		     </div>
		</nav>
	</div>
	<!-- Carousel -->
<div id="demo" class="carousel slide" data-bs-ride="carousel">

  <!-- Indicators/dots -->
  <div class="carousel-indicators">
    <button type="button" data-bs-target="#demo" data-bs-slide-to="0" class="active"></button>
    <button type="button" data-bs-target="#demo" data-bs-slide-to="1"></button>
    <button type="button" data-bs-target="#demo" data-bs-slide-to="2"></button>
  </div>
  
  <!-- The slideshow/carousel -->
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="https://ssueim.com/web/upload/appfiles/ZaReJam3QiELznoZeGGkMG/ca6af8fe16e014721f63106078f85c68.jpg" alt="Los Angeles" class="d-block" style="width:100%">
      <div class="carousel-caption">

      </div>
    </div>
    <div class="carousel-item">
      <img src="https://ssueim.com/web/upload/appfiles/ZaReJam3QiELznoZeGGkMG/6c4915ebe0c28c9e5ce52758cb6da2c5.jpg" alt="Chicago" class="d-block" style="width:100%">
      <div class="carousel-caption">
       
      </div> 
    </div>
    <div class="carousel-item">
      <img src="https://ssueim.com/web/upload/appfiles/ZaReJam3QiELznoZeGGkMG/ca6af8fe16e014721f63106078f85c68.jpg" alt="New York" class="d-block" style="width:100%">
      <div class="carousel-caption">
      
      </div>  
    </div>
  </div>
  
  <!-- Left and right controls/icons -->
  <button class="carousel-control-prev" type="button" data-bs-target="#demo" data-bs-slide="prev">
    <span class="carousel-control-prev-icon"></span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#demo" data-bs-slide="next">
    <span class="carousel-control-next-icon"></span>
  </button>
</div>
</body>
</html>
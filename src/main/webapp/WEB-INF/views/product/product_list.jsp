<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
      <meta charset="UTF-8">
      <title>Insert title here</title>
      <!-- Bootstrap 5를 위한 외부 라이브러리 설정 -->
	  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
	  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
	  <!-- jQuery 외부 라이브러리 설정 -->
	  <script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.min.js"></script>
	  <script src="${pageContext.request.contextPath}/resources/js/product/product_list.js" rel="stylesheet"></script>
	  
	  <!-- 사용자 정의 자바스크립트 -->
	  <script>
	   
	  </script>
	  
   </head>
   <!-- css 적용 -->
   	<link href="${pageContext.request.contextPath}/resources/css/product/product_list.css" rel="stylesheet">
   <body>
    <%@ include file="/WEB-INF/views/common/header.jsp" %>		
   <div class="container">
   	<!-- 고정 탭 -->
   	<div class="sticky" style="margin-top: 120px; margin-right: 40px;">
   		<!-- 검색창 -->
   		<div class = "search-box">
   			<nav class="navbar">
			  <div class="container-fluid">
			    <form class="d-flex" role="search">
			      <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
			      <button class="btn btn-outline-dark" type="submit">Search</button>
			    </form>
			  </div>
			</nav>
   		</div>	
   	
   		<!-- 카테고리 -->
   		<div class = "category">
   			<ul class="nav flex-column" style="margin-top: 30px;">
   			  <li class="nav-item">
			    <a class="nav-link disabled" aria-disabled="true" style="font-size: 20px; color: black; margin-bottom: 20px;"><strong>카테고리</strong></a>
			  </li>
			  <li class="nav-item">
			    <a class="nav-link active" aria-current="page" href="#" style="color: black;"><strong>전체</strong></a>
			  </li>
			  <li class="nav-item">
			    <a class="nav-link" href="#" style="color: gray;"><strong>수저세트</strong></a>
			  </li>
			  <li class="nav-item">
			    <a class="nav-link" href="#" style="color: gray;"><strong>컵</strong></a>
			  </li>
			  <li class="nav-item">
			    <a class="nav-link" href="#" style="color: gray;"><strong>그릇</strong></a>
			  </li>
			  <li class="nav-item">
			    <a class="nav-link" href="#" style="color: gray;"><strong>접시</strong></a>
			  </li>
			</ul>
   		</div>
   	</div>
   	
    <!-- body -->
   	<div class = "productList">
   		<div class="productList-header" style="margin-top: 150px;">
   			<!-- 옵션 -->
   			<div class="orderType d-flex" style="justify-content: flex-start;">
   				<button type="button" class="btn" id="cate-btn" style="margin-right: 8px;">새로고침</button>
   				<button type="button" class="btn" id="cate-btn" style="margin-right: 8px;">추천순</button>
   				<button type="button" class="btn" id="cate-btn" style="margin-right: 8px;">높은가격순</button>
   				<button type="button" class="btn" id="cate-btn" style="margin-right: 8px;">낮은가격순</button>
   				<button type="button" class="btn" id="cate-btn" style="margin-right: 8px;">리뷰많은순</button>
   				<button type="button" class="btn" id="cate-btn">할인순</button>
   			</div>
   			
   			<!-- 상품 목록 -->
   			<div class="product-list">
   				<!-- 전체 행 -->
   				<div class="row" style="margin-bottom: 100px;">
   				   <!-- 장바구니 버튼 -->
   				   <div class="btn" id="cart" style="background-color: black; border-radius: 50%;">
						<i class="bi bi-handbag-fill" style="color: white;"></i>
					</div>
   					<!-- 첫번째 행 -->
	   				<div id="row1" style=" display: flex; justify-content: space-evenly; margin-top: 30px;">
	   					<div id="product_no1">
	   						<img alt="" src="https://ssueim.com/web/product/big/202107/b5b01d07f2f18fbc0e02455c97178b41.jpg"
   							style="width: 290px; border-radius: 10px; ">
   							<div id="name">피에르 티스푼 (3color)</div>
   							<div id="price">1,900원</div>
	   					</div>
   						<div id=product_no2>
	   						<img alt="" src="https://ssueim.com/web/product/big/202107/b5a60aac4741a7c60a2e65d84fafa8b5.jpg"
	   						style="width: 290px; border-radius: 10px;">
	   						<div id="name">론드 젓가락 (3color)</div>
   							<div id="price">3,900원</div>
   						</div>
   						<div id="product_no3">
	   						<img alt="" src="https://ssueim.com/web/product/big/202107/ee6606e5fa088104bb65c5ea1ff48b41.jpg"
	   						style="width: 290px; border-radius: 10px;">
	   						<div id="name">피에르 나이프 (3color)</div>
   							<div id="price">3,900원</div>
   						</div>
	   				</div>
	   				<!-- 두번째 행 -->
	   				<div id="row2" style="display: flex; justify-content: space-evenly; margin-top: 30px;">
	   					<div id="product_no4">
		   					<img alt="" src="https://ssueim.com/web/product/big/202312/070cd414c43a41a5914e544d7080bbb3.jpg"
		   					style="width: 290px; border-radius: 10px;">
		   					<div id="name">블랑 웨이브 커피잔 2P세트(커피잔 1P+소서 1P)</div>
		   					<div id="price">28,000원</div>
	   					</div>
	   					<div id="product_no5">
		   					<img alt="" src="https://ssueim.com/web/product/big/202312/c4679b21081d4c53e880d6a98afef0cb.jpg"
		   					style="width: 290px; border-radius: 10px;">
		   					<div id="name">블랑 플리츠 커피잔 2P세트 (커피잔 1P+소서 1P)</div>
		   					<div id="price">28,000원</div>
	   					</div>
	   					<div id="product_no6">
		   					<img alt="" src="https://ssueim.com/web/product/big/202310/910853dad80e2fde05cd417805eed2c1.jpg"
		   					style="width: 290px; border-radius: 10px;">
		   					<div id="name">하트 시그널 커피잔 1인조 세트 (3color)</div>
		   					<div id="price">22,400원</div>
	   					</div>
	   				</div>
	   				<!-- 세번째 행 -->
	   				<div id="row3" style="display: flex; justify-content: space-evenly; margin-top: 30px;">
	   					<div id="product_no7">
		   					<img alt="" src="https://ssueim.com/web/product/big/202203/a1bc1ee7b7dbb26ea9f592ab2acc2b95.jpg"
		   					style="width: 290px; border-radius: 10px;">
		   					<div id="name">플로어 스태킹 머그 (4color)</div>
		   					<div id="price">6,900원</div>
		   				</div>
		   				<div id="product_no8"> 
		   					<img alt="" src="https://ssueim.com/web/product/big/202203/ca7f94de5ca2e63b2c5f7ac8741fcb7d.jpg"
		   					style="width: 290px; border-radius: 10px;">
		   					<div id="name">[쓰임X에스코티지] 하운드투스 머그접시 세트</div>
		   					<div id="price">70,000원</div>
		   				</div>
		   				<div id="product_no9">
		   					<img alt="" src="https://ssueim.com/web/product/big/202203/6ef6c0079ea5a426827eb42f70a9cd78.jpg"
		   					style="width: 290px; border-radius: 10px;">
		   					<div id="name">[쓰임X에스코티지] 하운드투스 머그 세트 2P</div>
		   					<div id="price">70,000원</div>
		   				</div>
	   				</div>
	   				<!-- 네번째 행 -->
	   				<div id="row4" style="display: flex; justify-content: space-evenly; margin-top: 30px;">
	   					<div id="product_no10">
		   					<img alt="" src="https://ssueim.com/web/product/big/202306/22f513d94d07f0ffba12035f37ae1b17.jpg"
		   					style="width: 290px; border-radius: 10px;">
		   					<div id="name">마리아꾸르끼 카르타 브런치 세트 (머그 1P + 원형접시 1P) (2color)</div>
		   					<div id="price">50,000원</div>
		   				</div>
		   				<div id="product_no11">
		   					<img alt="" src="https://ssueim.com/web/product/big/202012/e40f89c6c550068d013a5b632d10f70c.jpg"
		   					style="width: 290px; border-radius: 10px;">
		   					<div id="name">마리아꾸르끼 카르타 머그 세트 2P</div>
		   					<div id="price">60,000원</div>
		   				</div>
		   				<div id="product_no12">
		   					<img alt="" src="https://ssueim.com/web/product/big/202103/1bbc4b8074e8c4c90f80d4d78178ba1f.jpg"
		   					style="width: 290px; border-radius: 10px;">
		   					<div id="name">휘빈카 티팟 (4color)</div>
		   					<div id="price">13,900원</div>
		   				</div>
	   				</div>
	   			</div>
	   		</div>
	   		
   			<div class="pagenation"></div>
   		
	   		</div>
	   	</div>
	  </div>
  	<%@ include file="/WEB-INF/views/common/footer.jsp" %>
	</body>
</html>
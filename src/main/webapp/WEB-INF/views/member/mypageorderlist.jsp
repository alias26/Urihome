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
<!-- css적용되도록 login.css 파일을 연결시킵니다. -->
<link href="${pageContext.request.contextPath}/resources/css/member/mypageorderlist.css" rel="stylesheet">
		<title>마이페이지-주문 목록</title>
</head>

<body class="pt-5">
<%@ include file="/WEB-INF/views/common/header.jsp" %>

<div class="container-fluid"> <!-- 전체 화면의 너비에 맞게 콘텐츠를 확장하는 역할 -->
	 <!-- 부트스트랩에서 그리드 시스템을 사용할때 사용 -->
	 <div class="row">
        <!-- 그리드 시스템의 열을 추가하여 그리드를 형성합니다 -->
        <div class="col-md-1"> <!-- 12분의1만큼 열의폭을 지정 -->
            <!--왼쪽 사이드바 -->
            <nav class="col-sm-3 sidenav">            	
    			<h4>MY PAGE</h4>
			      <!-- 순서없는 리스트 -->
			      <ul>
			        <li><a href="#">회원정보</a></li>    <!-- 항목 -->
			        <li><a href="${pageContext.request.contextPath}/member/mypageorderlist">주문내역</a></li>  	<!-- 항목 -->	        
			      </ul>		      
    		</nav>
        </div>
        <!-- Right Content -->
        
        <div class="col-md-10 mx-auto page"><!--수평방향으로 자동마진 설정, 열을 가운데 정렬할수 있다. -->
        	<!-- justify-content-center:자식 요소들을 수평으로 가운데 정렬, align-items:center:자식요소를 수직으로 가운데 정렬-->
           <div class="d-flex justify-content-center mt-5" style="align-items:center;  border:3px solid black;">
           		<!-- flex-fill은 부트스트랩에서 제공하는 flexbox속성, 해당요소가 부모 컨테이너의 남은 공간을 모두 차지하도록 설정 -->
	           <!-- 회원등급과 쿠폰,마일리지 확인가능한 부분 -->
	            <div class="user-info-box flex-fill" style="border-right:3px solid black;"> 
	                <p style="font-size:50px;">xxx님은 일반회원 등급입니다</p>	                 
	                 <p style="font-size:30px">혜택보기</p>
	                 <!-- 혜택보기  셀렉트박스-->
	                <select>
					    <option value="americano">일반회원 등급</option>
					    <option value="caffe latte">우수회원 등급</option>
					    <option value="cafe au lait">특별회원 등급</option>					   
					</select>
					<div class="grade-benefits">					   
					    <ul>
					      <li>할인 쿠폰 발급</li>
					      <li>무료 배송</li>
					      <li>마일리지</li>
					    </ul>
					 </div>					
	            </div>
	            
	            <!-- 쿠폰박스 부분 -->
	            <div class="flex-fill">
	            	<div style="text-align:center;"> <!-- 쿠폰 이미지 중앙정렬 -->
	            		<!-- 쿠폰 이미지 -->
	            		<img src="${pageContext.request.contextPath}/resources/image/coupon.png" style="width:50%;"> 
	            	</div>
		            	<p style="text-align:center; font-size:30px">쿠폰</p>
		            	<p style="text-align:center; font-size:30px">1장</p>
	            	</div>
	            <!-- 마일리지박스 부분 -->
	            <div class="flex-fill">
	            	<div style="text-align:center;">
	            		<!-- 마일리지 이미지 -->
	            		<img src="${pageContext.request.contextPath}/resources/image/mileage.png" style="width:50%;">
	            	</div>
	            	<p style="text-align:center; font-size:30px">마일리지</p>
	            	<p style="text-align:center; font-size:30px">0원</p>
	            </div>
           </div>
           
           
           
            <h1>주문내역</h1>
			<!-- 테이블을 감싸는 div -->
            <div class="table-container">     
            	<!-- 주문내역 테이블 부분 -->
                <table class="table" style="text-align:center; margin:0">
                    <!-- 테이블 안에 들어 -->
                    <!-- 테이블 헤더 주문번호,이미지,상품명,가격,수량,주문날짜,주문상태,배송상태-->
                    <thead>
                    <tr>
                        <th>주문번호</th>
                        <th>상품 이미지</th>
                        <th>상품명</th>
                        <th>가격</th>
                        <th>수량</th>
                        <th>주문날짜</th>
                        <th>주문상태</th>
                        <th>배송상태</th>
                    </tr>
                    </thead>
                    <!-- 테이블 내용 -->
                    <tbody>
                    <tr>
                        <td>001</td>
                        <td><img src="${pageContext.request.contextPath}/resources/image/ordernumber1.jpg" alt="아이템 이미지"></td>
                        <td>상품 A</td>
                        <td>10,000원</td>
                        <td>2</td>
                        <td>2024-04-21</td> <!-- 주문날짜를 여기에 입력 -->
                        <td>결제 완료<br>
                        	<button class="cancel-btn">주문 취소</button>
                        </td>
                        <td>배송 준비중</td>
                    </tr>                   
                    <tr>
                        <td>002</td>
                        <td><img src="${pageContext.request.contextPath}/resources/image/ordernumber1.jpg" alt="아이템 이미지"></td>
                        <td>상품 B</td>
                        <td>20,000원</td>
                        <td>1</td>
                        <td>2024-04-20</td> <!-- 주문날짜를 여기에 입력 -->
                        <td>결제 전</td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>003</td>
                        <td><img src="${pageContext.request.contextPath}/resources/image/ordernumber1.jpg" alt="아이템 이미지"></td>
                        <td>상품 C</td>
                        <td>30,000원</td>
                        <td>2</td>
                        <td>2024-04-19</td> <!-- 주문날짜를 여기에 입력 -->
                        <td>결제 완료<br>
                        	<button class="cancel-btn">주문 취소</button>
                        </td>
                        <td>배송 준비중</td>
                    </tr>
                    <tr>
                        <td>004</td>
                        <td><img src="${pageContext.request.contextPath}/resources/image/ordernumber1.jpg" alt="아이템 이미지"></td>
                        <td>상품 D</td>
                        <td>40,000원</td>
                        <td>2</td>
                        <td>2024-04-19</td> <!-- 주문날짜를 여기에 입력 -->
                        <td>결제 완료<br>
                        	<button class="cancel-btn">반품 요청</button>
                        	<button class="cancel-btn">교환 요청</button>
                        	<button class="cancel-btn">구매 확정</button>
                        </td>
                        <td>배송 완료</td>
                    </tr>
                    <tr>
                        <td>005</td>
                        <td><img src="${pageContext.request.contextPath}/resources/image/ordernumber1.jpg" alt="아이템 이미지"></td>
                        <td>상품 E</td>
                        <td>50,000원</td>
                        <td>2</td>
                        <td>2024-04-22</td> <!-- 주문날짜를 여기에 입력 -->
                        <td>결제 전<br>
                        	
                        </td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>006</td>
                        <td><img src="${pageContext.request.contextPath}/resources/image/ordernumber1.jpg" alt="아이템 이미지"></td>
                        <td>상품 F</td>
                        <td>60,000원</td>
                        <td>2</td>
                        <td>2024-04-22</td> <!-- 주문날짜를 여기에 입력 -->
                        <td>결제 완료                        	
                        </td>
                        <td>배송중</td>
                    </tr>
                    <!-- 다른 주문 항목들도 이어서 추가할 수 있습니다 -->
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>



<div class="footer">
	<%@ include file="/WEB-INF/views/common/footer.jsp" %>
</div>
</body>



</html>
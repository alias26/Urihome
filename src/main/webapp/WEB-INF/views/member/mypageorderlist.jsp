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
	<link href="${pageContext.request.contextPath}/resources/css/member/mypageorderlist.css" rel="stylesheet">
	
		
		<title>마이페이지-주문 목록</title>



<style>
    /* 사이드바 */
    .sidenav {
      background-color: #f1f1f1;
      position: fixed;
      width: 200px;
      height: 100%;
      margin-left: -20px;
      padding-top:100px
      
    }
    /* 본문 */
    .page {
     margin-top:50px;
     margin-left: 250px;
    }
    
    .table-container {
        margin-top: 50px; /* 테이블과 ORDERED를 위로 이동 */
    }
    
    
    /* 사용자 정보를 담는 박스 스타일 */
    .user-info-box {
    	display :block;
    	float: center;
    	text-align:left;
        background-color: #f5f5f5; /* 박스 배경색 */
        padding:50px; /* 내부 여백 */
        
    }
    
    
</style>



</head>

<body>
<%@ include file="/WEB-INF/views/common/header.jsp" %>



<div class="container-fluid"> <!-- 전체 화면의 너비에 맞게 콘텐츠를 확장하는 역할 -->
	 <div class="row">
        <!-- Left Sidebar -->
        <div class="col-md-1">
            <nav class="col-sm-3 sidenav">
    			<h4>MY PAGE</h4>
		      <ul>
		        <li><a href="#">회원정보</a></li>    
		        <li><a href="#">주문내역</a></li>  		        
		      </ul>
		      
    		</nav>
        </div>
        <!-- Right Content -->
        
        <div class="col-md-10 mx-auto page"><!-- 주문내역 제목을 좌측으로 이동 -->
           <div class="d-flex justify-content-center mt-5 mb-0">
	            <div class="user-info-box flex-fill">
	                <p>xxx님은 브론즈 등급입니다</p> <!-- 메시지를 포함하는 박스 -->
	                <select>
					    <option value="americano">브론즈 등급</option>
					    <option value="caffe latte">실버 등급</option>
					    <option value="cafe au lait">골드 등급</option>
					   
					</select>
	            </div>
	            <div class="flex-fill">
	            	<div style="text-align:center"><img src="${pageContext.request.contextPath}/resources/image/coupon.png"></div>
	            	<p style="text-align:center">쿠폰</p>
	            	<p style="text-align:center">1장</p>
	            </div>
	            <div class="flex-fill">
	            	<div style="text-align:center"><img src="${pageContext.request.contextPath}/resources/image/mileage.png"></div>
	            	<p style="text-align:center">마일리지</p>
	            	<p style="text-align:center">0원</p>
	            </div>
           </div>
           
           
           
            <h1>주문내역</h1>

            <div class="table-container mt-3" style="margin-left:0px">     
            
                <table class="table" style="text-align:center; margin:0">
                    <thead>
                    <tr>
                        <th>주문번호</th>
                        <th>이미지</th>
                        <th>상품명</th>
                        <th>가격</th>
                        <th>수량</th>
                        <th>주문날짜</th>
                        <th>주문상태</th>
                        <th>배송상태</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td>001</td>
                        <td><img src="${pageContext.request.contextPath}/resources/image/ordernumber1.jpg" alt="아이템 이미지"></td>
                        <td>상품 A</td>
                        <td>10,000원</td>
                        <td>2</td>
                        <td>2024-04-21</td> <!-- 주문날짜를 여기에 입력 -->
                        <td style="vertical-align: top;">결제 완료<br>
                        	<button class="cancel-btn" data-order-id="001">주문 취소</button>
                        </td>
                        <td>배송 전</td>
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
                        <td>10,000원</td>
                        <td>2</td>
                        <td>2024-04-21</td> <!-- 주문날짜를 여기에 입력 -->
                        <td style="vertical-align: top;">결제 완료<br>
                        	<button class="cancel-btn" data-order-id="001">주문 취소</button>
                        </td>
                        <td>배송 전</td>
                    </tr>
                    <tr>
                        <td>004</td>
                        <td><img src="${pageContext.request.contextPath}/resources/image/ordernumber1.jpg" alt="아이템 이미지"></td>
                        <td>상품 D</td>
                        <td>10,000원</td>
                        <td>2</td>
                        <td>2024-04-21</td> <!-- 주문날짜를 여기에 입력 -->
                        <td style="vertical-align: top;">결제 완료<br>
                        	<button class="cancel-btn" data-order-id="001">주문 취소</button>
                        </td>
                        <td>배송 완료</td>
                    </tr>
                    <tr>
                        <td>005</td>
                        <td><img src="${pageContext.request.contextPath}/resources/image/ordernumber1.jpg" alt="아이템 이미지"></td>
                        <td>상품 E</td>
                        <td>10,000원</td>
                        <td>2</td>
                        <td>2024-04-21</td> <!-- 주문날짜를 여기에 입력 -->
                        <td style="vertical-align: top;">결제 완료<br>
                        	
                        </td>
                        <td>배송 전</td>
                    </tr>
                    <tr>
                        <td>006</td>
                        <td><img src="${pageContext.request.contextPath}/resources/image/ordernumber1.jpg" alt="아이템 이미지"></td>
                        <td>상품 F</td>
                        <td>10,000원</td>
                        <td>2</td>
                        <td>2024-04-21</td> <!-- 주문날짜를 여기에 입력 -->
                        <td style="vertical-align: top;">결제 완료                        	
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
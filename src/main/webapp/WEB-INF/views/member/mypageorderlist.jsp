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





</head>

<body>
<%@ include file="/WEB-INF/views/common/header.jsp" %>


<h1>ORDERED</h1>

<div class="table-container">
<table class="table">
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
      <td><img src="item1.jpg" alt="아이템 이미지"></td>
      <td>상품 A</td>
      <td>10,000원</td>
      <td>2</td>
      <td>2024-04-21</td> <!-- 주문날짜를 여기에 입력 -->
      <td>배송준비중</td>
      <td>배송중</td>
    </tr>
    <tr>
      <td>002</td>
      <td><img src="item2.jpg" alt="아이템 이미지"></td>
      <td>상품 B</td>
      <td>20,000원</td>
      <td>1</td>
      <td>2024-04-20</td> <!-- 주문날짜를 여기에 입력 -->
      <td>배송완료</td>
      <td>배송완료</td>
    </tr>
    <!-- 다른 주문 항목들도 이어서 추가할 수 있습니다 -->
  </tbody>
</table>

</div>

<div class="footer">
<%@ include file="/WEB-INF/views/common/footer.jsp" %>
</div>
</body>



</html>
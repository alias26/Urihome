<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- css 적용 -->
<link href="${pageContext.request.contextPath}/resources/css/product/product_list.css" rel="stylesheet">
 		
<div id="productItem">
	<c:forEach var="product" items="${productList}">
		<div id="product_no">
			<a href="${pageContext.request.contextPath}/product/product_detail?pid=${product.pid}">
			<img alt="" src="https://ssueim.com/web/product/big/202107/b5b01d07f2f18fbc0e02455c97178b41.jpg"
			style="width: 290px; border-radius: 10px;"></a>
			<!-- 장바구니 버튼 -->
			<div class="btn" id="cart" style="background-color: black; border-radius: 50%;">
				<i class="bi bi-handbag-fill" style="color: white;"></i>
			</div>
		<div id="name">${product.pname}</div>
		<div id="price">${product.pprice}원</div>
		</div>
	</c:forEach>
</div>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
<!-- jquery -->
<script
	src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.min.js"></script>
<!-- user script-->
<script>
$(function(){
	$("#updateProductInfo").click(()=>{
		var formData = new FormData();
		var pno = $("#pno").val();
		var pname = $("#pname").val();
		var pprice = $("#pprice").val();
		var pamount = $("#pamount").val();
	/* 	var thumbnail = $("#attachThumbnail")[0].files[0];
		var body = $("#attachBody")[0].files[0];
		formData.append("thumbnail", thumbnail);
		formData.append("bodyImage", body); */
		formData.append("pno", pno);
		formData.append("pname", pname);
		formData.append("pprice", pprice);
		formData.append("pamount", pamount);
		
		$.ajax({
			url: "updateProductInfo",
			method:"post",
			data: formData,
			cache: false,
			processData: false,
			contentType: false,
			success: function(data){
				if(data.result == "success"){
					location.href ="./productManageView?pageNo=" + data.pageNo;
				}
			}
		});
	})});
</script>
</head>
<body class="pt-5" id="wrap">
	<%@ include file="/WEB-INF/views/common/header.jsp"%>
	<div class="mt-5 mb-5" style="text-align: center;">
		<h1>상품 정보</h1>
	</div>
	<div class="d-flex justify-content-center">
		<div class="me-5 border-right" style="text-align: right">
			<a href="#" class="nav-link"><h3>상품 목록</h3></a> <a href="#"
				class="nav-link"><h3>배송 현황</h3></a> <a href="#" class="nav-link"><h3>고객
					관리</h3></a> <a href="#" class="nav-link"><h3>매출</h3></a>
		</div>
		<div class="table-responsive-lg d-flex">
			<c:forEach var="productInfo" items="${productInfoList}">
				<c:if test="${productInfo.pno==pno}">
					<div class="me-2">
						<img
							src="${pageContext.request.contextPath}/${productInfo.thumbnail}"
							width="200px" height="200px">
					</div>
					<div>
						<div class="mb-2">
							<label class="form-label">상품 번호</label> <input class="form-text" type="text" id="pno"
								value="${productInfo.pno}" readonly/>
						</div>
						<div class="mb-2">
							<label class="form-label">상품 이름</label> <input class="form-text" type="text" id="pname"
								value="${productInfo.pname}" />
						</div>
						<div class="mb-2">
							<label class="form-label">상품 가격</label> <input class="form-text" type="number" id="pprice"
								value="${productInfo.pprice}" />
						</div>
						<div class="mb-2">
							<label class="form-label">상품 재고</label> <input class="form-text" type="number" id="pamount"
								value="${productInfo.pamount}" />
						</div>
						<div class="mb-2"><label class="form-label">상품 판매량</label> ${productInfo.psellCount}</div>
						<div style="margin-right: 0px;">
							<button id="updateProductInfo" class="btn btn-danger btn-sm me-2">수정</button>
						</div>
					</div>
				</c:if>
			</c:forEach>
			</tbody>
		</div>
	</div>

</body>
</html>
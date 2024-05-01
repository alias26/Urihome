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
<script
	src="${pageContext.request.contextPath}/resources/js/admin/productInfoView.js"></script>

<script>
	
</script>
</head>
<body id="wrap" style="overflow-x: hidden">
	<div class="row">
		<div class="col-xl-2 col-lg-3">
			<%@ include file="/WEB-INF/views/admin/adminHeader.jsp"%>
		</div>
		<div class="col-xl-10 col-lg-9 table-responsive-lg"
			style="padding-left: 8px;">
			<div class="card">
				<div class="content-header mb-5 ms-0" style="height: 65px;">
					<h4 class="text-light text-uppercase mb-0">상품관리</h4>
					<a href="#"><i
						class="fas fa-sign-out-alt text-danger fa-lg me-0"></i></a>
				</div>
				<div class="card-body">
					<form id="updateProduct" method="post" action="updateProduct"
								enctype="multipart/form-data">
					<div class=" d-flex">
						<div class="me-2">
							<img src="" width="200px" height="200px">
						</div>
						<div class="me-2">
							<img src="" width="200px" height="200px">
						</div>
						<div>
							<div class="form-group mb-2">
								<label class="form-label">상품 아이디</label> <input class="form-text"
									type="text" id="pid" name="pid" value="${product.pid}" readonly>
							</div>
							<div class="form-group mb-2">
								<label class="form-label">상품 이름</label> <input class="form-text"
									type="text" id="pname" name="pname" value="${product.pname}" />
							</div>
							<div class="form-group mb-2">
								<label class="form-label">상품 가격</label> <input class="form-text"
									type="number" id="pprice" name="pprice" value="${product.pprice}" />
							</div>
							<div class="form-group mb-2">
								<label class="form-label">상품 재고</label> <input class="form-text"
									type="number" id="pstock" name="pstock" value="${product.pstock}" />
							</div>
							<div class="form-group mb-2">
								<label class="form-label">상품 판매량</label><input class="form-text"
									type="number" id="psellAmount" name="psellAmount" value="${product.psellAmount}" />
							</div>
							<div class="form-group mb-2">
								<label class="form-label">상품 총 매출</label><input class="form-text"
									type="number" id="psales" name="psales" value="${product.psales}" />
							</div>
							<div class="form-group mb-2">
								<label class="form-label">상품 조회수</label>
								${product.productHitcount}
							</div>
							<div class="form-group mb-2">
								<label class="form-label">상품 추가 날짜</label> ${product.pdate}
							</div>
							
							<div style="margin-right: 0px;">
								<button 
									class="btn btn-danger btn-sm me-2">수정</button>
								<a href="productManageView"
									class="btn btn-primary btn-sm me-2">취소</a>
							</div>
						</div>
					</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
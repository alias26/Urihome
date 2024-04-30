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
										<label class="form-label">상품 번호</label> <input
											class="form-text" type="text" id="pno"
											value="${productInfo.pno}" readonly />
									</div>
									<div class="mb-2">
										<label class="form-label">상품 이름</label> <input
											class="form-text" type="text" id="pname"
											value="${productInfo.pname}" />
									</div>
									<div class="mb-2">
										<label class="form-label">상품 가격</label> <input
											class="form-text" type="number" id="pprice"
											value="${productInfo.pprice}" />
									</div>
									<div class="mb-2">
										<label class="form-label">상품 재고</label> <input
											class="form-text" type="number" id="pamount"
											value="${productInfo.pamount}" />
									</div>
									<div class="mb-2">
										<label class="form-label">상품 판매량</label>
										${productInfo.psellCount}
									</div>
									<div style="margin-right: 0px;">
										<button id="updateProductInfo"
											class="btn btn-danger btn-sm me-2">수정</button>
									</div>
								</div>
							</c:if>
						</c:forEach>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
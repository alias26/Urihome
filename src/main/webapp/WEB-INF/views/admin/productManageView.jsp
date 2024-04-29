<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/resources/css/admin/productManageView.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
<!-- jquery -->
<script
	src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.min.js"></script>
<!-- user script-->
<script>
	
</script>
<style>
</style>
</head>
<body id="wrap" style="overflow-x: hidden">
	<div class="row">
		<div class="col-xl-2 col-lg-3">
			<%@ include file="/WEB-INF/views/admin/adminHeader.jsp"%>
		</div>
		<!--  -->
		<div class="col-xl-10 col-lg-9 table-responsive-lg"
			style="padding-left: 8px;">
			<!-- Dashboard 헤더 -->

			<div class="card">
				<div class="content-header mb-5 ms-0" style="height: 65px;">
					<h4 class="text-light text-uppercase mb-0">상품관리</h4>
					<a href="#"><i
						class="fas fa-sign-out-alt text-danger fa-lg me-0"></i></a>
				</div>
				<div class="card-body">
					<table class="table table-bordered table-striped table-hover"
						id="productInfoTable">
						<thead class="table-secondary">
							<tr>
								<th scope="col">상품 번호</th>
								<th scope="col">상품 이미지</th>
								<th scope="col">상품 이름</th>
								<th scope="col">상품 가격</th>
								<th scope="col">상품 재고</th>
								<th scope="col">상품 판매량</th>
								<th></th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="productInfo" items="${productInfoList}"
								varStatus="status">
								<c:if
									test="${(pageNo-1)*10<= status.index && status.index < pageNo*10}">
									<tr>
										<td>${productInfo.pno}</td>
										<td><img
											src="${pageContext.request.contextPath}/${productInfo.thumbnail}"
											width="90px" height="90px"></td>
										<td>${productInfo.pname}</td>
										<td>${productInfo.pprice}</td>
										<td>${productInfo.pamount}</td>
										<td>${productInfo.psellCount}</td>
										<td><a href="productInfoView?pno=${productInfo.pno}"
											id="updateProductInfo" class="btn btn-info btn-sm">수정</a> <a
											href="removeProductInfo?pno=${productInfo.pno}"
											id="removeProductInfo" class="btn btn-danger btn-sm">삭제</a></td>
									</tr>
								</c:if>
							</c:forEach>
						</tbody>
					</table>
					<div class="d-flex justify-content-between">
						<nav class="ms-auto me-auto" aria-label="">
							<ul class="pagination pagination-sm">
								<li class="page-item ${pageNo<=1 ? 'disabled':'' }"><a
									class="page-link"
									href="${pageContext.request.contextPath}/admin/productManageView?pageNo=${pageNo-1}"><</a></li>
								<c:forEach var="productInfo" items="${productInfoList}"
									varStatus="status">
									<c:if test="${status.index%10 == 0 }">
										<li class="page-item"><a
											class="page-link ${pageNo==(status.index/10+1)?'active' : ''}"
											href="${pageContext.request.contextPath}/admin/productManageView?pageNo=<fmt:formatNumber value="${status.index/10+1}" minFractionDigits="0"/>"><fmt:formatNumber
													value="${status.index/10+1}" minFractionDigits="0" /></a></li>
									</c:if>
								</c:forEach>
								<li
									class="page-item ${(pageNo+1>(fn:length(productInfoList))/10) ? 'disabled':''}"><a
									class="page-link"
									href="${pageContext.request.contextPath}/admin/productManageView?pageNo=${pageNo+1}">></a></li>
							</ul>
						</nav>
						<a href="addProductInfoView" class="btn btn-info"
							id="addProductInfoView">추가</a>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>

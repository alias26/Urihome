<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/resources/css/admin/adminHeader.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.0/font/bootstrap-icons.css">
<!-- Font Awesome CSS CDN -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css"
	integrity="sha512-..." crossorigin="anonymous" />

<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
<!-- jquery -->
<script
	src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.min.js"></script>



<div class="container-fluid">
	<div class="row">
		<div class="col-xl-2 col-lg-3 sidebar">
			<a href="#"
				class="navbar-brand text-white text-center d-block mx-auto py-3 mb-4 bottom-border">AdminPage</a>
			<div class="bottom-border pb-3">
				<img src="${pageContext.request.contextPath}/resources/image/admin/admin.png" width="50px" height="50px" class="rounded-circle ms-3 me-3">
				<span class="text-white">XXX님</span>
			</div>
			<ul class="navbar-nav flex-column mt-4">
				<li class="nav-item"><a href="#"
					class="nav-link text-white p-3 mb-2 current"> <i
						class="fas fa-home text-white fa-lg me-3"></i>대시보드
				</a></li>
				<li class="nav-item"><a href="#"
					class="nav-link text-white p-3 mb-2 sidebar-link"> <i
						class="fas fa-shopping-cart text-white fa-lg me-3"></i>상품관리
				</a></li>
				<li class="nav-item"><a href="#"
					class="nav-link text-white p-3 mb-2 sidebar-link"> <i
						class="fas fa-user text-white fa-lg me-3"></i>고객관리
				</a></li>
			</ul>
		</div>
	</div>
</div>




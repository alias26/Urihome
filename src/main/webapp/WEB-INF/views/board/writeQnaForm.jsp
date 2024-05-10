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
	href="${pageContext.request.contextPath}/resources/css/board/writeBoardForm.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
<!-- jquery -->
<script
	src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.min.js"></script>
<!-- css -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css" 
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/resources/css/board/writeUserBoardForm.css"
	rel="stylesheet">
<!-- user script-->

</head>
<body>
	<div class="flex-grow-1 m-5 p-5">
		<div class="d-flex row">
		 <form id="writeUserBoardForm" method="post" action="writeBoard" enctype="multipart/form-data">
		 	<!-- 상품후기 -->
		 	<div class="board-title d-flex">
		 		<button id="back-btn" onclick="history.back()">
			      	<i class="bi bi-chevron-left"></i>
			     </button>
		 		<h4 style="margin-top: 7px;"><strong>상품 QnA</strong></h4>
		 	</div>
		 	<hr style="border: solid black;">
		 	
		 	<div class="attach-file mt-4 mb-4">
		 		<img alt="" src="https://ssueim.com/web/upload/_awesome_skin/common/img_noimage.png">
		 		<button type="button" class="btn btn-outline-secondary" style="width: 110px; height: 40px; margin: 60px 30px;">주문상품선택</button>
		 	</div>
		 	<hr>
		 
		 	<div class="input-group mt-4">
		 		<p style="margin-right: 40px; margin-top: 20px">제목</p>
		 		<input id="btitle" type="text" name="btitle" class="form-control" placeholder="제목을 입력해주세요. (최대 125자)"
		 		 style="border:none; border-bottom: 1px solid #ddd;" >
		 	</div>
		 			 	
		 	<div class="input-group mt-4">
		 		<textarea id="bcontent" name="bcontent" class="form-control"
		 			style="width: 100%; height: 300px;"></textarea>
		 	</div>
		 	
		 	<div class="input-group mt-4">
		 		<input id="battachData" type="file" name="battachData" class="form-control" >
		 	</div>
		 </form>
		</div>
	</div>
</body>
</html>
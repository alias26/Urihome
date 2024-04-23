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
	$("#addProductInfo").click(()=>{
		var formData = new FormData();
		var pno = $("#pno").val();
		var pname = $("#pname").val();
		var pprice = $("#pprice").val();
		var pamount = $("#pamount").val();
		/* var thumbnail = $("#attachThumbnail")[0].files[0];
		var body = $("#attachBody")[0].files[0];
		formData.append("thumbnailImage", thumbnail);
		formData.append("bodyImage", body); */
		formData.append("pno", pno);
		formData.append("pname", pname);
		formData.append("pprice", pprice);
		formData.append("pamount", pamount);
		
		$.ajax({
			url: "addProductInfo",
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
	}
);
});
</script>
</head>
<body class="pt-5" id="wrap">
	<%@ include file="/WEB-INF/views/common/header.jsp"%>
	<div class="mt-5 mb-5" style="text-align: center;">
		<h1>상품 목록</h1>
	</div>
	<div class="d-flex justify-content-center">
		<div>
			<nav class="navbar flex-column navbar-expand-md navbar-light mt-0"
				id="commandList">
				<ul class="navbar-nav flex-column" style="text-align: right;">
					<li class="nav-item"><a href="#" class="nav-link"><h3>상품
								목록</h3></a></li>
					<li class="nav-item"><a href="#" class="nav-link"><h3>배송
								현황</h3></a></li>
					<li class="nav-item"><a href="#" class="nav-link"><h3>고객
								관리</h3></a></li>
					<li class="nav-item"><a href="#" class="nav-link"><h3>매출</h3></a></li>
				</ul>
			</nav>
		</div>
		<form method="post" enctype="multipart/form-data" action="addProductInfo">
			<div class="me-2">
				<label class="form-label">상품 번호</label> <input class="form-text" type="number" id="pno" />
			</div>
			<div class="me-2">
				<label class="form-label">상품 이름</label> <input class="form-text" type="text" id="pname" />
			</div>
			<div class="me-2">
				<label class="form-label">상품 가격</label> <input class="form-text" type="number" id="pprice" />
			</div>
			<div class="me-2">
				<label class="form-label">상품 재고</label> <input class="form-text" type="number" id="pamount" />
			</div>
			<div class="me-2">
				<input type="file" class="form-control-file"
					id="attachThumbnail" name="attachThumbnail">
			</div>
			<div class="me-2">
				<input type="file" class="form-control-file"
					id="attachBody" name="attachBody">
			</div>
			
			<button type="button" id="addProductInfo" class="btn btn-danger btn-sm">추가</button>
		</form>
	</div>
</body>
</html>
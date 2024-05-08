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

<style>
/* 추가 정보 열을 숨김 */
.additional-info {
    display: none;
}
</style>

<script
    src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
<script
    src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.min.js"></script>
<script>
// "모든 정보 보기" 버튼을 클릭할 때 실행되는 함수
function toggleAllDetails() {
    // 모든 추가 정보 열 선택
    var additionalInfos = document.querySelectorAll('.additional-info');
    
    // 모든 추가 정보 열의 표시 여부를 변경
    additionalInfos.forEach(function(info) {
        if (info.style.display === 'none') {
            info.style.display = 'table-cell';
        } else {
            info.style.display = 'none';
        }
    });
}
</script>

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
			<div class="content-header mb-5 ms-0" style="height: 65px;">
					<h4 class="text-light text-uppercase mb-0">고객관리</h4>
					<a href="${pageContext.request.contextPath}/logout"><i
						class="fas fa-sign-out-alt text-danger fa-lg me-0"></i></a>
			</div>
			<div class="card" style="width:95%; margin: 0 auto;">
				<div class="card-body">
					<table class="table table-bordered table-striped table-hover"
						id="productInfoTable">
						<thead class="table-secondary">
							<tr>
								<th scope="col">회원 아이디</th>
                                <th scope="col">회원 비밀번호</th>
                                <th scope="col">회원 이메일</th>
                                <th scope="col">회원 이름</th>
                                <th scope="col">회원 가입 날짜</th>
                                <!-- 추가 정보 열 -->
                                <th class="additional-info" scope="col">회원 전화번호</th>
                                <th class="additional-info" scope="col">회원 핸드폰번호</th>
                                <th class="additional-info" scope="col">회원 상세주소</th>                               
                                <th class="additional-info" scope="col">회원 우편번호</th>
                                <th class="additional-info" scope="col">회원 주소</th>
                                <th class="additional-info" scope="col">권한</th>
                                 <th class="additional-info" scope="col">동의 사항</th>
                                <th class="additional-info" scope="col">동의사항2</th>
                                <th class="additional-info" scope="col">동의사항3</th>
                                <th scope="col"> 회원 수정 및 삭제</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="member" items="${memberList}">
									<tr>
										<td>${member.mid}</td>
	                                    <td>${member.mpassword}</td>
	                                    <td>${member.memail}</td>
	                                    <td>${member.mname}</td>
	                                       <td><fmt:formatDate value="${member.mdate}" pattern="yyyy-MM-dd"/></td>
	                                     
	                                    <!-- 추가 정보 열에 해당하는 데이터 -->
	                                    <td class="additional-info">${member.mtel}</td>
	                                    <td class="additional-info">${member.mphone}</td>
	                                    <td class="additional-info">${member.mdetailAddress}</td>	                                    
	                                    <td class="additional-info">${member.mzip}</td>
	                                    <td class="additional-info">${member.maddress}</td>
	                                    <td class="additional-info">${member.mrole}</td>
	                                    <td class="additional-info">${member.agree1}</td>
	                                    <td class="additional-info">${member.agree2}</td>
	                                    <td class="additional-info">${member.agree3}</td>	                                        
	                                    <td>
	                                    	<a class="btn btn-primary" href="userInfoView?mid=${member.mid}">수정</a>
	                                    	<a class="btn btn-danger" href="deleteMember?mid=${member.mid}">삭제</a>	                                    
	                                    </td>        
									</tr>
							</c:forEach>
						</tbody>
						
					</table>
					<div class="d-flex justify-content-between">
						<nav class="ms-auto me-auto" aria-label="">
							<ul class="pagination pagination-sm">
								<c:if test="${pager.groupNo>1}">
									<li class="page-item"><a class="page-link" href="productList?pageNo=1"><<</a></li>
									<li class="page-item"><a class="page-link" href="productList?pageNo=${pager.startPageNo-1}"><</a></li>
								</c:if>
								<c:forEach var="i" begin="${pager.startPageNo}" end="${pager.endPageNo}">
									<li class="page-item">
									<a class="page-link ${pager.pageNo==i ?'active':''}" href="productManageView?pageNo=${i}">${i}</a></li>
								</c:forEach>
								<c:if test="${pager.groupNo<pager.totalGroupNo}">
									<li class="page-item"><a class="page-link" href="productList?pageNo=1">></a></li>
									<li class="page-item"><a class="page-link" href="productList?pageNo=${pager.startPageNo-1}">>></a></li>
								</c:if>
							</ul>
						</nav>					
					</div>
					<button class="btn btn-primary btn-sm" onclick="toggleAllDetails()">모든 정보 보기</button>
				</div>
			</div>
			
			
		</div>
	</div>
	 
</body>
</html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
      <meta charset="UTF-8">
      <title>회원 정보 수정 | 우리집</title>
      <!-- Bootstrap 5를 위한 외부 라이브러리 설정 -->
	  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
	  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
	  <!-- jQuery 외부 라이브러리 설정 -->
	  <script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.min.js"></script>
	  <script src="${pageContext.request.contextPath}/resources/js/member/mypage.js" rel="stylesheet"></script>
	  
	  <!-- 사용자 정의 자바스크립트 -->
	  <script>
	   
	  </script>
	  
   </head>
   <!-- css 적용 -->
   	<link href="${pageContext.request.contextPath}/resources/css/member/mypage.css" rel="stylesheet">
   <body>
    <%@ include file="/WEB-INF/views/common/header.jsp" %>
    <!-- mypage tab 메뉴 -->
	<%@ include file="/WEB-INF/views/member/mypageTab.jsp" %>
	
	
	<%@ include file="/WEB-INF/views/common/footer.jsp" %>
	</body>
</html>
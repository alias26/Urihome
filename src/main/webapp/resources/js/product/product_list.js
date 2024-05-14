// 전체 조회
$(document).ready(function() {
    $("#categoryAllBtn").click(function(event) {
        console.log("categoryAllBtn()");
		// 기본 이벤트 막기
		event.preventDefault();	
		
        // AJAX 요청 보내기
        $.ajax({
            url: "getProductListAjax",
            type: "get",
            success: function(data) {
                console.log(data);
                // 서버로부터 받은 데이터를 div에 적용
                $("#productItem").html(data);
            },
            error: function(xhr, status, error) {
                console.error("AJAX 요청 실패: ", error);
            }
        });
    });
});

// 수저 세트 조회
$(document).ready(function() {
    $("#category1Btn").click(function(event) {
        console.log("category1Btn()");
		// 기본 이벤트 막기
		event.preventDefault();	
		
        // AJAX 요청 보내기
        $.ajax({
            url: "getProductListAjax1",
            type: "get",
            success: function(data) {
                console.log(data);
                // 서버로부터 받은 데이터를 div에 적용
                $("#productItem").html(data);
            },
            error: function(xhr, status, error) {
                console.error("AJAX 요청 실패: ", error);
            }
        });
    });
});

// 컵 조회
$(document).ready(function() {
    $("#category2Btn").click(function(event) {
        console.log("category2Btn()");
		// 기본 이벤트 막기
		event.preventDefault();	
		
        // AJAX 요청 보내기
        $.ajax({
            url: "getProductListAjax2",
            type: "get",
            success: function(data) {
                console.log(data);
                // 서버로부터 받은 데이터를 div에 적용
                $("#productItem").html(data);
            },
            error: function(xhr, status, error) {
                console.error("AJAX 요청 실패: ", error);
            }
        });
    });
});

// 그릇 조회
$(document).ready(function() {
    $("#category3Btn").click(function(event) {
        console.log("category3Btn()");
		// 기본 이벤트 막기
		event.preventDefault();	
		
        // AJAX 요청 보내기
        $.ajax({
            url: "getProductListAjax3",
            type: "get",
            success: function(data) {
                console.log(data);
                // 서버로부터 받은 데이터를 div에 적용
                $("#productItem").html(data);
            },
            error: function(xhr, status, error) {
                console.error("AJAX 요청 실패: ", error);
            }
        });
    });
});

// 접시 조회
$(document).ready(function() {
    $("#category4Btn").click(function(event) {
        console.log("category4Btn()");
		// 기본 이벤트 막기
		event.preventDefault();	
		
        // AJAX 요청 보내기
        $.ajax({
            url: "getProductListAjax4",
            type: "get",
            success: function(data) {
                console.log(data);
                // 서버로부터 받은 데이터를 div에 적용
                $("#productItem").html(data);
            },
            error: function(xhr, status, error) {
                console.error("AJAX 요청 실패: ", error);
            }
        });
    });
});
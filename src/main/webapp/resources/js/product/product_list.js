// 전체 조회
function categoryAllFunction() {
	console.log("categoryAllBtn()");
	// AJAX 요청 보내기
	$.ajax({
		url : "getProductListAllAjax",
		type : "get",
		success : function(data) {
			console.log(data);
			// 서버로부터 받은 데이터를 div에 적용
			$("#productItem").remove();
			$(".product-list").html(data);
		},
		error : function(xhr, status, error) {
			console.error("AJAX 요청 실패: ", error);
		}
	});
}

// 카테고리별 조회
function categoryFunction(category) {
	console.log("categoryBtn()");

	var pcategoryName = category;
	console.log(pcategoryName);

	$.ajax({
		url : "getProductListAjax?pcategoryName=" + pcategoryName,
		type : "get",
		success : function(data) {
			console.log(data);
			// 서버로부터 받은 데이터를 div에 적용
			$("#productItem").remove();
			$(".product-list").html(data);
		},
		error : function(xhr, status, error) {
			console.error("AJAX 요청 실패: ", error);
		}
	});
}

$(function() {
	$(".cartBtn").click(function() {
	 	var pid = $(this).parent("div").find("input[name=pid]").val();
	   	var pname = $(this).parent("div").find("#pname").text();
	   	var pprice = $(this).parent("div").find("#pprice").text();
	   	var pbuyAmount = 1;
	   	var cartItem = {
	   	    "pid": pid,
	    	"pname": pname,
	   	    "pprice": pprice,  
	   	    "pbuyAmount":1
	   	};
	   	cartItem = JSON.stringify(cartItem);
	       $.ajax({
	           url: "../cart/addCartItem", 
	           method: "POST",
	           data: cartItem,
	           contentType: "application/json",
	           success: function(data) {
			      	  const modal=new bootstrap.Modal("#addCartModal");
			      	  modal.show();
	           }
	      
	       })
	});
})
function ajaxTable(pageNo){
	$.ajax({
		url:"productManageTable?pageNo="+pageNo,
		method:"get",
		contentType : "application/json; charset:UTF-8",
		success: function(data){
			$("table").remove();
			$(".card-body").html(data);
		}
	});
}

$(function(){

});
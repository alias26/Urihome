function removeReview(bpnumber, pid) {
	$.ajax({
		url : "../boardProduct/removeReview?bpnumber=" + bpnumber + "&pid="
				+ pid,
		method : "get",
		contentType : "application/json; charset:UTF-8",
		success : function(data) {
			$("#tab03").html(data);
		}
	});
}

function getReviewPage(pid, rpageNo) {
	$.ajax({
		url : "../boardProduct/reviewList?pid=" + pid + "&rpageNo=" + rpageNo,
		method : "get",
		contentType : "application/json; charset:UTF-8",
		success : function(data) {
			$("#tab03").html(data);
		}
	});
}
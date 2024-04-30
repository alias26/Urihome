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
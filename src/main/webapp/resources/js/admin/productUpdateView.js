var thumbnail ={
	count: '${thumbImageCount}',
	filesList: []
};

var body ={
	count: '${bodyImageCount}',
	filesList: []
};

var thumbDel = [];
var bodyDel = [];

function imgFilesSelect(event, type, previewId, width, height, topPx, rightPx, totalCnt){
	var files = event.target.files;
	var fileInputId = event.target.id;
	var filesArray = Array.prototype.slice.call(files);
	
	if(totalCnt < type.count + filesArray.length){
		return;
	}else{
		type.count = type.count + filesArray.length;
	}
	
	filesArray.forEach(function(file){
		if(!file.type.match("image.*")){
			return;
		}
		
		type.filesList.push(file);
		
		var reader = new FileReader();
		reader.onload = function(e) {
			var imageContainer = $("<div class=\"continer\" style=\"position:relative;\"></div>");
			var imageElement = $("<img class=\"mt-3 me-2\" src=\"" + e.target.result + "\" width=\""+width+"\" height=\""+ height+"\"/>");
			var deleteButton = $("<button class=\"delete\"  data-index=\"" + file.lastModified+ "\" onclick=\"deleteSelectFile\" class=\"btn btn-light btn-sm\" type=\"button\" style=\"position:absolute;top:"+topPx+";right:"+rightPx+";\"><i class=\"bi bi-x\"></i></button>");
			
			imageContainer.append(imageElement);
			imageContainer.append(deleteButton);
			$(previewId).append(imageContainer);
			
			deleteButton.on("click", function(){
				deleteSelectFile(imageContainer, fileInputId, type);
			});
		}
		reader.readAsDataURL(file);	
	})
}

function deleteSelectFile(imageContainer, fileInputId, type){
	var removeTargetId = imageContainer.find('button').attr('data-index');
	var id ="#"+fileInputId;
    var files = $(id).prop('files');
   var dataTransfer = new DataTransfer();
    
    Array.from(files).filter(file => file.lastModified != removeTargetId).forEach(file=>{dataTransfer.items.add(file);});
	type.count -= 1;
    $(id).prop('files', dataTransfer.files);
    imageContainer.remove();
}

function deleteSelectImage(element, type){
	var imageContainer = $(element).closest('div');
	imageContainer.remove();
	
	if(type==='thumbnail'){
		thumbnail.count -= 1;
		thumbDel.push($(element).attr('data-index'));
	}else{
		body.count -= 1;
		bodyDel.push($(element).attr('data-index'));
	}
}

$(function(){
	$("#pbodyImage").on("change", (event) => imgFilesSelect(event, body, "#bodyPreview", "500px", "", "18px", "210px", 10));
	$("#pthumbnailImage").on("change", (event) => imgFilesSelect(event, thumbnail, "#thumbnailPreview", "100px", "100px", "18px", "10px", 4));

	$('#submit').on("click", function () {
		var formData = new FormData();
		var pbodyImg = $("#pbodyImage")[0].files;
		var pthumbnailImg = $("#pthumbnailImage")[0].files;
		var product = {
			pid: $("#pid").val(),
			pname: $("#pname").val(),
			pprice: parseInt($("#pprice").val()),
			pstock: parseInt($("#pstock").val()),
			thumbDel: thumbDel,
			bodyDel: bodyDel
		}
		product = JSON.stringify(product);
		formData.append("product", product);
		
				
		if(pbodyImg.length>0){
			for(var i=0; i < pbodyImg.length; i++){
				formData.append("pbodyImage", pbodyImg[i]);
			}
		}else{
			formData.append("pbodyImage", null);
		}
		if(pthumbnailImg.length>0){
			for(var i=0; i < pthumbnailImg.length; i++){
				formData.append("pthumbnailImage", pthumbnailImg[i]);
			}
		}else{
			formData.append("pthumbnailImage", null);
		}
		
		/*var jsonData = JSON.stringify(formData);*/
		
		$.ajax({
			url:"updateProduct",
			method:"post",
			data: formData,
			cache: false,
			processData: false,
			contentType: false,
			success: function(data){
				location.href="./productManageView";
			}
		});
    });
});
function orderFormCheckData() {
	event.preventDefault();

	// 각 입력 양식의 데이터 검사
	var totalResult = true;

	totalResult &= isRightName("oname1");
	totalResult &= isRightCellPhone("cellPhone1");
	totalResult &= isRightEmail("email");
	totalResult &= isRightName("oname2");
	totalResult &= isRightCellPhone("cellPhone2");
	totalResult &= checkAgree();

	if (totalResult) {
		var elForm = $("#orderForm");

		//수동으로 action을 수행
		elForm[0].submit();
	}
}

function isRightName(nameId) {
	var result = true;
	var name = "#" + nameId;
	var onameSpan = "#" + nameId.substr(0, 5) + "Span" + nameId.substr(-1);

	//한국이름 검사 
	var name = $(name);
	var nameValue = name.val();
	var namePattern = /^[가-힣]{2,4}$/;
	var nameResult = namePattern.test(nameValue);
	var nameSpan = $(onameSpan);
	
	if(nameValue=="" || nameValue==null){
		nameSpan.html("이름을 입력해주세요.");
		name.addClass("border-danger");
		nameSpan.addClass("text-danger");
		result = false;
	}else if (!nameResult) {
		nameSpan.html("잘못된 형식의 이름입니다.");
		name.addClass("border-danger");
		nameSpan.addClass("text-danger");
		result = false;
	} else {
		nameSpan.html("&nbsp;");
		name.removeClass("border-danger");
		nameSpan.removeClass("text-danger");
	}

	return result;
}

function isRightCellPhone(cellPhoneId) {
	var result = true;
	var cellPhone = "#" + cellPhoneId;
	var cellPhoneSpan = "#" + cellPhoneId.substr(0, 9) + "Span" + cellPhoneId.substr(-1);

	//phone 검사 
	var cellPhone1 = $(cellPhone+"_1");
	var cellPhone2 = $(cellPhone+"_2");
	var cellPhone3 = $(cellPhone+"_3");
	var cellPhoneValue = cellPhone1.val() + "-" + cellPhone2.val() + "-" + cellPhone3.val();
	var cellPhonePattern = /^(010|011)-\d{3,4}-\d{4}$/;
	var cellPhoneResult = cellPhonePattern.test(cellPhoneValue);
	var cellPhoneSpan = $(cellPhoneSpan);
	
	if(cellPhoneValue=="" || cellPhoneValue==null){
		nameSpan.html("휴대전화번호를 입력해주세요.");
		name.addClass("border-danger");
		nameSpan.addClass("text-danger");
		result = false;
	}else if (!cellPhoneResult) {
		cellPhoneSpan.html("휴대전화번호가 정확한지 확인해 주세요.");
		cellPhone2.addClass("border-danger");
		cellPhone3.addClass("border-danger");
		cellPhoneSpan.addClass("text-danger");
		result = false;
	} else {
		cellPhoneSpan.html("&nbsp;");
		cellPhone2.removeClass("border-danger");
		cellPhone3.removeClass("border-danger");
		cellPhoneSpan.removeClass("text-danger");
	}
	return result;
}

function isRightEmail() {
	var result = true;

	//email 검사
	var email = $("#email");
	var emailPattern = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/;
	var emailResult = emailPattern.test(email.val());
	var emailSpan = $("#emailSpan");

	if (!emailResult) {
		emailSpan.html("잘못된 이메일입니다.");
		email.addClass("border-danger");
		emailSpan.addClass("text-danger");
		result = false;
	} else {
		emailSpan.html("&nbsp;");
		email.removeClass("border-danger");
		emailSpan.removeClass("text-danger");
	}
	return result;
}

function checkAgree() {
	var checkResult = true;
	var checkboxes = $("input[name=check]");
	var checkSpan = $("#checkSpan");
	
	for(let index = 0; index < checkboxes.length - 1 ; index++){
			checkResult &= checkboxes.eq(index).is(":checked");
	}
	
	if (!checkResult) {
		checkSpan.html("약관에 동의해주세요.");
		checkSpan.addClass("text-danger");
	} else {
		checkSpan.html("&nbsp;");
		checkSpan.removeClass("text-danger");
	}
	
	return checkResult;
}

function changeBtn(id){
    var currentBtn = $("#" + id);
    var buttons = $("button[name=paymentBtn]");
    
    buttons.find("img").addClass("grayscale"); // 모든 이미지에 그레이스케일 추가
    
    currentBtn.find("img").removeClass("grayscale"); // 현재 버튼 이미지의 그레이스케일 제거
}


$(function() {
		var checkAll = $("#checkAll");
		var checkboxes = $("input[name=check]");
		
		checkAll.on("click", function(){
			if($("#checkAll").is(":checked")){
				checkboxes.prop("checked", true);
			}else{
				checkboxes.prop("checked", false);
			}
		});
		
		checkboxes.on("click", function(){
			var total = checkboxes.length;
			var checked = $("input[name=check]:checked").length;
			
			if(checked == total){
				checkAll.prop("checked", true);
			}else{
				checkAll.prop("checked", false);
			}
			
		});
	}
);
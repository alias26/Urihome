function joinFormCheckData() {
	event.preventDefault();

	// 각 입력 양식의 데이터 검사
	var totalResult = true;

	totalResult &= isRightID();
	totalResult &= isRightPassword();
	totalResult &= isRightName();
	totalResult &= isRightNormalPhone();
	totalResult &= isRightCellPhone();
	totalResult &= isRightEmail();
	totalResult &= checkAgree();

	if (totalResult) {
		var elForm = $("#joinForm");

		//수동으로 action을 수행
		elForm[0].submit();
	}

}

function isRightID() {
	var result = true;

	//ID 검사	
	var mid = $("#mid");
	var midValue = mid.val();

	var midPattern = /^(?=.*\d)(?=.*[A-Za-z]).{6,20}$/;
	var midResult = midPattern.test(midValue);
	var midSpan = $("#midSpan");

	if (!midResult) {
		midSpan.addClass("text-danger");
		result = false;
	} else {
		midSpan.removeClass("text-danger");
	}

	return result;
}

function isRightPassword() {
	var result = true;

	//password 검사
	var mpassword = $("#mpassword");
	var mpasswordValue = mpassword.val();
	var mpasswordPattern = /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[$`~!@$!%*#^?&\\(\\)\-_=+]).{8,15}$/;
	var mpasswordResult = mpasswordPattern.test(mpasswordValue);
	var mpasswordSpan = $("#mpasswordSpan");

	if (!mpasswordResult) {
		mpasswordSpan.addClass("text-danger");
		result = false;
	} else {
		mpasswordSpan.removeClass("text-danger");
	}

	//passwordCheck 검사
	var mpasswordCheck = $("#mpasswordCheck");
	var mpasswordCheckValue = mpasswordCheck.val();
	var mpasswordCheckSpan = $("#mpasswordCheckSpan");

	if (mpasswordCheckValue !== mpasswordValue || mpasswordValue === "") {
		mpasswordCheckSpan.html("비밀번호가 맞지 않습니다.");
		mpasswordCheckSpan.addClass("text-danger");
		result = false;
	} else {
		mpasswordCheckSpan.html("&nbsp;");
		mpasswordCheckSpan.removeClass("text-danger");
	}

	return result;
}

function isRightName() {
	var result = true;

	//한국이름 검사 
	var name = $("#name");
	var nameValue = name.val();
	var namePattern = /^[가-힣]{2,4}$/;
	var nameResult = namePattern.test(nameValue);
	var nameSpan = $("#nameSpan");

	if (!nameResult) {
		nameSpan.html("잘못된 형식의 이름입니다.");
		nameSpan.addClass("text-danger");
		result = false;
	} else {
		nameSpan.html("&nbsp;");
		nameSpan.removeClass("text-danger");
	}

	return result;
}

function isRightNormalPhone() {
	var result = true;

	//phone 검사 
	var normalPhone1 = $("#normalPhone1");
	var normalPhone2 = $("#normalPhone2");
	var normalPhone3 = $("#normalPhone3");
	var normalPhoneValue = normalPhone1.val() + "-" + normalPhone2.val() + "-" + normalPhone3.val();
	var normalPhonePattern = /^(02|032)-\d{3}-\d{4}$/;
	var normalPhoneResult = normalPhonePattern.test(normalPhoneValue);
	var normalPhoneSpan = $("#normalPhoneSpan");
	
	if(normalPhone2.val() === "" && normalPhone3.val() === ""){
		normalPhoneSpan.html("&nbsp;");
		normalPhoneSpan.removeClass("text-danger");
		return true;
	}

	if (!normalPhoneResult) {
		normalPhoneSpan.html("전화번호가 틀렸습니다.");
		normalPhoneSpan.addClass("text-danger");
		result = false;
	} else {
		normalPhoneSpan.html("&nbsp;");
		normalPhoneSpan.removeClass("text-danger");
	}
	return result;
}

function isRightCellPhone() {
	var result = true;

	//phone 검사 
	var cellPhone1 = $("#cellPhone1");
	var cellPhone2 = $("#cellPhone2");
	var cellPhone3 = $("#cellPhone3");
	var cellPhoneValue = cellPhone1.val() + "-" + cellPhone2.val() + "-" + cellPhone3.val();
	var cellPhonePattern = /^(010|011)-\d{3,4}-\d{4}$/;
	var cellPhoneResult = cellPhonePattern.test(cellPhoneValue);
	var cellPhoneSpan = $("#cellPhoneSpan");

	if (!cellPhoneResult) {
		cellPhoneSpan.html("전화번호가 틀렸습니다.");
		cellPhoneSpan.addClass("text-danger");
		result = false;
	} else {
		cellPhoneSpan.html("&nbsp;");
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
		emailSpan.addClass("text-danger");
		result = false;
	} else {
		emailSpan.html("&nbsp;");
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
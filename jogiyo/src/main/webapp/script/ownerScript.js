function checkLogin() {
	if(document.loginform.id.value == "") {
		alert("아이디를 입력하세요.");
		document.loginForm.id.focus();
	} else if(document.loginform.password.value == "") {
		alert("비밀번호를 입력하세요.");
		document.loginform.password.focus();
	} else {
		document.loginform.submit();
	}
}

function request() {
	if(document.requestform.license_num1.value == "") {
		alert("사업자  번호를 입력하세요.");
		document.requestform.license_num1.focus();
	}else if(document.requestform.license_num2.value == "") {
		alert("사업자  번호를 입력하세요.");
		document.requestform.license_num2.focus();
	} else if(document.requestform.license_num3.value == "") {
		alert("사업자  번호를 입력하세요.");
		document.requestform.license_num3.focus();
	}  else if(document.requestform.registration.value == "") {
		alert("사업자등록증 사본등록을 하세요.");
		document.requestform.registration.focus();
	}  else if(document.requestform.business_register.value == "") {
		alert("영업신고증 사본등록을 하세요.");
		document.requestform.business_register.focus();
	}else if(document.requestform.register_name.value == "") {
		alert("사업주명을 입력하세요.");
		document.requestform.register_name.focus();
	} else if(document.requestform.business_phone2.value == "") {
		alert("사업자  휴대폰번호를 입력하세요.");
		document.requestform.business_phone2.focus();
	} else if(document.requestform.business_phone3.value == "") {
		alert("사업자  휴대폰번호를 입력하세요.");
		document.requestform.business_phone3.focus();
	} else if(document.requestform.restaurant_name.value == "") {
		alert("음식점 이름을 입력하세요.");
		document.requestform.restaurant_name.focus();
	} else if(document.requestform.restaurant_address1.value == "") {
		alert("음식점 주소(우편번호)를 입력하세요.");
		document.requestform.restaurant_address1.focus();
	} else if(document.requestform.restaurant_address2.value == "") {
		alert("음식점 주소(도로명주소)를 입력하세요.");
		document.requestform.restaurant_address2.focus();
	} else if(document.requestform.restaurant_address3.value == "") {
		alert("음식점 주소(지번주소)를 입력하세요.");
		document.requestform.restaurant_address3.focus();
	} else if(document.requestform.restaurant_address4.value == "") {
		alert("음식점 주소(상세주소)를 입력하세요.");
		document.requestform.restaurant_address4.focus();
	} else if(document.requestform.delivery_option.value == "") {
		alert("배달 가능 여부를 입력하세요.");
		document.requestform.delivery_option.focus();
	} else if(document.requestform.delivery_option.value == "") {
		alert("배달 가능 여부를 입력하세요.");
		document.requestform.delivery_option.focus();
	} else if(document.requestform.somename.value == "") {
		alert("썸네일 등록하세요.");
		document.requestform.somename.focus();
	}else {
		document.requestform.submit();
	} 
}
if(!$("#privacyCheck").is(":checked")) {
    alert("개인정보 수집 및 이용에 동의 해주세요");
    $("#privacyCheck").focus();
}

function registration() {
	if(document.registration.company_number.value == "") {
		alert("사업자  번호를 입력하세요.");
		document.registration.company_number.focus();
	}else if(document.registration.phone_number.value == "") {
		alert("사업자  번호를 입력하세요.");
		document.registration.phone_number.focus();
	} else {
		document.registration.submit();
	}
}

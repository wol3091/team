function checkLogin() {
	if(document.adminLoginForm.admin_id.value == "") {
		alert("아이디를 입력하세요.");
		document.adminLoginForm.admin_id.focus();
	} else if(document.adminLoginForm.admin_pwd.value == "") {
		alert("비밀번호를 입력하세요.");
		document.adminLoginForm.admin_pwd.focus();
	} else {
		document.adminLoginForm.submit();
	}
}

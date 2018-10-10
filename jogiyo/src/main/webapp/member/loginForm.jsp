<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>조기요 - 즐거운 식탁이 찾아온다. 배달음식 주문은 역시 조기요!</title>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
function checkLogin() {
	if(document.loginForm.id.value == "") {
		alert("아이디를 입력하세요");
		document.loginForm.id.focus();
	} else if(document.loginForm.pwd.value== "") {
		alert("비밀번호를 입력하세요");
	} else {
		document.loginForm.submit();
	}
}

function onEnterSubmit(){
	var keyCode = window.event.keyCode;
	if(keyCode==13) checkLogin();
}
</script>
<style type="text/css">
.container {
	text-align: center;
}
span {
	float: right;
}
span a {
	text-decoration: none;
	color: gray;
}
.logo {
	width: 130px;
	height: 60px;
}
.btn-lg {
	border: 1px;
}


</style>
</head>
<body>
<form action="login.do" name="loginForm" method="post">
	<div class="container">
		<img class="logo" alt="로고" src="../image/logo-jogiyo.png">
		<input type="text" name="id" class="form-control" placeholder="이메일 주소 입력(필수)">
		<input type="password" id="pwd" name="pwd" class="form-control" placeholder="비밀번호 입력(필수)" onkeydown="onEnterSubmit()">
		
		<span><a>아이디 찾기</a> | <a href="searchPw.do">비밀번호 찾기</a></span>
		
		<input type="button" id="login" class="btn-lg btn-block" value="로그인" onclick="checkLogin()">
		<input type="button" class="btn btn-lg btn-danger btn-block" value="회원가입" onclick="location.href='writeForm.do'">
		<br><br>
	</div>
</form>
</body>
</html>
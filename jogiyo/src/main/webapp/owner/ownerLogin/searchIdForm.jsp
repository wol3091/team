<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
function checkLogin() {
	if(document.searchIdForm.business_phone1.value == "") {
		alert("휴대폰번호 첫번째 자리를 입력하세요");
		document.searchIdForm.business_phone1.focus();
	} else if(document.searchIdForm.business_phone2.value == "") {
		alert("휴대폰번호 둘째 자리를 입력하세요");
		document.searchIdForm.business_phone2.focus();
	} if(document.searchIdForm.business_phone3.value == "") {
		alert("휴대폰번호 세번째 자리를 입력하세요");
		document.searchIdForm.business_phone3.focus();
	} else {
		document.searchId.submit();
	}
}
</script>
<style type="text/css">
html, body {
    letter-spacing: 0;
    font-family: '맑은고딕', malgun gothic,'돋움',Dotum,'Apple SD Gothic Neo',Helvetica,sans-serif;
}
body {
	font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
    font-size: 14px;
    line-height: 1.5;
    color: #333;
    background-color: #fff;
    height: 500px;
    
}
.wrap {
	width: 700px;
	background: #dcdcdc;
	padding-left: 150px;
/* 	margin-left: 250px; */
	padding-top: 150px;
}
.container p {
	font-size: 12px;
}
.form-control {
	width: 300px;
}
#btn{
	width: 300px;
}
</style>
</head>
<body>

<form action="searchId.do" name="searchIdForm" method="post">
	<div class="wrap">
	<div class="container">
		<h1>아이디찾기</h1>
		<br>
		<input type="text" name="business_phone1" class="form-control" placeholder="휴대폰번호 입력(010)" required>
		<input type="text" name="business_phone2" class="form-control" placeholder="휴대폰번호 입력(0000)" required>
		<input type="text" name="business_phone3" class="form-control" placeholder="휴대폰번호 입력(0000)" required>
		<br>
		<p>*아이디찾기를 위해 가입하신 휴대폰번호를 입력 후, 아이디 찾기 버튼을 눌러주세요</p>

		<br>
	    <input type="submit" id="btn" class="btn btn-lg btn-danger btn-block" value="아이디 찾기">
	    <br><br>
    </div>
    </div>
</form>
</body>
</html>
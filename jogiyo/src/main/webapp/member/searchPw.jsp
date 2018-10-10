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
<style type="text/css">
html, body {
	width: auto !important;
    min-width: 320px;
    letter-spacing: 0;
    font-family: '맑은고딕', malgun gothic,'돋움',Dotum,'Apple SD Gothic Neo',Helvetica,sans-serif;
}
body {
	font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
    font-size: 14px;
    line-height: 1.5;
    color: #333;
    background-color: #fff;
}
.wrap {
	background: #dcdcdc;
}
.container p {
	font-size: 12px;
}
</style>
</head>
<body>
<form action="emailSend.do" name="searchPw" method="post">
	<div class="wrap">
	<div class="container">
		<br>
		<input type="email" name="id" class="form-control" placeholder="이메일 주소 입력(필수)" required>
		<br>
		<p>·비밀번호 설정을 위해 가입하신 이메일 주소를 입력 후, 이메일 발송 버튼을 눌러주세요.</p>
		<br>
	    <input type="submit" class="btn btn-lg btn-danger btn-block" value="이메일 발송">
	    <br><br>
    </div>
    </div>
</form>
</body>
</html>
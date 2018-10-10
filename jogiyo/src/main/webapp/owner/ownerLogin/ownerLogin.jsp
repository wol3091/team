<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://fonts.googleapis.com/css?family=Black+Han+Sans&amp;subset=korean" rel="stylesheet"> 
<style type="text/css">
.info h3 {
	font-family: 'Black Han Sans', sans-serif;
	font-size: 30px;
}
.info a {
	font-size: 20px;
	color: #e61c13;
}
.info span {
	font-size: 20px;
	color: #e61c13;
}
</style>
</head>
<body>
<div class="info">
	<img src="../../owner/ownerimage/logoowner.png" width="250px" height="100px">
	<br><br><br><br>
	<h3>${name} 님</h3>
	<img src="../../owner/ownerimage/image.PNG" width="100px" style="margin-left: 20px;"><img src="../../owner/ownerimage/logo-jogiyo3.png">
	<br>
	<a href="../../owner/myinfo/check_pwd.do">내 정보</a> <span>/</span> <a href="../../owner/ownerLogin/ownerLogout.do">로그아웃</a>
	<br><br><br>
</div>
</body>
</html>
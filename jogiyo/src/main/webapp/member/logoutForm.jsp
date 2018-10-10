<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
.container {
	text-align: center;
	font-size: 16px;
}
.container span {
	color: orange;
}
</style>
</head>
<body>
<form action="">
	<div class="container">
		<br>
		<span>${memId }</span>
		<p>님은 로그인 되어 있습니다.</p>
		<br><br>
		
		<input type="button" class="btn btn-lg btn-danger btn-block" value="로그아웃" onclick="location.href='logout.do'">
		<br><br>
	</div>
</form>
</body>
</html>
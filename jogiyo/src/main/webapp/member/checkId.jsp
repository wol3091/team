<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
span {
	position: relative;
	left: 20px;
}
</style>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
<script type="text/javascript">
	function checkIdClose() {
		opener.writeForm.id.value = '${id}';
		window.close();
		opener.writeForm.pwd.focus();
	}
</script>
</head>
<body>
<form name="" method="post" action="checkId.do">
<c:if test="${exist }">
	<span>
		<br>
		${id}는 사용중 입니다.<br><br>
		아이디 :	<input type="email" name="id" required>
				<input type="submit" value="중복 체크" class="btn btn-danger">
	</span>	
</c:if>

<c:if test="${!exist }">
	<span>
		<br>
		${id}는 사용 가능합니다.<br><br>
		<input type="button" class="btn btn-danger" value="사 용" onclick="checkIdClose()">
	</span>
</c:if>
</form>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글수정</title>
<style type="text/css">
p {
	text-align: center;
	font-size: 50px;
	font-weight: bold;
	color: red;
}
</style>
<script type="text/javascript">
	window.onload=function() {
		alert("글을 수정하였습니다.");
		location.href="modifyForm.do?seq=${seq}";
	}
</script>
</head>
<body>
<c:if test="${su > 0}">
	<p>수정완료</p>
</c:if>

<c:if test="${su == 0}">
	<p>수정실패</p>
</c:if>
</body>
</html>



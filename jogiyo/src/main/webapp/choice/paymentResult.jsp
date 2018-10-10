<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
#write {
	text-align: center;
	font-size: 50px;
	font-weight: bold;
	color: red;
}
</style>
<script type="text/javascript">
	window.onload=function() {
		alert("주문이 완료되었습니다.");
		location.href="../member/myPage.do";
	}
</script>
</head>
<body>
<c:if test="${su == 0 }">
	<p id="write">주문 실패</p>
</c:if>
<c:if test="${su > 0 }">
	<p id="write">주문 성공</p>
</c:if>
</body>
</html>
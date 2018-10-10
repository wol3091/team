<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	window.onload=function() {
		if(${su} > 0) {
			alert("입점 신청 성공하였습니다.");
			location.href="../../owner/ownermain/ownermain.do";
		} else {
			alert("입점 신청 실패하였습니다. 다시 시도해주세요");
			location.href="../../owner/signup/requestForm.do"
		}
		
	}
</script>
</head>
<body>
<c:if test="${su > 0}">
	<p>입점신청 완료되었습니다.</p>
</c:if>
<c:if test="${su == 0}" >
	<p>입점신청 실패하였습니다.</p>
</c:if>

</body>
</html>
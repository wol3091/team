<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	window.onload=function() {
		alert("승인이 되었습니다. 회원가입 하실 수 있습니다.");
		location.href="../../owner/ownerLogin/registerForm.do?seq=${seq}";	// "확인" 버튼을 누르면 이동할 페이지
	}
</script>
</head>
<body>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	window.onload = function() {
		if(${su}>0){
			alert("비밀번호가 변경되었습니다.");
		} else {
			alert("비밀번호가 변경을 실패하였습니다.");
		}
		location.href="ownerModifyForm.do";
	}
</script>	
</head>
<body>

</body>
</html>
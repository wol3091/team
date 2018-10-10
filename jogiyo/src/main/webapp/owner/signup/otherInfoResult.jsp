<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	window.onload=function() {
		if(${su} > 0) {
			alert("가게 정보가 모두 입력되었습니다.");
			location.href="../../owner/ownermain/ownermain.do";
		} else {
			alert("가게 정보 입력을 실패하였습니다.");
			location.href="../../owner/signup/otheInfo.do?seq=${seq}";
		}
		
	}
</script>
</head>
<body>

</body>
</html>
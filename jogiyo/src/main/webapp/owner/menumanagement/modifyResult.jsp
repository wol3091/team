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
			alert("정보가 수정되었습니다.");
		} else {
			alert("정보가 수정을 실패하였습니다.");
		}
		location.href="modifyForm.do?seq={seq}";
	}
</script>	
</head>
<body>

</body>
</html>
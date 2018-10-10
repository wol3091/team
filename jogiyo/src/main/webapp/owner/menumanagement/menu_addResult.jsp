<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	window.onload = function() {
		if(${su>0}){
			alert("메뉴가 추가되었습니다.");
		} else {
			alert("메뉴가 추가되는 것이 실패하였습니다.");
		}
		location.href="../../owner/menumanagement/menumanaging2.do?seq=${seq}";
	}
</script>
</head>
<body>

</body>
</html>
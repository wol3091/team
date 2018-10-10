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
			alert("메뉴가 삭제되었습니다.");
		} else {
			alert("메뉴가 삭제되었습니다.");
		
		} 
		location.href="menumanaging2.do?seq=${seq}";
	}
</script>
</head>
<body>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	window.onload = function() {
		if(${sum == su}){
			alert("메뉴가 추가되었습니다.");
		} else {
			alert("메뉴추가를 실패하였습니다.");
		
		} 
		location.href="menu_detail.do?seq=${seq}&soldout=${soldout}&menu="+encodeURIComponent('${menu}')+"&menu_group="+encodeURIComponent('${menu_group}');
	}
</script>	
</head>
<body>

</body>
</html>
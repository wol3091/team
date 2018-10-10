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
			if(${soldout eq 'y'}) {
				alert("메뉴가 품절되었습니다.");
			} else {
				alert("메뉴가 품절 해제되었습니다.")
			}
		} else {
			alert("메뉴가 품절하는 것을 실패하였습니다.");
		}
		location.href="../../owner/menumanagement/ownersoldout.do";
	}
</script>
</head>
<body>

</body>
</html>
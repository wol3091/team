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
			if(${temp_close eq 'y'}) {
				alert("임시운영중지가 되었습니다.");
			} else {
				alert("임시운영중지가 해제되었습니다.")
			}
		} else {
			alert("임시운영중지하는 것을 실패하였습니다.");
		}
		location.href="../../owner/menumanagement/temporary_suspension.do";
	}
</script>
</head>
<body>

</body>
</html>
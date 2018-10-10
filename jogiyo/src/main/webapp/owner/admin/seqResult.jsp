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
			alert("seq가 부여되었습니다.");
			location.href="../../owner/admin/accept_list.do";
		} else {
			alert("seq가 부여되지 않았습니다.");
			location.href="../../owner/admin/giving_seq.do";
		}
		
	}
</script>
</head>
<body>

</body>
</html>
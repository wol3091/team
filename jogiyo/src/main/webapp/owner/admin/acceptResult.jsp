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
			alert("access가 변경되었습니다.");
			location.href="../../owner/admin/seq_list.do?preseq=${preseq}&access1=${access1}";
		} else {
			alert("access가 변경되지 않았습니다.");
			location.href="../../owner/admin/accept_view.do";
		}
		
	}
</script>	
</head>
<body>

</body>
</html>
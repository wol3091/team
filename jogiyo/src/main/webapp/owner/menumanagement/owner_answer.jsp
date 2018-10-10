<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	if(${su} == 1) {
		alert("저장이 완료됬습니다.");
	} else {
		alert("저장이 실패했습니다.");
	}
	location.href="../../owner/menumanagement/ownerReview.do";


		/* <c:if test="${su== 1}">	
    		alert("저장이 완료됬습니다.");
   		</c:if>
   		
   		<c:if test="${su!= 1}">	
			alert("저장이 실패했습니다.");
		</c:if>
		location.href="../../owner/menumanagement/ownerReview.do"; */
</script>
</head>
<body>

</body>
</html>
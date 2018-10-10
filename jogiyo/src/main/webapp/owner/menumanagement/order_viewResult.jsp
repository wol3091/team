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
			alert("주문이 수락되었습니다.");
		} else {
			alert("주문수락이 취소되었습니다.");
		}
		location.href="../../owner/menumanagement/order_view.do?seq=${seq}&owner_check=${owner_check}";
	}
</script>
</head>
<body>

</body>
</html>
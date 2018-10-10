<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
<script type="text/javascript" src="../../js/jquery-3.3.1.min.js"></script>
<script src="../js/bootstrap.min.js"></script>
<script src="../js/bootstrap.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	var star = Number(starPoint);
	var total = Number(totalA);
	alert(star);
	alert(total);
	alert(star/total);
	if((star/total) > 1) {
		$("div.starpoint-star").html("★☆☆☆☆");
	};
	if((star/total) > 2) {
		$("div.starpoint-star").html("★☆☆☆☆");
	};
	if((star/total) > 3) {
		$("div.starpoint-star").html("★☆☆☆☆");
	};
	if((star/total) > 4) {
		$("div.starpoint-star").html("★☆☆☆☆");
	};
	if((star/total) > 5) {
		$("div.starpoint-star").html("★☆☆☆☆");
	};
});
</script>
<style type="text/css">
table {
	border-bottom: 1px solid gray;
	border-left: 1px solid gray;
	border-right: 1px solid gray;
	border-top: 1px solid gray;
	width: 100%;
}
td {
	padding: 10px;
}
.starpoint-avg {
	text-align: center;
	font-size: 42px;
	padding-top: 10px;
}
</style>
</head>
<body>
<div>
	<p class="starpoint-avg">
		<fmt:formatNumber value="${starPoint/totalA }" pattern=".0"/>
	</p>
	<br>
		<div class="starpoint-star"></div>
	</div>
	<div>
	리뷰 ${totalA}개 · 사장님 댓글 0개
	</div>
	<c:forEach var="reviewDTO" items="${list}">
		<table>
			<tr>
				<td><span class="nickname">${reviewDTO.nickname }님</span>${reviewDTO.logtime }</td>
			</tr>
			<tr>
				<td><span>별점 : ${reviewDTO.starpoint }</span></td>
			</tr>
			<tr>
				<td>${reviewDTO.image }</td>
			</tr>
			<tr>
				<td>${reviewDTO.orderlist }</td>
			</tr>
			<tr>
				<td>${reviewDTO.content }</td>
			</tr>
		</table>
	</c:forEach>	
</body>
</html>
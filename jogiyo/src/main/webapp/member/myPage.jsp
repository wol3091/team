<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
	function move1() {
		var url = "../choice/reviewWriteForm.do?ceo_seq=${ceo_seq}&logtime=${logtime}&food=${food}";
		var encodedUrl = encodeURI(url);
		$(location).attr('href', encodedUrl);
	}
</script>
<style type="text/css">
table {
	border-collapse: collapse;
	border-top: 1px solid #bebebe; 
}
th, td {
	border-bottom: 1px solid #bebebe;
	text-align: center;
	padding: 5px 0;
}
.logo {
	width: 130px;
	height: 60px;
}
</style>
</head>
<body>
<div class="container">
	<img class="logo" alt="로고" src="../image/logo-jogiyo.png">
	<div style="width: 700px; margin: auto; margin-top: 50px;">
		<div style="text-align: center;  height:50px;  background: red; color: white;
		font-size: 1.5em; padding-top: 10px;">
			${memName}님의 주문 리스트
		</div>
		<table style="width: 100%; border-collapse: collapse; " >
			<tr>
				<th style="min-width: 100px;">음식점</th>
				<th style="min-width: 100px;">메뉴</th>
				<th style="min-width: 100px;">가격</th>
				<th style="min-width: 100px;">날짜</th>
				<th style="min-width: 100px;">리뷰</th>
			</tr>
			
			<c:forEach var="owner_orderlist" items="${real_list}">
			<tr>
				<td>${owner_orderlist.ceo_seq}</td>
				<td>${owner_orderlist.food}</td>
				<td>${owner_orderlist.total_price}원</td>
				<td>${owner_orderlist.logtime}</td>
				<td><button onclick="move1();">리뷰 작성</button></td>
			</tr>
			</c:forEach>
			<tr>
				<td colspan="5" style="text-align: center;">
					총 주문 금액: ${total_price}
				</td>
			</tr>
		</table>
	</div>
	<br><br>
</div>

</body>
</html>
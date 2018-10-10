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
<style type="text/css">
html, body {
	letter-spacing: 0px;
    font-family: 맑은고딕, "malgun gothic", 돋움, Dotum, "Apple SD Gothic Neo", Helvetica, sans-serif;
}
.review-ul {
	width: 100%;
	margin: 0;
	list-style: none;
	padding: 10px;
}
span {
	float: right;
}
span a {
	text-decoration: none;
	color: gray;
}
.logo {
	width: 130px;
	height: 60px;
}
.btn-lg {
	border: 1px;
}
</style>
<script type="text/javascript">
function checkReview() {
	if(document.reviewWriteForm.content.value == "") {
		alert("리뷰 내용을 입력하세요");
		document.reviewWriteForm.content.focus();
	} else {
		document.reviewWriteForm.submit();
	}
}
/*
var fileNm = $("#imageFile").val();
if (fileNm != "") {
    var ext = fileNm.slice(fileNm.lastIndexOf(".") + 1).toLowerCase();
    if (!(ext == "gif" || ext == "jpg" || ext == "png")) {
        alert("이미지파일 (.jpg, .png, .gif ) 만 업로드 가능합니다.");
        return false;
    }
}
*/
</script>
</head>
<body>
<form action="reviewWrite.do" name="reviewWriteForm" method="post" enctype="multipart/form-data">
<input type="hidden" name="ceo_seq" value="${ceo_seq}">
<input type="hidden" name="ceo_seq2" value="${ceo_seq2}">
<input type="hidden" name="food" value="${food}">
<input type="hidden" name="ceoOK" value="n">
	<div class="container">
		<img class="logo" alt="로고" src="../image/logo-jogiyo.png">
		<ul class="review-ul">
			<li class="review-li">
				<label>${ceo_seq} - ${logtime}</label><br>
				<span class="nickname">${memName}&nbsp;님&nbsp;&nbsp;</span>
			</li>
			<li class="review-li">
				<label>별점</label>
				<label for="star1"><input type="radio" name="starpoint" id="star1" value="1">★</label>&nbsp;
				<label for="star2"><input type="radio" name="starpoint" id="star2" value="2">★★</label>&nbsp;
				<label for="star3"><input type="radio" name="starpoint" id="star3" value="3">★★★</label>&nbsp;
				<label for="star4"><input type="radio" name="starpoint" id="star4" value="4">★★★★</label>&nbsp;
				<label for="star5"><input type="radio" name="starpoint" id="star5" value="5">★★★★★</label><br>
			</li>
			<li class="review-li order">
				${food}
			</li>
			<li>
				<input type="file" id="image" name="imageFile">
			</li>
			<li class="review-li content" >
				<textarea id="content" name="content" placeholder="리뷰를 작성해주세요" cols="100" rows="5"></textarea>
			</li>
		</ul>
		
		<input type="button" class="btn-lg btn-block" value="리뷰 작성" onclick="checkReview()">
		<input type="button" class="btn btn-lg btn-danger btn-block" value="취소" onclick="location.href='myPage.do'">
		<br><br>
	</div>
</form>
</body>
</html>
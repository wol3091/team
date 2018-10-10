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
<style type="text/css">
html, body {
	letter-spacing: 0px;
    font-family: 맑은고딕, "malgun gothic", 돋움, Dotum, "Apple SD Gothic Neo", Helvetica, sans-serif;
}
.review-ul {
	border-top: 1px solid #c8c8c8;
	width: 100%;
	margin: 0;
	list-style: none;
	padding: 10px;
}
.point {
	padding: 0;
	margin: 0;
}
.starpoint-avg {
	text-align: center;
	font-size: 42px;
	padding-top: 10px;
}
.starpoint-star {
	text-align: center;
	font-size: 16px;
	color: orange;
}
.reviewCount {
	border-top: 1px solid #c8c8c8;
	padding: 10px;
}
.nickname {
	font-weight: bold;
}
.order {
	color: #d1bca4;
    font-size: 12px;
    padding: 3px 0;
}
.content {
	color: #666;
}
</style>
<script type="text/javascript">
$(document).ready(function() {
	var star = Number("${starPoint}");
	var total = Number("${totalA}");
	if((star/total) >= 1) {
		$("div.starpoint-star").html("★☆☆☆☆");
	};
	if((star/total) >= 2) {
		$("div.starpoint-star").html("★★☆☆☆");
	};
	if((star/total) >= 3) {
		$("div.starpoint-star").html("★★★☆☆");
	};
	if((star/total) >= 4) {
		$("div.starpoint-star").html("★★★★☆");
	};
	if((star/total) = 5) {
		$("div.starpoint-star").html("★★★★★");
	};
	
	if("${reviewDTO.starpoint }" == 1) {
		$("div.reviewpoint").html("★☆☆☆☆");
	};
	if("${reviewDTO.starpoint }" == 2) {
		$("div.reviewpoint").html("★★☆☆☆");
	};
	if("${reviewDTO.starpoint }" == 3) {
		$("div.reviewpoint").html("★★★☆☆");
	};
	if("${reviewDTO.starpoint }" == 4) {
		$("div.reviewpoint").html("★★★★☆");
	};
	if("${reviewDTO.starpoint }" == 5) {
		$("div.reviewpoint").html("★★★★★");
	};
	
	
	
	$(window).on('more', function () {
	    load('#listView', '4');
	    $("#js-btn-wrap .button").on("click", function () {
	        load('#listView', '4', '#js-btn-wrap');
	    })
	});
	 
	function more(id, cnt, btn) {
	    var list = id + " .review-li:not(.active)";
	    var length = $(list).length;
	    var total_cnt;
	    if (cnt < length) {
	        total_cnt = cnt;
	    } else {
	        total_cnt = length;
	        $('.button').hide()
	    }
	    $(list + ":lt(" + total_cnt + ")").addClass("active");
	}
})
</script>
</head>
<body>
<div>
	<div class="point">
		<div class="starpoint-avg">
			<fmt:formatNumber value="${starPoint/totalA}" pattern=".0"/>
		</div>
			<div class="starpoint-star"></div>
	</div>
</div>
	<div class="reviewCount">
	리뷰 ${totalA}개 · 사장님 댓글 ?개
	</div>
<div id="listView">
	<c:forEach var="reviewDTO" items="${reviewlist}">
			<ul class="review-ul">
				<li class="review-li">
					<span class="nickname">${reviewDTO.nickname}님&nbsp;&nbsp;</span>${reviewDTO.logtime}
				</li>
				<li class="review-li">
					<div class="reviewpoint">별점 : ${reviewDTO.starpoint}</div>
				</li>
				<li class="review-li review-image">
					<c:if test="${reviewDTO.image == null }">
					</c:if>
					<c:if test="${reviewDTO.image != null }">
						<img src="../storage/customer/${reviewDTO.image}" onerror="this.src='../storage/customer/no.png'" width=200px; height=100px;>
					</c:if>
				</li>
				<li class="review-li order">
					${reviewDTO.orderlist}
				</li>
				<li class="review-li content" >
					${reviewDTO.content}
				</li>
			</ul>
	</c:forEach>
</div>
	<!--
	 <div id="js-btn-wrap" class="btn-wrap">
		<a href="#" id="more">더보기</a>
	</div>
	 -->
</body>
</html>
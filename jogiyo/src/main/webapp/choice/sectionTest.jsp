<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>   
  
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
$(function() {
	$(".select > a").click(function() {
		$(".select").mouseover(function() {
			$(".select > a").css('border', '1px solid blue');
		});
		$(".select").mouseout(function() {
			$(".select > a").css('border', '1px solid #bebebe');
		});
	    $(this).next("ul").toggle();
	    return false;
	});

	$("div.select > ul > li").click(function() {
		
		if($(this).text() == "기본 정렬순") {
			$('#list_basic').show();
			$('#list_star').hide();
			$('#list_price').hide();
			$('#list_riview').hide();
		} else if($(this).text() == "별점순") {
			$('#list_basic').hide();
			$('#list_star').show();
			$('#list_price').hide();
			$('#list_riview').hide();
		} else if($(this).text() == "리뷰 많은순") {
			$('#list_basic').hide();
			$('#list_star').hide();
			$('#list_price').hide();
			$('#list_riview').show();
		} else if($(this).text() == "최소금액 주문순") {
			$('#list_basic').hide();
			$('#list_star').hide();
			$('#list_price').show();
			$('#list_riview').hide();
		}
		
		
		
		$(this).parent().contents().css('background-color', 'white');
	    $(this).parent().hide().parent("div.select").children("a").text($(this).text());
	    $(this).css('background-color', 'skyblue');
	});

});
	
	
	$(document).ready(function() { 
		$('#list_basic').show();
		$('#list_star').hide();
		$('#list_price').hide();
		$('#list_riview').hide();
	});	
	
	

	 function movingView(seq) {
		var url = "sectionView.do?seq="+seq+"&location=${location}";
		var encodedUrl = encodeURI(url);
		$(location).attr('href', encodedUrl);		
	} 
	 

</script>
<style type="text/css">
body {
	background-color: #FBFBFB;
}
#sectionTest1 {
	width: 1000px;
	margin: auto;
	height: 40px;
}
#sectionTest2 {
	width: 1000px;
	margin: auto;
}

.selection {
	width: 452px;
	height: 108px;
	display: inline-block;
	border: 1px solid #dcdcdc;
	border-radius: 5px;
}
.logo {
	width: 80px;
	height: 80px;
	margin-left: 5px;
	margin-right: 5px;
}

ul {
    list-style: none;
    margin:0px; padding:0px;
}
table {
	margin-top: 10px;
}

.select {position:relative; line-height:35px; width: 300px; float: right; top: 5px;}
.select > a {display:block; border:1px solid #ccc; padding:0 8px; overflow:hidden;}
.select > a:after,
.select > ul > li:first-child:after {display:block; float:right;}
.select > a:after {content:'▼';}
.select > ul {width:100%;  background:#fff; display:none; position: absolute; z-index: 2000; top:37.5px;}
.select > ul > li {cursor:pointer; padding:0 8px; border:1px solid #ccc; border-top:0;}

</style>
</head>
<body>
<div id="sectionTest1" >
	<div class="select" >
    <a href="#" style="text-decoration:none">기본 정렬순</a>
    <ul>
        <li>기본 정렬순</li>
        <li>별점순</li>
        <li>리뷰 많은순</li>
        <li>최소금액 주문순</li>
    </ul>
	</div>
	<span style="color: #6e6e6e;"><br>음식점 32곳을 찾았습니다.</span>
	
	<!-- 기본 정렬순은 그냥 등록순 -->
</div>
<div style="border: 1px solid #d2d2d2; margin-bottom: 5px; margin-top: 5px;" ></div>
<div id="sectionTest2">
	요기요 등록 음식점
	<br>
	
	<div id="list_basic">
	기본
	<c:forEach var="requestDTO" items="${list}">
		<div class="selection" >
			<table>
				<!-- 나중에 do옆에 ?로 가게 정보 보내야함 -->
				<tr  style="cursor: pointer;" onclick="movingView('${requestDTO.getSeq()}');">
					<td>
						<div class="logo" style="background-image: url('image/${requestDTO.getSomename()}'); 
						background-size: cover;"></div>
					</td>
					<td style="width: 100%;">
						<ul>
							<li style="font-size: 15px">${requestDTO.getRestaurant_name()}</li>
							<li>별표${requestDTO.getSomename()}  | <span style="color: #646464">리뷰 198</span></li>
							<li>
								<span style="color: #FF8C8C">조기서 결제 </span> 
								<span style="color: #646464">| ${requestDTO.getLower_price()}원 이상 배달</span>
							</li>
							<li style="float: right; color: #646464">55~65분</li>
						</ul>
					</td>
				</tr>
			</table>
		</div>
	</c:forEach>
	</div>
	
	
	<div id="list_star">
	스타
	<c:forEach var="requestDTO" items="${listByStar}">
		<div class="selection" >
			<table>
				<!-- 나중에 do옆에 ?로 가게 정보 보내야함 -->
				<tr  style="cursor: pointer;" onclick="movingView('${requestDTO.getSeq()}');">
					<td>
						<div class="logo" style="background-image: url('image/${requestDTO.getSomename()}'); 
						background-size: cover;"></div>
					</td>
					<td style="width: 100%;">
						<ul>
							<li style="font-size: 15px">${requestDTO.getRestaurant_name()}</li>
							<li>별표${requestDTO.getSomename()}  | <span style="color: #646464">리뷰 198</span></li>
							<li>
								<span style="color: #FF8C8C">조기서 결제 </span> 
								<span style="color: #646464">| ${requestDTO.getLower_price()}원 이상 배달</span>
							</li>
							<li style="float: right; color: #646464">55~65분</li>
						</ul>
					</td>
				</tr>
			</table>
		</div>
	</c:forEach>
	</div>
	
	<div id="list_price">
	가격
	<c:forEach var="requestDTO" items="${listByPrice}">
		<div class="selection" >
			<table>
				<!-- 나중에 do옆에 ?로 가게 정보 보내야함 -->
				<tr  style="cursor: pointer;" onclick="movingView('${requestDTO.getSeq()}');">
					<td>
						<div class="logo" style="background-image: url('image/${requestDTO.getSomename()}'); 
						background-size: cover;"></div>
					</td>
					<td style="width: 100%;">
						<ul>
							<li style="font-size: 15px">${requestDTO.getRestaurant_name()}</li>
							<li>별표${requestDTO.getSomename()}  | <span style="color: #646464">리뷰 198</span></li>
							<li>
								<span style="color: #FF8C8C">조기서 결제 </span> 
								<span style="color: #646464">| ${requestDTO.getLower_price()}원 이상 배달</span>
							</li>
							<li style="float: right; color: #646464">55~65분</li>
						</ul>
					</td>
				</tr>
			</table>
		</div>
	</c:forEach>
	</div>
	
	<div id="list_riview">	
	리뷰
	<c:forEach var="requestDTO" items="${listByRiview}">
		<div class="selection" >
			<table>
				<!-- 나중에 do옆에 ?로 가게 정보 보내야함 -->
				<tr  style="cursor: pointer;" onclick="movingView('${requestDTO.getSeq()}');">
					<td>
						<div class="logo" style="background-image: url('image/${requestDTO.getSomename()}'); 
						background-size: cover;"></div>
					</td>
					<td style="width: 100%;">
						<ul>
							<li style="font-size: 15px">${requestDTO.getRestaurant_name()}</li>
							<li>별표${requestDTO.getSomename()}  | <span style="color: #646464">리뷰 198</span></li>
							<li>
								<span style="color: #FF8C8C">조기서 결제 </span> 
								<span style="color: #646464">| ${requestDTO.getLower_price()}원 이상 배달</span>
							</li>
							<li style="float: right; color: #646464">55~65분</li>
						</ul>
					</td>
				</tr>
			</table>
		</div>
	</c:forEach>
	</div>
	
	
	
</div>
</body>
</html>
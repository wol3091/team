<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="../../js/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
$(function(){
	//첫 번째 dd를 제외한 나머지 dd는 숨김
	$("dd:not(:first)").css("display","none");
	
	//클릭시 해당 내용 보여주기
	$("dl dt").click(function(){
		if($("+dd",this).css("display")=="none"){
			$("dd").slideUp("slow");
			$("+dd",this).slideDown("slow");
			$("dt").removeClass("selected");
			$(this).addClass("selected");
		}
	}).mouseover(function(){
			$(this).addClass("over");
	}).mouseout(function(){
			$(this).removeClass("over");
	});
	$("dt:eq(0) img").attr("src",$("dt:eq(0) img").attr("name")+"_on.jpg");
	//클릭시 메인메뉴 아래로 향해있는 방향표시 이미지 교체
	$("dt img").click(function(){
		for(var i=0;i<=3;i++){
			$("dt:eq("+i+") img").attr("src",$("dt:eq("+i+") img").attr("name")+".jpg");
			}
			$(this).attr("src", $(this).attr("name")+"_on.jpg");
	});
});//jquery 끝 부분
</script>
<script type="text/javascript">
var bDisplay = true;
function doDisplay(){
    var con = document.getElementById("myDIV");
    if(con.style.display=='none'){
        con.style.display = 'block';
    }else{
        con.style.display = 'none';
    }
}
</script>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style type="text/css">
html, body, div, span, applet, object, iframe, h1, h2, h3, h4, h5, h6, p, blockquote, pre, a, abbr, acronym, address, big, cite, code, del, dfn, em, img, ins, kbd, q, s, samp, small, strike, strong, sub, sup, tt, var, b, u, i, center, dl, dt, dd, ol, ul, li, fieldset, form, label, legend, table, caption, tbody, tfoot, thead, tr, th, td, article, aside, canvas, details, embed, figure, figcaption, footer, header, hgroup, menu, nav, output, ruby, section, summary, time, mark, audio, video {
    margin: 0;
    padding: 0;
    border: 0;
    font-size: 100%;
    font: inherit;
    vertical-align: baseline;
}

body {
    font-size: 15px;
    line-height: 1.67em;
    color: #232323;
    font-family: "Nanum Barun Gothic","APPLE SD Gothic NEO",sans-serif,helvetica;
}

.main {
	height: 910px;
	overflow:hidden;
}
.main-content {
	width: 1100px;
	height: 100%;
	overflow-y:scroll;
}
.contents-header {
    position: relative;
    padding-top: 30px;
}
.contents-header h1 {
    padding: 20px 0 15px;
    font-size: 28px;
    line-height: 1.5;
    font-weight: 700;
}
.stocks-container .shop-area {
    float: left;
    width: 460px;
}
.stocks-container h2 {
    margin-bottom: 20px;
    font-size: 18px;
}
.shop-area h2 {
    font-size: 20px;
    font-weight: bold;
}
.stocks-container .box {
    width: 100%;
    border: 1px solid #DDD;
}
.stocks-container label {
    width: 100%;
    height: auto;
    min-height: 54px;
    margin: 0;
    padding: 15px 21px;
    border: 1px solid #ddd;
    font-size: 18px;
    line-height: 24px;
    font-family: inherit;
    color: #898989;
    background: #fff;
    -webkit-box-sizing: border-box;
    box-sizing: border-box;
}
.stocks-container .menu-area {
    float: right;
    width: 460px;
}
.menu-area h2 {
    font-weight: bold;
}
.stocks-container h3 {
    font-size: 18px;
    font-weight: bold;
}
.left {
	float: left;
}
.stock-item {
    padding: 20px 0;
   	margin-top:70px;
    border-top: 1px solid #ddd;
    color: #000;
    font-weight: 600;
}
.stock-item .menu {
    float: left;
}

.stocks-container .menu-area {
    float: right;
    margin-left: -100px;
    width: 460px;
}
.question {
	margin-left: 10px;
}
.stock-item .price {
    display: inline-block;
    text-align: right;
    padding-left: 250px;
}
.stocks-container .stock-item .price strong {
    padding-left: 4px;
}

.soldout {
	width: 100px;
    background: #bdbdbd;
    border: 0;
    height: 50px;
    padding-left: 30px;
	padding-top: 10px;
	color: white;
	margin-left: 900px;
	margin-top: 70px;
}
.stock-item .btn {
    float: right;
}
.btn.btn-large {
    padding: 18px 50px;
    font-size: 18px;
    font-weight: normal;
}
.right {
	display:inline-block;
	margin-left: 300px;
	border: 1px solid #898989;
	line-height: 18px;
	font-weight: bold;
	background: #898989;
	color: #fff;
	padding: 10px 36px;
	margin-top: 20px;
	margin-bottom: 20px;
}
/* .btn {
    display: inline-block;
    padding: 10px 36px;
    font-size: 14px;
    line-height: 18px;
    font-weight: bold;
    background: #898989;
    border: 1px solid #898989;
    color: #fff;
    -webkit-transition: 0.4s background-color;
    transition: 0.4s background-color;
    vertical-align: middle;
    cursor: pointer;
} */
.stocks-container h2 {
    margin-bottom: 10px;
    font-size: 18px;
}
.side {
	margin-top: 70px;
}
.price {
    display: inline-block;
    text-align: right;
    padding-left: 10px;
}
.title li {
	border-bottom: 1px solid #ddd;
	margin-top: 30px;
}
.soldout-cont {
    display: none;
}
.soldout-cont p {
    margin-top: 6px;
    font-size: 14px;
    color: #888;
    line-height: 1.3;
    margin-left: -70px;
}


</style>
</head>
<body>
<div class="main">
<div class="main-content">
	<div class="contents-header">
		<h1>메뉴 품절 관리</h1>
	</div>
	<div class="contents stocks-container">
	   <div class="shop-area">
	      <h2>업소선택</h2>
	      <div class="box">
	        <label>W733765 부타리안 노량진 2호점 (외식배달/주소)</label>
	      </div>
	    </div>
	    <div class="menu-area">
		<div class="left">
			<h3>재료 소진(품절 메뉴) 선택</h3>		
		</div>
		<div class="left">
		
			<a href="javascript:doDisplay();"><img class="question" src="../../owner/ownerimage/question.png" width="20px"></a>	
			<div class="soldout-cont" id="myDIV">
					<p>품절을 하게되면 버튼이 품절 버튼이<br> 해제로 바뀌게 됩니다 <br>그것을 다시 누르면 품절이 해제됩니다.</p>	
		    </div>
		</div>
		<br><br>
	<div id="box_sub_navi">
		<dl class="stock-item">
		<dt>
			<h2>메인메뉴</h2>
		</dt>
		<dd>
		<ul class="title">
			<c:forEach var="ownermenuDTO" items="${list}">
				<li>
					<c:if test="${ownermenuDTO.soldout eq 'n'}">
					<form action="soldoutResult.do" method="post" name="soldoutForm">
						<input type="hidden" name="menu" value="${ownermenuDTO.menu}">
						<input type="hidden" name="soldout" value="${ownermenuDTO.soldout}">
						<input type="hidden" name="menu_group" value="${ownermenuDTO.menu_group}">
						<span class="menu">${ownermenuDTO.menu}</span><span class="price"><strong>${ownermenuDTO.price}</strong></span><br>
						<input type="submit" class="right" value="품절">
					</form>
					</c:if>
					<c:if test="${ownermenuDTO.soldout eq 'y'}">
					<form action="soldoutResult.do" method="post" name="soldoutForm">
						<input type="hidden" name="menu" value="${ownermenuDTO.menu}">
						<input type="hidden" name="soldout" value="${ownermenuDTO.soldout}">
						<input type="hidden" name="menu_group" value="${ownermenuDTO.menu_group}">
						<span class="menu">${ownermenuDTO.menu}</span><span class="price"><strong>${ownermenuDTO.price}</strong></span><br>
						<input type="submit" class="right" value="해제" style="background:#e61c13;">
					</form>
					</c:if>
				</li>
			</c:forEach>
		</ul>
		</dd>
		<dt>
			<h2 class="side">사이드 메뉴</h2>
		</dt>
		<dd>
		<ul class="title">
			<c:forEach var="ownersidemenuDTO" items="${list1}">
			<li>	
				<c:if test="${ownersidemenuDTO.soldout eq 'n'}">
				<form action="soldoutResult.do"  method="post" name="soldoutForm">
					<input type="hidden" name="menu" value="${ownersidemenuDTO.menu}">
					<input type="hidden" name="soldout" value="${ownersidemenuDTO.soldout}">
					<input type="hidden" name="menu_group" value="${ownersidemenuDTO.menu_group}">
					<span class="menu">${ownersidemenuDTO.menu}</span><span class="price"><strong>${ownersidemenuDTO.price}</strong></span><br>
					<input type="submit" class="right" value="품절">
				</form>
				</c:if>
				<c:if test="${ownersidemenuDTO.soldout eq 'y'}">
				<form action="soldoutResult.do"  method="post" name="soldoutForm">
					<input type="hidden" name="menu" value="${ownersidemenuDTO.menu}">
					<input type="hidden" name="soldout" value="${ownersidemenuDTO.soldout}">
					<input type="hidden" name="menu_group" value="${ownersidemenuDTO.menu_group}">
					<span class="menu">${ownersidemenuDTO.menu}</span><span class="price"><strong>${ownersidemenuDTO.price}</strong></span><br>
					<input type="submit" class="right" value="해제" style="background:#e61c13;">
				</form>
				</c:if>
			</li>
			</c:forEach>
		</ul>
		</dd>
		
		</dl>
	</div><!-- box_sub_navi -->
</div>
</div>
</div>
</div>
</body>
</html>
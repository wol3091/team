<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>조기요 - 즐거운 식탁이 찾아온다. 배달음식 주문은 역시 조기요!</title>
<link rel="icon" type="image/png" href="../image/ico.png" />

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
var selection;
var business="";

$(function(){
	$('.mynav > div').mouseenter(function(){
	$(this).css('background-color', '#323232');
	$(this).children('span').css('color', 'white');
	});
	  
	$('.mynav > div').mouseleave(function(){
	$(this).css('background-color', '#FFFAFA');
	$(this).children('span').css('color', 'black');
	});
	  
});

$(document).ready(function () {  
	
	$.ajax({
        url: "../image/test.txt",
        dataType: "text",
        contentType: "application/x-www-form-urlencoded; charset=UTF-8",
        success: function (data) {
        	
                var str = data;
                var testt;
                var str_array = str.split('\n');
                for (var i = 0; i < str_array.length; i++) {
                	str_array[i] = str_array[i].replace(/^\s*/, "").replace(/\s*$/, "");
                    str_array[i] = str_array[i].replace(/\t/g, " ");
                }
                $(".search-form-control").autocomplete({
                    source: function(request, response) {
                        var results = $.ui.autocomplete.filter(str_array, request.term);
                        response(results.slice(0, 10));
                    },
                
            
                select: function(event, ui){
                	selection =1;
                	/* var selectedSource = $(this).find("option:selected").data("autocomplete");  */
                	/*alert($(".search-form-control").find("option:selected").val());  */
                	
                	
                	/*alert( ui.item.value);*/
					var url = "../choice/sectionTest.do?business="+business+"&location="+ui.item.value;
					var encodedUrl = encodeURI(url);
					$(location).attr('href', encodedUrl);
                }               
                
                });
        }
    });
});

function toggle() {
	
	if(selection != 1) {
		$('.search-form-control').tooltip('show') 
		/* $('.search-form-control').tooltip('toggle') */
		/* $('.search-form-control').tooltip({
			delay: { "show": 0, "hide": 2000 }
		}); */
		setTimeout("$('.search-form-control').tooltip('hide') ", 3000);
	}
}

function login_check() {
	<c:if test="${memId == null }">
		alert("로그인 후 이용해주세요.");
		$("input[name=main_input]").val( $("input[name=main_input]").val().replace(/.*/,"") );
	</c:if>
}

function move(a) {
	//3--프랜차이즈
	if(a == 2 ) {
		business ="";
		toggle();
	}
	
	
	if(a == 3 ) {
		business ="franchise";
		toggle();
	}
	//4--치킨
	if(a == 4 ) {
		business ="chicken";
		toggle();
	}
	//5--피자/양식
	if(a == 5) {
		business ="pizza";
		toggle();
	}
	//6--중국집
	if(a == 6 ) {
		business ="china";
		toggle();
	}
	//7--한식
	if(a == 7 ) {
		business ="korea";
		toggle();
	}
	//8--일식/돈가스
	if(a == 8 ) {
		business ="japan";
		toggle();
	}
	//9--보쌈/족발
	if(a == 9 ) {
		business ="bossam";
		toggle();
	}
	//10--야식
	if(a == 10 ) {
		business ="night";
		toggle();
	}
	//11--분식
	if(a == 11 ) {
		business ="bunsick";
		toggle();
	}
	
	if(a == 12 ) {
		business ="cafe";
		toggle();
	}
}

function navMove(a) {
	//3--프랜차이즈
	if(a == 2 ) {
		business ="";
	}
	
	
	if(a == 3 ) {
		business ="franchise";
	}
	//4--치킨
	if(a == 4 ) {
		business ="chicken";
	}
	//5--피자/양식
	if(a == 5) {
		business ="pizza";
	}
	//6--중국집
	if(a == 6 ) {
		business ="china";
	}
	//7--한식
	if(a == 7 ) {
		business ="korea";
	}
	//8--일식/돈가스
	if(a == 8 ) {
		business ="japan";
	}
	//9--보쌈/족발
	if(a == 9 ) {
		business ="bossam";
	}
	//10--야식
	if(a == 10 ) {
		business ="night";
	}
	//11--분식
	if(a == 11 ) {
		business ="bunsick";
	}
	
	if(a == 12 ) {
		business ="cafe";
	}
	
	var url = "../choice/sectionTest.do?business="+business+"&location=${location}";
	var encodedUrl = encodeURI(url);
	$(location).attr('href', encodedUrl);
}



</script>

<style type="text/css">
html, body {
	width: auto !important;
    min-width: 320px;
    letter-spacing: 0;
    font-family: '맑은고딕', malgun gothic,'돋움',Dotum,'Apple SD Gothic Neo',Helvetica,sans-serif;
}
body {
	font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
    font-size: 14px;
    line-height: 1.5;
    color: #333;
    background-color: #FBFBFB;
}
.search.search-show {
    display: block;
}
.search2 {
  padding: 100px 100px 70px 100px;
  background-image: url(../image/bg-top.png);
  background-color: #3b2114;
  background-repeat: no-repeat;
  background-position: center;
  height: 140px;
}

.search {
  padding: 100px 100px 70px 100px;
  background-image: url(../image/bg-top.png);
  background-color: #3b2114;
  background-repeat: no-repeat;
  background-position: center;
  display: inline-block;
}
.btn {
    display: inline-block;
    padding: 6px 12px;
    margin-bottom: 0;
    font-size: 14px;
    font-weight: normal;
    line-height: 1.42857143;
    text-align: center;
    white-space: nowrap;
    vertical-align: middle;
    -ms-touch-action: manipulation;
    touch-action: manipulation;
    cursor: pointer;
    user-select: none;
    border: 1px solid transparent;
    border-radius: 4px;
}
.always-show-search-buttons .ico-pick {
  background: #ff8a00;
  background-image: none !important;
  color: #fff;
  width: 60px !important;
  height: 40px;
  text-indent: 0 !important;
  z-index: 2;
}
.search-form-control {
  display: block;
  width: 18%;
  height: 39px;
  padding: 6px 12px;
  font-size: 14px;
  line-height: 1.5;
  color: #555;
  background-color: #fff;
  border: 1px solid #ccc;
  border-radius: 4px;
  margin: 0 auto;
  position: absolute;
  top: 200px;
  left: 40%;
}
.ico-pick {
	display: block;
  	margin: 0 auto;
  	position: absolute;
  	top: 20px;
  	left: 58%;
	text-shadow: none;
}

#content {
    width: 100%;
    margin: 0;
    padding: 0;
}
hr {
	display: none;
}
#header {
	background: #ED0000;
	position: relative;
	height: 80px;
}
#logo {
	padding: 15px 0 15px 20px;
	display: inline-block;
	top: 12px;
	left: 12px;
}
#logo:hover, #logo:focus, #logo:active, #logo:visited {
	outline: none;
}
#orderbtn {
	float: right;
	background: orange;
	color: white;
	height: 30px;
	position: absolute;
	display: block;
	right: 35px;
	top: 22px;
	width: 120px;
	border: none;
	border-radius: 2px;
	padding-top: 1px;
}
#logbtn {
	background: #ED0000;
	border: 1px solid white;
	float: right;
	color: white;
	font-size: 18px;
	height: 30px;
	position: absolute;
	display: block;
	right: 170px;
	top: 22px;
}
.category {
	float: left;
	padding: 5px;
	margin: auto;
}
.category > a > img {
	width: 200px; height: 200px; 
}
.category-title {
	display: none;
}
@media screen and (min-width: 768px) and (max-width: 800px;) {
	#section {
	    float: left;
	    margin: auto 30px;
	    padding: 5px;
	}
}
@media screen and (min-width: 800px) and (max-width: 992px;) {
	#section {
	    float: left;
	    margin: auto 50px;
	    padding: 5px;
	}
}
@media screen and (min-width: 992px) and (max-width: 1024px;){
	#section {
	    float: left;
	    margin: auto 100px;
	    padding: 5px;
	}
}
@media screen and (min-width: 1024px) {
	#section {
	    float: left;
	    margin: auto 130px;
	    padding: 5px;
	}
}
@media screen and (min-width: 1400px) {
	#section {
	    float: left;
	    margin: auto 400px;
	    padding: 5px;
	}
}
#footer {
 	background: #FBFBFB;
	padding-bottom: 65px;
	font-size: 12px;
	color: #999;
	display: block;
	clear: both;
}
.footer-menu {
	border-bottom: 1px solid gray;
	border-top: 1px solid gray;
}
.footer-menu ul {
  	max-width: 960px;
 	margin: 0 auto;
 	padding-left: 0;
 	overflow: hidden;
}
.footer-menu > ul > li {
	float: left;
	list-style: none;
	padding: 15px 0 13px 0;
}
.footer-menu li a {
	display: inline-block;
	color: #818181;
	padding: 0 20px;
	text-decoration: none;
}
@media (max-width: 768px) {
  .footer-menu ul {
    text-align: center;
  }
  .footer-menu li {
    display: none;
  }
  .footer-menu li a {
    padding: 0 10px 0 7px;
  }
  .footer-menu li.mb {
    display: inline-block;
    float: none;
  }
  .company-info span.pnum {
    color: #4D4D4D;
  }
}

.footer-menu > ul > li > a {
	text-decoration: none;
	color: gray;
}
.footer-menu > ul > li:after {
	content: '';
	display: block;
	clear: both;
}
.company-wrap {
	max-width: 1020px;
	margin: 0 auto;
}
.company-info > p {
	line-height: 150%;
}
.company-info {
    display: inline-block;
    color: #4D4D4D;
    line-height: 1.6;
    padding-left: 70px;
    margin: auto 70px;
	padding-top: 30px;
}
.company-info .bar {
 	color: #D9D9D9;
 	display: inline-block;
 	vertical-align: middle;
	content: " | ";
	height: 100%;
	padding: 0 5px;
}
.company-info strong {
 	display: inline-block;
 	color: #000;
 	font-size: 14px;
 	padding: 5px 0 10px;
}
@media (max-width: 992px) {
  	.company-info {
    	padding-left: 0;
  	}
	 .company-wrap {
	    margin-top: 20px;
	    padding-right: 15px;
	    padding-left: 15px;
	}
	.service-info {
	    display: none;
	}
	.footer-menu li a {
	 	 padding: 0 10px;
	}
}
.service-info {
    max-width: 1020px;
    padding-left: 138px;
    margin: 30px auto;
    overflow: auto;
}
.service-info div {
  	float: left;
  	margin-right: 30px;
}
.service-info .text {
  	display: inline-block;
  	vertical-align:middle;
}
.service-info .img {
 	 display:inline-block;
 	 width: 38px;
 	 height: 38px;
 	 margin: 0 10px 0 0;
 	 vertical-align:middle;
}
.csc {
    height: 24px;
    color: #666;
    line-height: 24px;
    padding: 6px 0;
    font-weight: bold;
}
.csc em, .csc strong {
	font-style: normal;
	font-size: 20px;
}
@media (min-width: 992px){
	.guide {
    	padding: 0;
    }
}
.guide {
    max-width: 1000px;
    color: #989898;
    line-height: 1.5;
    margin: 0 auto;
    padding: 0 15px;
}
.mynav div {
	cursor: pointer;
}

</style>
</head>
<body>
<div id="header">
	<div>
		<a href="../main/index.do"><img id="logo" src="../image/logo.png" alt="조기요" width="150" height="80"></a>
	</div>
	<div>
	<c:if test="${memId == null }">
		<input id="logbtn" type="button" value="로그인 | 회원가입" onclick="location.href='../member/loginForm.do'">
	</c:if>
	<c:if test="${memId != null }">
		<input id="logbtn" type="button" value="로그아웃" onclick="location.href='../member/logoutForm.do'">
		<input id="orderbtn" class="btn btn-warning btn-lg" type="button" value="주문표"
		onclick="location.href='../member/myPage.do'">
	</c:if>
	</div>
</div>
<hr>

<c:if test="${display == null }">

<div class="search">
    <form action="">
         <input type="search" class="search-form-control"  data-placement="bottom" data-toggle="tooltip" 
          title="배달할 주소를 입력하세요." placeholder="예) 역삼동,신림동" onkeyup="login_check();" name="main_input">
    </form>
    <span id="button_search_address" class="input-group-btn always-show-search-buttons ">
         <button class="btn btn-default ico-pick" type="button">검색</button>
    </span>
</div>
<hr>

</c:if>

<c:if test="${choice == 1 }">
	<div class="search2" style=" padding: 50px 100px 35px 100px;
	 background-image: url(../image/20180918-1.png); background-size: cover;">
	         <input type="search" class="search-form-control" data-placement="bottom" data-toggle="tooltip"
	         id="testtest"
	         title="배달할 주소를 입력하세요." placeholder="예) 역삼동,봉천동"
	         style="margin-top: -80px;" value="${location}">
	    <span id="button_search_address" class="input-group-btn always-show-search-buttons "
	     style="position: absolute; top: 99.5px; left:57%;">
         	<button class="btn btn-default ico-pick" type="button">검색</button>
    	</span>
	</div>
	 
	<div class="mynav" style=" height: 50px; margin-top: -5px; border-bottom: 1px solid #d2d2d2;
	line-height: 40px; box-shadow: 0 1px 1px 1px #d2d2d2; text-align: center; background: #FFFAFA">
		<div style="display: inline-block; height: 100%; width: 90px; text-align: center;
			padding: 0; margin-right: -4px;">
			<span>
				검색
			</span>
			<div style="float: right; margin: 0; padding: 0; color:#d2d2d2; margin-right: -2.1px;">|</div>
		</div>
		<div style="display: inline-block; height: 100%; width: 90px; text-align: center; padding: 0; margin-right: -4px;"
		 onclick="navMove(2);">
			<span>전체보기</span>
			<div style="float: right; margin: 0; padding: 0; color:#d2d2d2; margin-right: -2.1px; ">|</div>
		</div> 
		<div style="display: inline-block; height: 100%; width: 90px; text-align: center; padding: 0; margin-right: -4px;"
		onclick="navMove(3);">
			<span>프랜차이즈</span>
			<div style="float: right; margin: 0; padding: 0; color:#d2d2d2; margin-right: -2.1px; ">|</div>
		</div>
		<div style="display: inline-block; height: 100%; width: 90px; text-align: center; padding: 0; margin-right: -4px;"
		onclick="navMove(4);">
			<span>치킨</span>
			<div style="float: right; margin: 0; padding: 0; color:#d2d2d2; margin-right: -2.1px; ">|</div>
		</div>
		<div style="display: inline-block; height: 100%; width: 90px; text-align: center; padding: 0; margin-right: -4px;" onclick="navMove(5);">
			<span>피자/양식</span>
			<div style="float: right; margin: 0; padding: 0; color:#d2d2d2; margin-right: -2.1px; ">|</div>
		</div>
		<div style="display: inline-block; height: 100%; width: 90px; text-align: center; padding: 0; margin-right: -4px;" onclick="navMove(6);">
			<span>중국집</span>
			<div style="float: right; margin: 0; padding: 0; color:#d2d2d2; margin-right: -2.1px; ">|</div>
		</div> 
		<div style="display: inline-block; height: 100%; width: 90px; text-align: center; padding: 0; margin-right: -4px;" onclick="navMove(7);">
			<span>한식</span>
			<div style="float: right; margin: 0; padding: 0; color:#d2d2d2; margin-right: -2.1px; ">|</div>
		</div> 
		<div style="display: inline-block; height: 100%; width: 90px; text-align: center; padding: 0; margin-right: -4px;" onclick="navMove(8);">
			<span>일식/돈가스</span>
			<div style="float: right; margin: 0; padding: 0; color:#d2d2d2; margin-right: -2.1px; ">|</div>
		</div>
		<div style="display: inline-block; height: 100%; width: 90px; text-align: center; padding: 0; margin-right: -4px;" onclick="navMove(9);">
			<span>족발/보쌈</span>
			<div style="float: right; margin: 0; padding: 0; color:#d2d2d2; margin-right: -2.1px; ">|</div>
		</div> 
		<div style="display: inline-block; height: 100%; width: 90px; text-align: center; padding: 0; margin-right: -4px;" onclick="navMove(10);">
			<span>야식</span>
			<div style="float: right; margin: 0; padding: 0; color:#d2d2d2; margin-right: -2.1px; ">|</div>
		</div>
		<div style="display: inline-block; height: 100%; width: 90px; text-align: center; padding: 0; margin-right: -4px;" onclick="navMove(11);">
			<span>분식</span>
			<div style="float: right; margin: 0; padding: 0; color:#d2d2d2; margin-right: -2.1px; ">|</div>
		</div>
		<div style="display: inline-block; height: 100%; width: 90px; text-align: center; padding: 0; margin-right: -4px;" onclick="navMove(12);">
			<span>카페/디저트</span>
		</div>
	</div>
</c:if>

<c:if test="${display == null }">
<div id="section" align="center">
	<div class="content">
		<div class="category">
			<a href="" class="thumbnail">
				<div class="category-title">
					<strong>슈퍼레드위크</strong><br><span>Red Week</span>
				</div>
				<img src="../image/category-event.png">
			</a>
		</div>
	
		<div class="category">
			<a href="#" class="thumbnail" onclick="move(2);">
				<div class="category-title">
					<strong>전체보기</strong><br><span>View All</span>
				</div>
				<img src="../image/category-01.png">
			</a>
		</div>
		
		<div class="category">
			<a href="#" class="thumbnail" onclick="move(3);">
				<div class="category-title">
					<strong>프랜차이즈</strong><br><span>Franchise</span>
				</div>
				<img src="../image/category-10.png">
			</a>
		</div>
		
		<div class="category">
			<a href="#" class="thumbnail" onclick="move(4);">
				<div class="category-title">
					<strong>치킨</strong><br>	<span>Chicken</span>
				</div>
				<img src="../image/category-02.png">
			</a>
		</div>
		
		<div class="category">
			<a href="#" class="thumbnail" onclick="move(5);">
				<div class="category-title">
					<strong>피자/양식</strong><br><span>Pizza/Western Food</span>
				</div>
				<img src="../image/category-03.png">
			</a>
		</div>
		
		<div class="category">
			<a href="#" class="thumbnail" onclick="move(6);">
				<div class="category-title">
					<strong>중국집</strong><br><span>Chinese Food</span>
				</div>
				<img src="../image/category-04.png">
			</a>
		</div>
		
		<div class="category">
			<a href="#" class="thumbnail" onclick="move(7);">
				<div class="category-title">
					<strong>한식</strong><br><span>Korean Food</span>
				</div>
				<img src="../image/category-05.png">
			</a>
		</div>
		
		<div class="category">
			<a href="#" class="thumbnail" onclick="move(8);">
				<div class="category-title">
					<strong>일식/돈까스</strong><br><span>Japanese Food</span>
				</div>
				<img src="../image/category-06.png">
			</a>
		</div>
		
		<div class="category">
			<a href="#" class="thumbnail" onclick="move(9);">
				<div class="category-title">
					<strong>족발/보쌈</strong><br><span>Jokbal/Bossam</span>
				</div>
				<img src="../image/category-07.png">
			</a>
		</div>
		
		<div class="category">
			<a href="#" class="thumbnail" onclick="move(10);">
				<div class="category-title">
					<strong>야식</strong><br><span>Late Night Snack</span>
				</div>
				<img src="../image/category-08.png">
			</a>
		</div>
		
		<div class="category">
			<a href="#" class="thumbnail" onclick="move(11);">
				<div class="category-title">
					<strong>분식</strong><br><span>Carb Snacks</span>
				</div>
				<img src="../image/category-09.png">
			</a>
		</div>
		
		<div class="category">
			<a href="#" class="thumbnail" onclick="move(12);">
				<div class="category-title">
					<strong>카페/디저트</strong><br><span>Cafe/Dessert</span>
				</div>
				<img src="../image/category-11.png">
			</a>
		</div>
	</div>
</div>
<hr>

</c:if>
<c:if test="${display != null }">
	<jsp:include page="${display }"/>
</c:if>

<div id="footer">
	<div class="footer-menu">
		<ul>
			<li class="mb">
				<a href="../policy/policy.do">이용약관</a>
			</li>
			<li class="mb privacy-txt">
				<a href="#profile" data-toggle="tab">개인정보처리방침</a>
			</li>
			<li class="mb cscenter">
				<a href="#/point_policy/">통합포인트정책</a>
			</li>
			<li>
				<a href="https://rgpkorea.recruiter.co.kr" target="_blank">채용정보</a>
			</li>
			<li>
				<a href="https://www.yogiyo.co.kr/owner/login/" target="_blank">조기요사장님</a>
			</li>
			<li class="mb lst">
				<a href="https://owner.yogiyo.co.kr/owner/join/request/">입점문의</a>
			</li>
			<li class="mb notice">
				<a href="#/notice/">공지사항</a>
			</li>
		</ul>
	</div>
			
	<div class="company-wrap">
		<div class="company-info">
			<p>
				<strong>kgitbank</strong><br>서울시 종로구 돈화문로 26 단성사 kgitbank 4층 
				<span class="bar">|</span>대표자 : 강신봉
				<span class="bar">|</span>사업자등록번호:123-45-67890 <a href="http://www.ftc.go.kr/info/bizinfo/communicationView.jsp?apv_perm_no=2011322016230203322&area1=&area2=&currpage=1&searchKey=01&searchVal=%EC%95%8C%EC%A7%80%ED%94%BC%EC%BD%94%EB%A6%AC%EC%95%84&stdate=&enddate" target="_blank" class="biz-info">사업자정보확인</a>통신판매업신고:제 2011-서울강남-03322호
				<span class="bar">|</span>개인정보담당자 : <a href="mailto:privacy@yogiyo.co.kr">privacy@yogiyo.co.kr</a>
				<span class="bar">|</span>제휴문의 : <a href="mailto:partnership@rgpkorea.co.kr">partnership@rgpkorea.co.kr</a>
				<span class="bar">|</span>고객만족센터 : 
				<span class="pnum">02-1234-5678 (24시간, 연중무휴)</span> <a href="mailto:support@yogiyo.co.kr">support@yogiyo.co.kr</a>
				<span class="bar">|</span>호스트서비스사업자 : (주)KG
			</p>
		</div>
	</div>
	
	<div class="service-info">
		<div class="bpg">
			<a href="#/trust/">
				<img src="../image/trustcenter1.png">
				<span class="text">조기요<br />안심센터</span>
			</a>
		</div>
		<div class="cleanreview">
			<a href="#/cleanreview/">
				<img src="../image/cleanreview1.png">
				<span class="text">조기요 100%<br />클린리뷰</span>
			</a>
		</div>
		<div class="csc">
			<em>고객만족센터 </em>
			<strong>02-1234-5678 </strong>
			<span> 24시간, 연중무휴</span>
		</div>
	</div>
	
	<div class="guide">
		<p>
		kgitbank는 통신판매중개자이며 통신판매의 당사자가 아닙니다. 
		따라서 상품/ 거래정보 및 거래와 관련하여 저기요에 등록된 판매자의 고의 또는 과실로 소비자에게 발생하는 손해에 대해
		kgitbank는 책임을 지지 않습니다. 상품 및 거래에 관하여 보다 정확한 정보는 해당 판매자에게 직접 확인하여 주시기 바랍니다.
		Copyright JOGIYO. All Rights Reserved.
		</p>
	</div>
</div>
</body>
</html>
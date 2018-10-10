<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
<!------ Include the above in your HEAD tag ---------->
<script type="text/javascript">

$(function() {
	$(".collapsible:eq(0) > .content").load($(".collapsible:eq(0) .title a").attr("href"));
	$(".collapsible:eq(0) a").addClass("selected");
	$(".collapsible").not(":eq(0)").find(".content").hide();//not으로 첫번째가 아닌것들 숨기기
	
	$(".collapsible .title a").click(function() {
		$(this).toggleClass("selected");
		$(".collapsible .title a").not(this).removeClass("selected");
		var target = $(this).parents(".collapsible").find(".content");
		var other = $(".collapsible .title a").not(this).parents(".collapsible").find(".content");
		target.slideToggle(300);
		other.slideUp(300);
		return false;
	});
});

function isLogin1() {
	<c:if test="${sessionScope.memId == null}">
			alert("먼저 로그인 하세요!!");
	</c:if>
	<c:if test="${sessionScope.memId != null}">
			location.href="../../owner/menumanagement/menumaniging.do";
	</c:if>
}
function isLogin2() {
	<c:if test="${sessionScope.memId == null}">
			alert("먼저 로그인 하세요!!");
	</c:if>
	<c:if test="${sessionScope.memId != null}">
			location.href="../../owner/menumanagement/ownersoldout.do";
	</c:if>
}
function isLogin3() {
	<c:if test="${sessionScope.memId == null}">
			alert("먼저 로그인 하세요!!");
	</c:if>
	<c:if test="${sessionScope.memId != null}">
			location.href="../../owner/menumanagement/modifyInfo.do";
	</c:if>
}
function isLogin4() {
	<c:if test="${sessionScope.memId == null}">
			alert("먼저 로그인 하세요!!");
	</c:if>
	<c:if test="${sessionScope.memId != null}">
			location.href="../../owner/menumanagement/temporary_suspension.do";
	</c:if>
}
function isLogin5() {
	<c:if test="${sessionScope.memId == null}">
			alert("먼저 로그인 하세요!!");
	</c:if>
	<c:if test="${sessionScope.memId != null}">
			location.href="../../owner/menumanagement/modifyForm.do";
	</c:if>
}
function isLogin6() {
	<c:if test="${sessionScope.memId == null}">
			alert("먼저 로그인 하세요!!");
	</c:if>
	<c:if test="${sessionScope.memId != null}">
			location.href="../../owner/menumanagement/ownerReview.do";
	</c:if>
}

function isLogin7() {
	<c:if test="${sessionScope.memId == null}">
		alert("먼저 로그인 하세요!!");
	</c:if>
	<c:if test="${sessionScope.memId != null}">
		location.href="../../owner/myinfo/check_pwd.do";
	</c:if>
}

function isLogin8() {
	<c:if test="${sessionScope.memId == null}">
		alert("먼저 로그인 하세요!!");
	</c:if>
	<c:if test="${sessionScope.memId != null}">
		location.href="../../owner/menumanagement/order_list.do";
	</c:if>
}


</script>
<style type="text/css">
<style type="text/css">/* Chart.js */

body, p, h1, h2, h3, h4, h5, h6, ul, ol, li, dl, dt, dd, table, th, td, form, fieldset, legend, input, textarea, button, select, figure, figcaption {
    margin: 0;
    padding: 0;
}
html, body, div, span, applet, object, iframe, h1, h2, h3, h4, h5, h6, p, blockquote, pre, a, abbr, acronym, address, big, cite, code, del, dfn, em, img, ins, kbd, q, s, samp, small, strike, strong, sub, sup, tt, var, b, u, i, center, dl, dt, dd, ol, ul, li, fieldset, form, label, legend, table, caption, tbody, tfoot, thead, tr, th, td, article, aside, canvas, details, embed, figure, figcaption, footer, header, hgroup, menu, nav, output, ruby, section, summary, time, mark, audio, video {
    margin: 0;
    padding: 0;
    border: 0;
    font-size: 100%;
    font: inherit;
    vertical-align: baseline;
}

body {
	font-family: '돋움', serif; 
}
li { list-style: none; }
a { text-decoration: none;}
img { border: 0; }
a:hover , a:focus{ text-decoration: none;}
ul{ margin: 0px; padding: 0px;}
ul li{ list-style-type: none;}
.clear{ clear: both;}
img{ margin-bottom: 20px;}

.dropdown-menu li:first-child{
	background: #e61c13;
}

#trust_span {
	padding-left: 20px;
}
#clean {
	padding-left: 20px;
}
#clean_span {
	padding-left: 20px;
}
#center {
	padding-left: 20px;
	font-weight: bold;
	font-size: 25px;
}
#center_phone {
	padding-left: 20px;
	font-weight: bold;
	font-size: 25px;
	color: #81BEF7;
	text-decoration: underline;
}
#center_hour {
	padding-left: 20px;
	font-weight: bold;
	font-size: 25px;
}
/*media screen*/
#section:after {
    content: "";
    display: block;
    clear: both;
}

#section {
	height: 100%;
	background: white;
	clear: both;
	display: block;
	margin:0 245px;
    min-width: 1235px;
    width: 1235px;
    margin: auto;
    margin-top: -80px;
    min-height: 947px;
}

.wrap {
	width: 1000px;
	margin: 80px auto 0 auto;
}
.sectionCenter {
	margin: 10px auto;
}
.bs-example {
	display: inline-block;
	margin-top: 20px;
}
#container1_ul{
	margin: 0;
	padding: 0;
	
}
#container1_ul > li {
	border: 1px solid gray;
	width: 110px;
	height: 110px;
	display: inline-block;
	text-align: center;
	margin-left: 10px;
	margin-top: 30px;`
}
.carousel .item{
	width:500px;
	min-height: 300px; /* Prevent carousel from being distorted if for some reason image doesn't load */
}
.carousel .item img{
	width:500px;
	height: 300px;
    margin: 0 auto;
    padding: 0; /* Align slide image horizontally center */
    float: left;
}	
#login {
	clear: both;
    display: inline-block;
	padding-top: -300px;
}
/* input[type="text"] {
  width: 240px;
  height: 50px;
  margin-bottom: 0px;
}
input[type="password"] {
  width: 240px;
  height: 50px;
  margin-bottom: 10px;
} */

#login h1 {
	font-size: 20px;
	font-weight: bold;
}
#login1{
	width: 240px;
	height: 70px;
	background-color: red;
	border: 1px solid red;
	color: white;
}
#verify {
	margin-top: 10px;
	width: 240px;
	height: 34px;
	background-color: white;
	border: 1px solid red;
	color: red;
}
#verifyinfor {
	margin-top: 15px;
}
#login p {
	font-size: 11px;
}
#login h3 {
	margin-top: -50px;
}
.other {
	float: left;
}
.other > img {
	width: 250px;
	margin-top: 10px;
	padding-right: 10px;
}
#snav {
	width: 220px;
	float: left;
	clear: both;
	background: #ff0000;
	min-height: 947px;
	font-size: 17px;
	margin-right: 35px;
	margin-left: -50px;
}

#snav > ul {
	padding-top: 38px;
}
.snav > ul > li > a {
	position: relative;
	display: block;
	line-height: 1;
	padding: 15px 30px;
	font-size: 16px;
}
.snav > ul > li > a:after {
    display: block;
    content: '';
    position: absolute;
    right: 20px;
    top: 17px; 
}
.snav {
  padding: 14px 0 10px;
}
.snav a{
    font-size: 12px;
    line-height: 1;
    display: block;
    padding: 13px 30px 13px; 
}
.snav a:hover, .snav {
    color: white;
}
.content:hover {
	background: #ff0000; 
}
.snav {
  width: 17px;
  height: 11px;
  background-position: -190px -30px;
}
.snav {
  display: none;
  height: 0;
}
.snav {
  color: #ff0000;
  display: inline-block;
  position: relative;
  font-size: 0px;
  line-height: 0px;
  margin-left: 4px;
  vertical-align: super; 
}
#snav:after {
	clear: both;
}
.title { padding: 0; margin: 0; }
.title > a {
	display: block;
	font-size: 14px;
	text-decoration: none;
	font-weight: bold;
	color: white;
	height: 40px;
	vertical-align: middle;
}
.content > a .selected > a {
	background: #ff0000;
}
.content {
	margin: 0;
	background: #4a4949;
	padding: 10px;
	height: 50px;
	overflow-y: auto;
	font-size: 14px;
	font-weight: bold;
}
.content a {
	color: white;
}

.footer {
    background-color: #FBFBFB;
    border-top: 1px solid #D9D9D9;
    width: 100%;
    font-size: 12px;
    padding-bottom: 82px;
    margin: 0;
}
.footer-menu {
    border-bottom: 1px solid #D9D9D9;
}
.footer-menu ul {
    min-width: 960px;
    line-height: 45px;
    margin: 0 auto;
    padding: 0 20px;
    overflow: auto;
}
ul, ol {
    list-style: none;
}
.footer-menu li:first-child::before, .footer-menu li.sns-link::before {
    content: " ";
    padding: 0;
}
.footer-menu li::before {
    color: #d9d9d9;
    display: inline-block;
    vertical-align: middle;
    content: " | ";
    height: 100%;
    padding: 0 12px;
}
.footer-menu li {
    float: left;
    line-height: 45px;
}
.footer-menu li a {
    text-decoration: none;
}
.footer a {
    color: #818181;
}
a {
    background: transparent;
}
.footer-menu li:first-child::before, .footer-menu li.sns-link::before {
    content: " ";
    padding: 0;
}
.footer-menu li.sns-link {
    float: right;
}
.footer-menu li::before {
    color: #d9d9d9;
    display: inline-block;
    vertical-align: middle;
    content: " | ";
    height: 100%;
    padding: 0 12px;
}
.footer-menu li {
    float: left;
    line-height: 45px;
}
.footer-menu li.sns-link a {
    line-height: 16px;
    margin-left: 32px;
}
.footer-menu li a {
    text-decoration: none;
}
.footer a {
    color: #818181;
}
a {
    background: transparent;
}
.company-wrap {
    position: relative;
    min-width: 960px;
    margin: 32px auto 0 auto;
    padding-left: 20px;
}
.company-logo {
    position: absolute;
    top: 0px;
    left: 20px;
}
.company-logo image {
    display: block;
    background: url(/media/images/owners/img-footer1.png) no-repeat;
    width: 70px;
    height: 29px;
    text-indent: -999em;
    overflow: hidden;
}
.footer a {
    color: #818181;
}
a {
    background: transparent;
}
.company-info {
    display: inline-block;
    color: #4d4d4d;
    line-height: 1.6;
    padding-left: 118px;
}
.company-info strong {
    display: inline-block;
    color: #000;
    font-size: 14px;
    padding: 5px 0 10px;
}
b, strong {
    font-weight: bold;
}
.company-info .bar {
    color: #d9d9d9;
    display: inline-block;
    vertical-align: middle;
    content: " | ";
    height: 100%;
    padding: 0 6px;
}
a.biz-info::after {
    color: #c7c7c7;
    display: inline-block;
    vertical-align: middle;
    content: " ▸ ";
    height: 100%;
    padding: 0 3px;
}
a.biz-info {
    border: 1px solid #C7C7C7;
    text-decoration: none;
    padding: 2px 4px;
    margin-left: 4px;
}
.company-info a {
    text-decoration: none;
}
.service-info {
    min-width: 960px;
    padding-left: 138px;
    margin: 30px 0;
    overflow: auto;
}
.service-info div {
    float: left;
    margin-right: 30px;
}
.csc {
    height: 24px;
    line-height: 24px;
    padding: 6px 0;
}
.csc em {
    font-size: 18px;
    font-style: normal;
    font-weight: bold;
    padding-right: 10px;
}
.csc strong {
    font-size: 22px;
    padding-right: 10px;
    vertical-align: top;
}
b, strong {
    font-weight: bold;
}
.csc span {
    font-size: 12px;
    vertical-align: top;
}
.footer .guide {
    width: 830px;
    color: #989898;
    line-height: 1.5;
    margin: 0 138px;
}


</style>
</head>
<body>

<a href="../../owner/ownermain/ownermain.do"><img class="text-center" src="../../owner/ownerimage/logoowner.png" ></a >


<nav class="navbar navbar-default navbar-static-top">
      <div class="container-fluid">
	    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
	      <ul class="nav navbar-nav">
	      	<li class="dropdown">
	          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">내 업소관리<span class="caret"></span></a>
	          <ul class="dropdown-menu">
	          	<li><a>내업소관리<a></li>
	            <li><a href="#" onclick="isLogin1()">메뉴 관리</a></li>
	            <li><a href="#" onclick="isLogin2()">메뉴 품절 관리</a></li>
	            <li><a href="#" onclick="isLogin3()">메뉴 정보 수정 요청</a></li>
	            <li><a href="#" onclick="isLogin4()">임시운영중지</a></li>
	            <li><a href="#" onclick="isLogin5()">운영정보수정</a></li>
	            <li><a href="#" onclick="isLogin6()">리뷰관리</a></li>
	            <li><a href="#">업소통계</a></li>
	          </ul>
	        </li>
	        <li class="dropdown">
	          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">회원인증하기<span class="caret"></span></a>
	          <ul class="dropdown-menu ">
	            <li><a href="#">회원인증하기</a></li>
	            <li><a href="../../owner/signup/placementProcedure.do">입점절차</a></li>
	            <li><a href="../../owner/signup/requestForm.do">온라인입점신청</a></li>
				<li><a href="../../owner/signup/registration_certification.do">회원가입 인증하기</a></li>
	          </ul>
	        </li>
	        <li class="dropdown">
	          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">로그인<span class="caret"></span></a>
	          <ul class="dropdown-menu">
	          	<li>
		          	<c:if test="${sessionScope.memId == null}">
						<a href="../../owner/ownerLogin/ownerLoginForm.do">로그인</a>
					</c:if>
					<c:if test="${sessionScope.memId != null}">
						<a href="../../owner/ownerLogin/ownerLogout.do">로그아웃</a>
					</c:if>
				</li>	          
	        	<li><a href="#" onclick="isLogin7()">내 정보수정</a></li>
	          </ul>
	        </li>
	      </ul>
	    </div><!-- /.navbar-collapse -->
	  </div><!-- /.container-fluid -->
	</nav>



   
<div id="section">
	<div id="snav">
		<ul>
			<li class="collapsible">
				<h4 class="title"><a href="#">내 업소 관리</a></h4>
				<ul>
					<li class="content"><a href="#" onclick="isLogin1()">메뉴 관리</a></li>
					<li class="content"><a href="#" onclick="isLogin2()">메뉴 품절 관리</a></li>
					<li class="content"><a href="#" onclick="isLogin3()">메뉴 정보 수정 요청</a></li>
					<li class="content"><a href="#" onclick="isLogin4()">임시운영중지</a></li>
					<li class="content"><a href="#" onclick="isLogin5()">운영정보수정</a></li>
					<li class="content"><a href="#" onclick="isLogin6()">리뷰관리</a></li>
				</ul>
			</li>
		</ul>
		<ul>
			<li class="collapsible">
				<h4 class="title"><a href="">회원인증하기</a></h4>
				<ul>
					<li class="content"><a href="../../owner/signup/placementProcedure.do">입점절차</a></li>
					<li class="content"><a href="../../owner/signup/requestForm.do">온라인 입점신청</a></li>
					<li class="content"><a href="../../owner/signup/registration_certification.do">회원가입 인증하기</a></li>
				</ul>
			</li>
		</ul>
		<ul>
			<li class="collapsible">
				<h4 class="title"><a href="">로그인</a></h4>
				<ul>
					<c:if test="${sessionScope.memId == null}">
						<li class="content"><a href="../../owner/ownerLogin/ownerLoginForm.do">로그인</a></li>
					</c:if>
					<c:if test="${sessionScope.memId != null}">
						<li class="content"><a href="../../owner/ownerLogin/ownerLogout.do">로그아웃</a></li>
					</c:if>
					<li class="content"><a>내 정보수정</a></li>
						
				</ul>
			</li>
		</ul>
	</div>
<c:if test="${display == null}">
	<div class="wrap">		
		<div id="container1">
			<ul id="container1_ul">
				<li id="container1_li1"><a href="#" onclick="isLogin8()"><img src="../../owner/ownerimage/ordercheck.png"></a></li>
				<li id="container1_li2"><a href="#" onclick="isLogin7()"><img src="../../owner/ownerimage/information.png"></a></li>
				<li id="container1_li3"><a href="#" onclick="isLogin2()"><img src="../../owner/ownerimage/soldout.png"></a></li>
				<li id="container1_li4"><a href="#" onclick="isLogin5()"><img src="../../owner/ownerimage/business.png"></a></li>
				<li id="container1_li5"><a href="#" onclick="isLogin6()"><img src="../../owner/ownerimage/review.jpg"></a></li>
				<li id="container1_li6"><a href="#" onclick="isLogin4()"><img src="../../owner/ownerimage/stop.png"></a></li>
			</ul>
		</div>	
		
		<div class="sectionCenter">
			<div class="bs-example">
			    <div id="myCarousel" class="carousel slide" data-ride="carousel">
			        <!-- Carousel indicators -->
			        <ol class="carousel-indicators">
			            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			            <li data-target="#myCarousel" data-slide-to="1"></li>
			            <li data-target="#myCarousel" data-slide-to="2"></li>
			            <li data-target="#myCarousel" data-slide-to="3"></li>
			        </ol>   
			        <!-- Wrapper for carousel items -->
			        <div class="carousel-inner">
			            <div class="item active">
			                <img src="../../owner/ownerimage/adver1.png" alt="First Slide">
			            </div>
			            <div class="item">
			                <img src="../../owner/ownerimage/adver2.png" alt="Second Slide">
			            </div>
			            <div class="item">
			                <img src="../../owner/ownerimage/adver3.png" alt="Third Slide">
			            </div>
			            <div class="item">
			                <img src="../../owner/ownerimage/adver4.png" alt="Four Slide">
			            </div>
			        </div>
			        <!-- Carousel controls -->
			        <a class="carousel-control left" href="#myCarousel" data-slide="prev">
			            <span class="glyphicon glyphicon-chevron-left"></span>
			        </a>
			        <a class="carousel-control right" href="#myCarousel" data-slide="next">
			            <span class="glyphicon glyphicon-chevron-right"></span>
			        </a>
				</div>
			</div>
			
			<div id="login">
			<c:if test="${memId == null}">
				<br><br><br>
				<h1>사장님, 로그인해주세요!</h1>
				<br>
<!-- 			<input id="id" name="id" type="text" placeholder="아이디 입력"><br>
				<input id="pwd" name="pwd" type="password" placeholder="비밀번호 입력"><br>
				<a><label id="search">비밀번호찾기</label></a> / <a><label>관리자로그인</label></a><br> -->
				<a href="../../owner/ownerLogin/ownerLoginForm.do"><input type="button" id="login1" value="로그인"></a><br><br>
				<a href="../../owner/signup/registration_certification.do"><input type="button" id="verify" value="회원가입 인증하기"></a>
				<br><p id="verifyinfor">입점신청 후 처음 방문하시는 사장님은 <br>
				회원가입 인증하기를 통해 입점을 완료해주세요</p><br><br><br>
			</form>
			</c:if>
			<c:if test="${memId != null }">
				<jsp:include page="/owner/ownerLogin/ownerLogin.jsp"></jsp:include>	
			</c:if>
			<c:if test="${memId == null && loginFail == 1 }">
				<jsp:include page="${login}"></jsp:include>	
			</c:if>
			</div>
		
			<div id="container3">
				<div class="other"><img id="application" alt="" src="../../owner/ownerimage/application.png"></div>	
				<div class="other"><img id="agreement" alt="" src="../../owner/ownerimage/application.png"></div>
				<div class="other"><img id="anything" alt="" src="../../owner/ownerimage/application.png"></div>
			</div>
		</div>
	</div>
</c:if>
		
<c:if test="${display != null}">
	<jsp:include page="${display}"></jsp:include>
</c:if>
</div>
	
<div class="footer">
  <div class="footer-menu">
    <ul>
      <li><a href="/owner/policy/">이용약관</a></li>
      <li><a href="/owner/privacy/"><strong>개인정보처리방침</strong></a></li>
      <li><a onclick="ga_event_tracker('FOOTER_CSC', this, event)" href="https://www.yogiyo.co.kr/mobile/#/contact/">고객만족센터</a></li>
<!--       <li class="sns-link">
        <a class="facebook" onclick="ga_event_tracker('FOOTER_FB', this, event)" href="https://www.facebook.com/Yogiyokorea/" target="_blank"><span></span>페이스북</a>
        <span></span><a class="blog" onclick="ga_event_tracker('FOOTER_BLOG', this, event)" href="http://blog.yogiyo.co.kr/" target="_blank"><span></span>블로그</a>
      </li> -->
    </ul>
  </div>
  <div class="company-wrap">
    <div class="company-logo"><img src="../../owner/ownerimage/icon2.png"></a></div>
    <div class="company-info">
      <p><strong>(유) kgitbank</strong><br>
      서울시 종로구 돈화문로 26 단성사 kgitbank 4층  <span class="bar">|</span>대표자 : 강신봉 <span class="bar">|</span> 사업자등록번호:123-45-67890  <a class="biz-info" href="http://www.ftc.go.kr/info/bizinfo/communicationView.jsp?apv_perm_no=2011322016230203322&amp;area1=&amp;area2=&amp;currpage=1&amp;searchKey=01&amp;searchVal=%EC%95%8C%EC%A7%80%ED%94%BC%EC%BD%94%EB%A6%AC%EC%95%84&amp;stdate=&amp;enddate" target="_blank">사업자 정보 확인</a><br>
      통신판매업신고:제 2011-서울강남-03322호<span class="bar">|</span>개인정보담당자:<a href="mailto:privacy@yogiyo.co.kr">privacy@yogiyo.co.kr</a><span class="bar">|</span>제휴문의:<a href="mailto:partnership@rgpkorea.co.kr">partnership@rgpkorea.co.kr</a><span class="bar">|</span>고객만족센터:<a href="mailto:support@yogiyo.co.kr">support@yogiyo.co.kr</a><br>호스트서비스사업자:(주)심플렉스인터넷</p>
    </div>
  </div>
  <div class="service-info">
    <div class="bpg"><a href="https://www.yogiyo.co.kr/mobile/#/trust/"><span class="img"></span><span class="text">조기요<br>안심센터</span></a></div>
    <div class="cleanreview"><a href="https://www.yogiyo.co.kr/mobile/#/cleanreview/"><span class="img"></span><span class="text">조기요 100%<br>클린리뷰</span></a></div>
    <div class="csc"><em>고객만족센터</em> <strong>02-1234-5678</strong> <span>24시간, 연중무휴</span></div>
  </div>
  <div class="guide">
    <p>kgitbank는 통신판매중개자이며 통신판매의 당사자가 아닙니다. 
		따라서 상품/ 거래정보 및 거래와 관련하여 저기요에 등록된 판매자의 고의 <br>
		또는 과실로 소비자에게 발생하는 손해에 대해
		kgitbank는 책임을 지지 않습니다. 상품 및 거래에 관하여 보다 정확한 정보는 해당 판매자에<br>
		게 직접 확인하여 주시기 바랍니다.
		Copyright JOGIYO. All Rights Reserved.</p>
  </div>
</div>
</body>
</html>
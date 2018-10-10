<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=1000">
<title>Insert title here</title>

<style type="text/css">

html {
    font-family: "나눔고딕","Nanum Gothic",sans-serif;
    -ms-text-size-adjust: 100%;
    -webkit-text-size-adjust: 100%;
    background: #fff;
}

body, input, select, textarea, button, table {
    font: 14px/1.5 "Malgun Gothic", "맑은 고딕", "나눔고딕", NanumGothic, "돋움", Dotum, tahoma, helvetica, sans-serif;
    color: #666666;
}

body, p, h1, h2, h3, h4, h5, h6, ul, ol, li, dl, dt, dd, table, th, td, form, fieldset, legend, input, textarea, button, select, figure, figcaption {
    margin: 0;
    padding: 0;
}
.left {
	float: left;

}
.left:after {
	content:'';
	clear: both;
	display: block;	
}
hr {
	width: 100%;
}
.section {
	min-height: 700px;
	margin-left: 500px;
}
.adminmainImage {
	margin-top: 150px;
}
#login {
    width: 600px;
    margin-left: auto;
    margin-right: auto;
    padding: 100px 0;
    margin-top: -200px;
}

#login h1 .ico {
	margin-top: 100px;
    width: 178px;
    height: 62px;
    background-position: 0 -1px;
}
.admin {
	margin-top: 200px;
	width: 150px;
}


#login .form-signin {
    position: relative;
    width: 580px;
    display: block;
    margin-left: auto;
    margin-right: auto;
    margin-top: 5px;
    padding: 50px 0;
    background: #fff;
    box-shadow: 0px 0px 5px 3px #d0d0d0;
}
.form-horizontal {
    border-top: 1px solid #d0d0d0;
}
fieldset {
    border: none;
}
#login input {
    display: block;
    color: #7f7f7f;
}
body, input, select, textarea, button, table {
    color: #616161;
}
#login .control-group {
    padding: 0 190px 0 150px;
    margin-bottom: 16px;
    border: none;
    overflow: hidden;
}
.form-horizontal .control-group {
    position: relative;
    padding: 7px;
    border-bottom: 1px solid #d0d0d0;
}
#login label {
    display: block;
    position: absolute;
    top: 8px;
    left: 80px;
    width: auto;
    padding: 0;
    margin-bottom: 5px;
    background: none;
}
.form-horizontal .control-group .control-label {
    position: absolute;
    top: 0px;
    left: 0px;
    bottom: 0px;
    width: 180px;
    padding: 16px 0 0 10px;
    font-size: 14px;
    font-weight: bold;
    color: #616161;
    background: #f1f1f1;
    letter-spacing: -1px;
}
#login .input-wrap {
    position: relative;
    padding: 0 40px 0 0;
}
.input-wrap {
    height: 37px;
    border: 1px solid #afafaf;
}
.input-wrap {
    height: 50px;
    padding: 12px 12px 0 11px;
    background: #fff;
    border: 1px solid #afa89c;
}
#login .input-wrap .ico-id,.glyphicons-user {
    background-position: -207px -11px;
}
#login .input-wrap .ico,.glyphicons {
    position: absolute;
    top: 8px;
    right: 10px;
    width: 18px;
    height: 20px;
}
.spr,.glyphicons {
    display: inline-block;
    background: url(/media/images/owners/spr.png) no-repeat 0 0;
    font: 0/0 a;
    color: transparent;
    text-shadow: none;
    background-color: transparent;
    border: 0;
    vertical-align: middle;
}
.ico,.glyphicons {
    display: inline-block;
    vertical-align: middle;
}
#login .input-wrap .input-block-level {
    width: 90%;
}
#login input {
    display: block;
    color: #7f7f7f;
}
.input-wrap .input-block-level {
    width: 100%;
    padding-top: 5px;
    font-size: 15px;
    color: #7f7f7f;
}
.input-wrap input {
    background: transparent;
    border: none;
}
/* input[type='text'], input[type='password'], input.txt {
    width: auto;
    height: 24px;
    line-height: 1;
    font-size: 18px;
    text-align: left;
    padding: 4px 2px;
    color: #231815;
    border: 1px solid #cecece;
    outline: 0;
    background: transparent;
} */
#login .input-wrap .ico-pw {
    background-position: -209px -37px;
}
#login .controls {
    padding: 0;
    margin: 0;
    width: 100px;
    position: absolute;
    top: 71px;
    right: 80px;
}
#login .controls .button {
    height: 94px;
}
#login .button {
    display: block;
    width: 100%;
    height: 56px;
    line-height: 53px;
    font-size: 20px;
}
.button {
    text-decoration: none;
}
button, .button {
    display: inline-block;
    height: 47px;
    text-align: center;
    background-color: #e61c13;
    color: #fff;
    border: none;
    border: 1px solid #b4060d;
    box-shadow: inset 0px 1px 0px #eb8c8f;
    font-weight: bold;
}
#login .control-group {
    padding: 0 190px 0 150px;
    margin-bottom: 16px;
    border: none;
    overflow: hidden;
}
.form-horizontal .control-group {
    position: relative;
    padding: 7px;
    border-bottom: 1px solid #d0d0d0;
}
.center {
    text-align: center !important;
}
#login .register {
    text-align: center;
    color: #e61c13;
    font-size: 16px;
}
#login .pwdchange {
    text-align: center;
    color: #e61c13;
    font-size: 16px;
}
.approve {
	margin-left: 900px;
	margin-top: 30px;
}
.give{
	margin-top: 30px;
	margin-left: 20px;
}
.adminLogin {
	margin-top: 30px;
	margin-left: 10px;
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
    background: url(../../owner/ownerimage/logo-jogiyo.png) no-repeat;
    width: 70px;
    height: 29px;
    text-indent: -999em;
    overflow: hidden;
}
.own-header h1 > a {
    display: block;
    text-indent: -999em;
    text-decoration: none;
    overflow: hidden;
}
.own-header a {
    text-decoration: none;
}
a {
    background: transparent;
}
.own-header .nav {
    float: left;
}
ul, ol {
    list-style: none;
}
.own-header .nav > li, .own-header .ext > li {
    float: left;
}
.own-header .n1 a {
    background-position: -234px 0;
    width: 85px;
}
.own-header .nav a {
    background: url(/media/images/owners/img-nav-owners.png) no-repeat;
    display: block;
    height: 36px;
    text-indent: -999em;
    overflow: hidden;
    margin-left: 43px;
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
<script type="text/javascript">
function isLogin1() {
	<c:if test="${sessionScope.admin_id == null}">
			alert("먼저 로그인 하세요!!");
	</c:if>
	<c:if test="${sessionScope.admin_id != null}">
			location.href="../../owner/admin/accept_list.do";
	</c:if>
}

function isLogin2() {
	<c:if test="${sessionScope.admin_id == null}">
			alert("먼저 로그인 하세요!!");
	</c:if>
	<c:if test="${sessionScope.admin_id != null}">
			location.href="../../owner/admin/seq_list.do";
	</c:if>
}
</script>
</head>
<body>
<div class="header"> 
	<div class="left"> 
	<a href="../../owner/admin/adminMainPage.do"><img src="../../owner/ownerimage/admin1.png" width="400px"></a>
	</div>
	<div class="left">
	<a href="#" onclick="isLogin1()"><img class="approve" src="../../owner/ownerimage/approve.PNG" width="150px"></a> 
	</div>
	<div class="left">
	<a href="#" onclick="isLogin2()"><img class="give" src="../../owner/ownerimage/give.PNG" width="250px"></a>
	</div>
	<div class="left">
		<c:if test="${sessionScope.admin_id == null }">
			<a href="../../owner/admin/adminLoginForm.do"><img class="adminLogin" src="../../owner/ownerimage/adminLogin.PNG"></a>
		</c:if>
		<c:if test="${sessionScope.admin_id != null }">
			<a href="../../owner/admin/adminLogout.do"><img class="adminLogin" src="../../owner/ownerimage/adminLogout.PNG"></a>
		</c:if>
	</div>
</div>
<br>
<hr/>

<div class="section">
<c:if test="${admin == null}">
	<img class="adminmainImage" src="../../owner/ownerimage/adminmain2.png">
</c:if>
<c:if test="${admin != null}">
	<jsp:include page="${admin}"></jsp:include>
</c:if>
</div>
<div class="footer">
  <div class="footer-menu">
    <ul>
      <li><a href="/owner/policy/">이용약관</a></li>
      <li><a href="/owner/privacy/"><strong>개인정보처리방침</strong></a></li>
      <li><a onclick="ga_event_tracker('FOOTER_CSC', this, event)" href="https://www.yogiyo.co.kr/mobile/#/contact/">고객만족센터</a></li>
	  <li><a href="../../owner/ownermain/ownermain.do">사장님 사이트</a>
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
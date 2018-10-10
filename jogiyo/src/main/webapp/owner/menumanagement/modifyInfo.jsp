<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- 
<readme> 
실질적으로 데이터 처리를 관리자가 하는 부분이기 때문에 화면만 구현하고 데이터처리를 1도 하지않음. 
-이메일인증방법으로 보내보는 것 고려해보기 . 이메일인증으로 어떻게 보내나??? 
무료광고~부분 빨간색css 왜안되는것?????
 -->
<style type="text/css">
body {
	margin: 0, 400px;
}
h1 {
    padding: 20px 0 15px;
    font-size: 28px;
    line-height: 1.5;
    font-weight: 900;
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
.banner {
	width: 950px;
    padding: 25px 28px;
    background: #5b76da;
    color: #fff;
    margin-bottom: 30px;
}
.banner strong {
    display: block;
    font-size: 18px;
}
.banner p {
    font-size: 15px;
    margin: 7px 0 16px;
}
.btn.btn-round.btn-white {
    color: #fff;
    border-color: #fff;
    background: transparent;
}
.btn.btn-round {
    min-width: 50px;
    padding: 10px 20px;
    border-width: 1px;
    border-style: solid;
    background: transparent;
    border-radius: 20px;
    color: #898989;
    border-color: #898989;
}
.btn.btn-white {
    color: #2ac1bc;
    background: #fff;
    border: 1px solid #2ac1bc;
}
.btn {
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
}
a {
    color: #5b76da;
    text-decoration: none;
}

.section_row {
    margin-bottom: 30px;
}
.iradio_minimal-grey.checked {
	position: relative;
}
.iradio_minimal-grey.checked {
    background-position: -30px 0;
}
.iradio_minimal-grey.checked {
    background-position: -140px 0;
}
.iradio_minimal-grey, .iradio_minimal-grey.hover {
    top: -1px;
    width: 25px;
    height: 25px;
    margin: 0 4px;
    background: url(../image/sp-inputs.png) 0 0 no-repeat;
}
.contents1{
	padding-top: 14px;
}
.contents dt{
    float: left;
    width:100px;
    padding-top: 14px;
    font-size: 15px;
    color: #898989;
}
/*무료광고~부분 빨간색 왜안되는것?????*/
.dsc-impl {
    color: #ff5757;
}
textarea.input {
    width: 849px;
}
.dsc {
    margin: 7px 0 6px;
    font-size: 12px;
    line-height: 17px;
    color: #898989;
}
.btn {
    padding: 18px 50px;
    font-size: 18px;
    font-weight: normal;
    background: #e61c13;
    border-color: #e61c13;
}

.noti-empty {
    padding: 200px 0;
    color: #898989;
    font-size: 20px;
    text-align: center;
}
.dd{
background-color: f4f4f4;


}
</style>
</head>
<body>
<div class="main">
<div class="main-content">
<form action="emailSend.do" name="modifyInfo" method="post">
<h1>정보 수정 요청</h1>
<div class="banner">
	<strong>실시간 채팅으로 정보수정을 요청해보세요! 상담원이 도와드립니다</strong>
	<p>24시간(365일 운영)</p>
	<a href="#" class="btn btn-round btn-white happylink">실시간 상담</a>
</div>	<!-- section_banner -->

<div class="section_row">
	<div class="select">
		<select name="shop-list" style="height:35px; width:360px;" >
			<option>부타리안 노량진2호점(외식배달/동작구 노량진1동)</option>
			<option>부타리안 노량진2호점(외식배달/동작구 노량진1동)</option> 
		</select>
	</div> <!-- select --> 
	

	<div class="contents">
		<div class="contents1">
			<dl>
			<dt>문의유형선택</dt>
			<dd>
			<div class="iradio_minimal-grey checked" style="position: relative;">
			</div>
			<label for="type-etc" class="">기타</label>
			
			<span class="dsc dsc-impl">* 무료광고 업소의 경우 메뉴정보 등록 및 수정이 불가능합니다. 
			<a href="modifyInfo_noti.do" class="deco-underline" >관련공지 자세히 보기</a></span>
			</dd>
			</dl>
		</div> <!-- contents1 -->
			
		<div class="contents2">
			<dl>
			<dt>문의내용</dt>
			<dd>
			<textarea name="req-content" data-ref="reqContent" class="input" rows="10" maxlength="1000"># 메뉴 수정요청
			</textarea>
			
			</dd>
			</dl>
		</div>	<!-- contents2 -->
		
		<div>
			<dl>
			<dt>자료첨부</dt>
              <div class="filebox">
                <input type="file" id="registration" name="registration" class="upload-hidden" style="height:30px; width:360px;">
              </div>
              
			<p class="dsc">* 메뉴판, 통장사본 등 수정에 필요한 자료를 첨부해주세요.<br>3MB 이하의 이미지 파일(JPG, PNG, GIF) 및 ZIP 파일만 첨부 가능합니다.</p>
			</dl>
			<button type="button" class="btn">정보 수정 요청</button>
		</div>
	</div>	<!-- contents -->
	<h1>요청 처리 상황</h1>
	<div class="noti-empty no-review" style="">
    <p>수정 요청 내역이 없습니다.</p>
    <img src="../image/no-review.png">
  	</div>	<!-- noti-empty no-review -->
</div> <!-- section_row -->
</form>
</div>
</div>
</body>
</html>
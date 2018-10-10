<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script>
function isSame() {
	var pw = document.changePassword.pw.value;
	var pwCheck = document.changePassword.pwCheck.value;
	if(pw.length < 7 || pw.length > 15) {
		document.getElementById('same').innerHTML="비밀번호는 8글자 이상, 16글자 이하만 사용 가능합니다.";
		document.getElementById('pw').value = '';
		document.getElementById('pwCheck').value = '';
	}
	if(document.getElementById('pw').value != '' && document.getElementById('pwCheck').value != '') {
    	if(document.getElementById('pw').value == document.getElementById('pwCheck').value) {
			document.getElementById('same').innerHTML="비밀번호가 일치합니다.";
			document.getElementById('same').style.color='blue';
    	} else {
    		document.getElementById('same').innerHTML="비밀번호가 일치하지 않습니다.";
			document.getElementById('same').style.color='red';
    	}
		
	}
}
</script>
<style type="text/css">
html, body, div, span, applet, object, iframe, h1, h2, h3, h4, h5, h6, p, blockquote, pre, a, abbr, acronym, address, big, cite, code, del, dfn, em, img, ins, kbd, q, s, samp, small, strike, strong, sub, sup, tt, var, b, u, i, center, dl, dt, dd, ol, ul, li, fieldset, form, label, legend, table, caption, tbody, tfoot, thead, tr, th, td, article, aside, canvas, details, embed, figure, figcaption, footer, header, hgroup, menu, nav, output, ruby, section, summary, time, mark, audio, video {
    margin: 0;
    padding: 0;
    border: 0;
    font-size: 100%;
    vertical-align: baseline;
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
.account-info-menu-title {
    font-size: 30px;
    font-weight: 500;
    letter-spacing: -1px;
    color: #000000;
    margin-top: 30px;
}
.account-info-section {
    margin-top: 30px;
}
.account-info-section .input-title {
    font-size: 15px;
    font-weight: normal;
    color: #444444;
    margin-bottom: 5px;
    margin-top: 30px;
}
.account-info-section .input-contents {
    margin: 5px 0px;
    color: #000000;
    font-size: 16px;
}
.account-info-section .form-row input {
    width: 325px;
    height: 50px;
}
.form-row .input {
    padding: 12px 14px;
    height: auto;
    border: 1px solid #dddddd;
    font-size: 16px;
    line-height: 24px;
    letter-spacing: -0.6px;
    -webkit-box-sizing: border-box;
    box-sizing: border-box;
    -webkit-transition: border-color 0.15s ease-in-out;
    transition: border-color 0.15s ease-in-out;
}
.button-group {
    margin-top: 30px;
}

.button-group .button-control button {
	float: left;
    width: 160px;
    height: 60px;
}
.button.button-default {
    background: #888;
    color: #fff;
}
.button {
    display: inline-block;
    padding: 16px 0 14px;
    width: 100%;
    text-align: center;
    font-size: 18px;
    font-weight: bold;
}
button {
    border: none;
    background: none;
    border-radius: 0;
}
.button.button-primary {
    background: #e61c13;
    color: #fff;
    margin-left: 10px;
}
.detail-container .has-button input {
    width: 220px;
    height: 50px;
}

</style>
</head>
<body>
<div class="main">
<div class="main-content">
<div class="total-wrapper">
  <div class="account-info-menu-title">계정정보</div>
  <form name="changePassword" action="account_infoResult.do" method="post">
    <div class="account-info-section">
      <div class="form-row">
        <label class="input-title">아이디</label>
        <p class="input-contents">${ownerMemberDTO.ownerId}</p>
      </div>
      <div class="form-row">
        <label class="input-title">가입일</label>
        <p class="input-contents">${ownerMemberDTO.joinDate}</p>
      </div>
      <div class="form-row">
        <p class="input-title">현재 비밀번호</p>
        <input name="currentPw" class="input" id="current-password" value="${ownerMemberDTO.ownerPwd}" type="password" placeholder="현재 비밀번호">
      </div> 
      <div class="form-row">
        <p class="input-title">새 비밀번호</p>
        <input name="pw" class="input" id="pw" type="password" placeholder="새 비밀번호 (8~20자)" onchange="isSame()" required="required">
      </div>
      <div class="form-row">
        <p class="input-title">새 비밀번호 확인</p>
        <input name="pwCheck" class="input" id="pwCheck" type="password" placeholder="새 비밀번호 확인(8~20자)" onchange="isSame()" required="required">
      </div>
      <span id="same"></span>
    </div>
    <div class="button-group">
      <div class="button-control">
        <button class="button button-default" type="button" onclick="location.href='ownerModifyForm.do'">취소</button>
      </div>
      <div class="button-control">
        <button class="button button-primary" type="submit">수정</button>
      </div>
    </div>
  </form>
</div>
</div>
</div>
</body>
</html>
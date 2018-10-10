<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>조기요 - 즐거운 식탁이 찾아온다. 배달음식 주문은 역시 조기요!</title>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
function checkLogin() {
	if(document.ownerLoginForm.ownerId.value == "") {
		alert("아이디를 입력하세요");
		document.ownerLoginForm.ownerId.focus();
	} else if(document.ownerLoginForm.ownerPwd.value== "") {
		alert("비밀번호를 입력하세요");
	} else {
		document.ownerLoginForm.submit();
	}
}
</script>
<style type="text/css">
* {
    margin: 0;
    padding: 0;
}
body {
    background: #fff;
}
body, input, select, textarea, button, table {
    color: #616161;
}
body, input, select, textarea, button, table {
    font: 14px/1.5 "Malgun Gothic", "맑은 고딕", "나눔고딕", NanumGothic, "돋움", Dotum, tahoma, helvetica, sans-serif;
    color: #666666;
}
body, p, h1, h2, h3, h4, h5, h6, ul, ol, li, dl, dt, dd, table, th, td, form, fieldset, legend, input, textarea, button, select, figure, figcaption {
    margin: 0;
    padding: 0;
}
#login {
    width: 600px;
/*     display: block; */
 	margin-left: 200px;
    margin-right: auto;
    padding: 100px 0;

}
#login h1 {
    margin-bottom: 22px;
    text-align: left;
    color: #d21900;
    font-size: 32px;
    font-weight: bold;
}
#login h1 .ico {
    width: 178px;
    height: 62px;
    background-position: 0 -1px;
}
.spr {
    display: inline-block;
    background: url(/media/images/owners/spr.png) no-repeat 0 0;
    font: 0/0 a;
    color: transparent;
    text-shadow: none;
    background-color: transparent;
    border: 0;
    vertical-align: middle;
}
.ico {
    display: inline-block;
    vertical-align: middle;
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
#login .pwdSearch {
    text-align: center;
    color: #e61c13;
    font-size: 16px;
}
#login .adminLogin {
	text-align: center;
    color: #e61c13;
    font-size: 16px;
}
</style>
</head>
<body>
<div id="login">
    <h1><img class="ico spr" alt="로고" src="../../owner/ownerimage/logo-jogiyo.png"><span>요기요 사장님/비즈센터</span></h1>
    <form class="form-signin form-horizontal" name="ownerLoginForm" action="../../owner/ownerLogin/ownerLogin.do" method="POST">
        <fieldset>
           <div style="display: none;"><input name="csrfmiddlewaretoken" type="hidden" value="3NIlZo144nAmLOVJtyxCdAv1bT6F9B1P"></div>
            
            <br>
            <div class="control-group">
                <label class="control-label">아이디</label>
                <div class="input-wrap">

                    <input class="input-block-level" id="ownerId" name="ownerId" type="text">
                </div>
            </div>
            <div class="control-group">
                <label class="control-label" for="">비밀번호</label>
                <div class="input-wrap">
                    <input class="input-block-level" id="ownerPwd" name="ownerPwd" type="password">
                </div>
            </div>
            <div class="controls">
                <button class="button" type="submit">로그인</button>
            </div>
            <div class="control-group center">
                <!-- <a class="register" href="registerForm.do">회원가입</a> /  --><a class="register" href="searchIdForm.do">아이디찾기</a> / <a class="pwdSearch" href="searchPw.do">비밀번호 찾기</a><br>
                <a class="adminLogin" href="../../owner/admin/adminMainPage.do">관리자 로그인</a>
            </div>
    </fieldset>
    </form>
</div>

    
</body>
</html>
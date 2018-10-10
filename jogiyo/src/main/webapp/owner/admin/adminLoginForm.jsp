<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" 	src="../../script/adminScript.js"></script>
<style type="text/css">

.main {
   width: 800px;
   height: 700px;
   overflow:hidden;
}
.main-content {
   width: 900px;
   height: 100%;
   overflow-x:hidden;
   overflow-y:scroll;
}

#login {
	margin-left: 100px;
    width: 600px;
    /* margin-left: auto; */
    margin-right: auto;
    padding: 100px 0;
    margin-top: 100px;
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
    font-size: 20px;
    color: #7f7f7f;
}
.input-wrap input {
    background: transparent;
    border: none;
    display:block;
    height: 24px;
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
/**버튼크기조절*/
#login .controls .button {
    height: 94px;
   width: 120px;
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
</style>
</head>
<body>
<div class="main">
<div class="main-content">
	<div id="login">
	    <img class="ico spr" alt="로고" width="200px" src="../../owner/ownerimage/logo-jogiyo.png">
	    <form class="form-signin form-horizontal" name="adminLoginForm" id="adminLoginForm" action="adminLogin.do" method="POST">
	        <fieldset>
	           <div style="display: none;"><input name="csrfmiddlewaretoken" type="hidden" value="3NIlZo144nAmLOVJtyxCdAv1bT6F9B1P"></div>
	            
	            <br>
	            <div class="control-group">
	                <label class="control-label">아이디</label>
	                <div class="input-wrap">
	                    <input name="admin_id" id="admin_id" class="input-block-level" type="text">
	                </div>
	            </div>
	            <div class="control-group">
	                <label class="control-label" for="">비밀번호</label>
	                <div class="input-wrap">
	                    <input name="admin_pwd" id="admin_pwd" class="input-block-level" type="password" >
	                </div>
	            </div>
	            <div class="controls">
	                <button class="button" type="button" onclick="checkLogin()">로그인</button>
	            </div>
	    </fieldset>
	    </form>
	</div>
</div> 
</div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">

.reconfirm-form {
    margin: 0 auto;
    padding: 50px 25px 40px;
    width: 360px;
    border: solid 1px #ddd;
}

.section-box .tit + .dsc {
    margin: 0 15px 0;
    color: #a1a1a1;
    font-size: 12px;
    line-height: 1.4;
}
.input {
    display: block;
    position: relative;
    width: 100%;
    height: 36px;
    padding: 4px 0 3px;
    margin: 0;
    border: 1px solid #fff;
    border-bottom: 1px solid #ddd;
    font-size: 17px;
    line-height: 1.63;
    color: black;
}
.msg-reconfirm{
	color: #a1a1a1;
    font-size: 14px;
}
.underline{
	
}
.btn-wrap{
	margin-top: 30px;
}

.btn{
    padding: 20px 0;
    font-size: 17px;
    font-weight: normal;
    color: #fff;
    border: 1px solid #e61c13;
    background-color: #e61c13;
    display: block;
    margin: 0;
    width: 100%;
}

</style>
</head>
<body>
<div class="reconfirm">
<div class="reconfirm-form">
    <form id="" name="editForm" method="post" action="check_pwdResult.do">
        <div class="section-box">
          <h3 class="tit">비밀번호 재확인</h3>
          <p class="dsc">회원님의 개인정보를 안전하게 보호하기 위해<br>비밀번호를 다시 한 번 확인합니다.</p>
              <div class="row-field">
                <div class="input-area">
                  <input type="password" name="checkPassword" class="input" maxlength="20" placeholder="비밀번호 입력해 주세요." data-ref="inputPW">
                  <span class="underline"></span>
                </div>
              </div>
          <div class="btn-wrap">
            <button type="submit" class="btn">확인</button>
          </div>
		  <br>
          <a href="searchPw.do" class="btn-link-pwfind">비밀번호 찾기</a>
		  <br>
		  <br>
          <p class="msg-reconfirm">
         	조기요는 개인정보취급방침에 따라 회원정보를 안전하게<br>
              보호하고 있으며, 회원님의 동의없이 회원정보를 공개 또는 제 3자에게 제공하지 않습니다.</p>
        </div>
    </form>
  </div>
</div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.main {
	height: 910px;
	overflow:hidden;
}
.main-content {
	width: 1100px;
	height: 100%;
	overflow-y:scroll;
}
.regist-wrap {
    max-width: 1020px;
    min-width: 320px;    
    margin-top: 60px;
    margin-left: 15px;
    margin-bottom: 60px;
    border-bottom: 1px solid #ddd;
    display: 
    }
.regist-wrap .control-wrap {
    border-top: 1px solid #d0d0d0;
    border-bottom: none;
}
.control-wrap {
    position: relative;
    padding: 7px;
    border-bottom: 1px solid #d0d0d0;
}
.control-wrap .control-label {
    position: absolute;
    top: 0;
    left: 0;
    bottom: 0;
    width: 180px;
    padding: 16px 0 0 10px;
    font-size: 14px;
    font-weight: bold;
    color: #616161;
    background: #f1f1f1;
}
.controls {
    padding-left: 203px;
}
input {
    height: 24px;
    font-size: 13px;
    padding: 4px 2px;
    color: #231815;
    border: 1px solid #cecece;
}
.rd-wrapper .txts {
    margin: 40px auto 50px auto;
}
.txts {
    padding-left: 10px;
    margin-bottom: 25px;
    font-size: 13px;
}
.txts .img{
	width: 15px;
	height: 15px;
}
.txts .link {
    color: #dc1400;
    text-decoration: underline;
}

.btn-wrapper {
    margin-left: 15em;
}
button, .button {
	width: 176px;
    display: inline-block;
    height: 47px;
    text-align: center;
    background-color: #e61c13;
    color: #fff;
    border: none;
    border: 1px solid #b4060d;
    box-shadow: inset 0 1px 0 #eb8c8f;
    font-weight: bold;
}

.form {
    border-top: 1px solid #ddd;
    color: #616161;
}
</style>
</head>
<body>
<div class="main">
<div class="main-content">
  <div class="rd-wrapper contact-wrapper">
    <form class="form" method="POST" action="registration_certificationResult.do">
      <div class="regist-wrap">
		<div class="control-wrap"> 
	        <div class="control-label">사업자번호</div>
	        <div class="controls">
	             <input type="text" class="w-s" name="license_num1" > -
                 <input type="text" class="w-s" name="license_num2" >-
                  <input type="text" class="w-s" name="license_num3" >
                     
	        </div>   
		</div>
		<div class="control-wrap">
        	<div class="control-label">휴대폰번호</div>
	        <div class="controls">
	        <div class="select-style">
                        <input type="text" class="w-s" name="business_phone1" > -
                        <input type="text" class="w-s" name="business_phone2" > -
                        <input type="text" class="w-s" name="business_phone3" >
	        </div>   
		</div> 		   
	</div>
      
      <div class="txts">
        <p><img src="../../owner/ownerimage/exclamation_mark.png" class="img"> ‘회원가입 인증하기’는 입점신청이 완료된 사장님에 한해 이용이 가능합니다.</p>
        <p><img src="../../owner/ownerimage/exclamation_mark.png" class="img">  아직 요기요 입점을 신청하지 않으셨다면 온라인 입점신청을 진행해주세요. <a href="requestForm.do" class="link">온라인 입점신청하기</a></p>
        <p><img src="../../owner/ownerimage/exclamation_mark.png" class="img">  회원가입 인증하기를 한 뒤에는 회원가입 창으로 이어집니다.</p>
      </div>
      
      <div class="btn-wrapper">
        <button type="submit" name="contact_yogiyo" class="btn">다음</button>
      </div>
    </form>
  </div>
</div>
</div>
</body>
</html>
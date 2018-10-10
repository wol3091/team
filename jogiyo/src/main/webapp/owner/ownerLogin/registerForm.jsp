<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>  
    // 비밀번호 일치 확인
    function isSame() {
       var pw = document.registerForm.ownerPwd.value;
       var pw2 = document.registerForm.ownerPwd2.value;
       if(pw.length < 7 || pw.length > 20) {
          document.getElementById('same').innerHTML="비밀번호는 8글자 이상, 20글자 이하만 사용 가능합니다.";
          document.getElementById('same').style.color='gray';
         document.getElementById('ownerPwd').value = '';
         document.getElementById('ownerPwd2').value = '';
       }
       if(document.getElementById('ownerPwd').value != '' && document.getElementById('ownerPwd2').value != '') {
          if(document.getElementById('ownerPwd').value == document.getElementById('ownerPwd2').value) {
            document.getElementById('same').innerHTML="비밀번호가 일치합니다.";
            document.getElementById('same').style.color='blue';
          } else {
             document.getElementById('same').innerHTML="비밀번호가 일치하지 않습니다.";
            document.getElementById('same').style.color='red';
          }
          
       }
    }
    // 아이디 중복체크
    
    function checkId() {
       var sId = document.registerForm.ownerId.value;
       
       if(sId == "") {
          alert("먼저 아이디를 입력하세요");
          document.registerForm.ownerId.focus();

       }else {
          window.open("ownerCheckId.do?ownerId=" + sId, "", "width=350 height=100 left=500 top=200");
       }
    }
    
    function checkTotal() {
       if(document.registerForm.ownerId.value == "") {
          alert("아이디를 입력하세요");
          document.registerForm.ownerId.focus();
       }  else if(document.registerForm.ownerPwd.value == "") {
          alert("비밀번호를 입력하세요");
          document.registerForm.ownerPwd.focus();
       }  else if(document.registerForm.ownerPwd2.value == "") {
          alert("비밀번호를 재입력하세요");
          document.registerForm.ownerPwd2.focus();
       }  else if(document.registerForm.ownerEmail1.value == "") {
          alert("이메일을 입력하세요");
          document.registerForm.ownerEmail1.focus();
       } else {
          //alert("test");
          document.registerForm.submit();
       }
    } 
</script>
<style type="text/css">
#logo {
   margin-left: 550px;
}
.registerForm2 {
   padding-top: 50px;
}
#ownerId {
   margin-left: 400px;
   width: 250px;
   height: 50px;
}
.btn {
   margin-left: 10px;
   height: 50px;
   background-color: red;
   border: 0;
   color: white;
}
#ownerPwd {
   margin-left: 400px;
   margin-top:30px;
   width: 250px;
   height: 50px;
}
#ownerPwd2 {
   margin-left: 400px;
   margin-top:30px;
   width: 250px;
   height: 50px;
}
.left {
   float: left;
}
#ownerEmail1 {
   margin-left: 400px;
   margin-top:30px;
   width: 250px;
   height: 50px;
}
.same {
margin-left:400px;
}
#ddddd {
    margin-left: -200px;
   margin-right: 50px;
   margin-top:120px;
   width: 150px;
   height: 50px;
   margin-bottom: 100px;
   background-color: red;
   border: 0;
   color: white;
}
.txts {
    padding-left: 10px;
    font-size: 15px;
    margin-left: 500px;
    margin-top:-90px;
}
.txts .img{
   width: 15px;
   height: 15px;
   
}
</style>
</head>
<body>

<form action="register.do" method="post" id="registerForm" name="registerForm">

<div class="registerForm2">
   <input type="hidden" value="${seq}" name="seq" id="seq">
   <div id="logo"><img src="../../owner/ownerimage/logo-jogiyo.png" width="150px"><img src="../../owner/ownerimage/businesscenter.PNG"></div><br>
   <input type="text"  placeholder="아이디 입력" id="ownerId" name="ownerId"> <input type="button" value="ID 중복확인" class="btn" onclick="checkId()" id="" name=""><br>
   <input type="password"  placeholder="비밀번호 입력(8~20자)" id="ownerPwd" name="ownerPwd" onchange="isSame()"><br>
   <input type="password"  placeholder="비밀번호 재입력(8~20자)" id="ownerPwd2" name="ownerPwd2" onchange="isSame()"><br>
   <span class="same" id="same"></span><br>
   <div class="left">
      <input type="text"  placeholder="이메일 입력" id="ownerEmail1" name="ownerEmail1">
   </div>
   <input type="button" value="회원가입" name="ddddd" id="ddddd" onclick="checkTotal()"  >
   <div class="txts">
      <p><img src="../../owner/ownerimage/exclamation_mark.png" class="img">회원가입이 완료되면 꼭 운영에 필요한 다른 정보를 입력하셔야 합니다.<br>안하시면 따로 연락하셔서  추가하셔야 합니다.</p>
   </div>
</div>
</form>

</body>
</html>
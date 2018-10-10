<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script type="text/javascript">
/**
 *확인 버튼을 누르면 seq확인 후 submit될 수 있게 하기. form onsubmit="return check()"> - return이 true일 때 만 submit가능 
 seq가 제대로 부여되었는지 확인하는 함수 필요 
  -알파벳 한자리에 숫자5자리가 맞는지 여부 검사
*/  

 
 function checkSeq() {
	   var sSeq = document.seqForm.seq.value;
	   
	   var regx = /^[A-za-z][0-9]{4}$/g;
	   
	   
	   if(sSeq == "") {
	      alert("관리번호를 입력하세요");
	   } else {
		  if(regx.test(sSeq) == false) {
			  alert("잘못입력했습니다.");
		  } else {
			  window.open("adminCheckSeq.do?seq=" + sSeq, "", "width=350 height=100 left=500 top=200");
		  }
	      
	   }
}
</script>
<style type="text/css">
.seq-Form {
    margin-top: 40px;
    margin-left: 30px;
    padding: 50px 25px 40px;
    width: 500px;
    border: solid 1px #ddd;
    height: 400px;
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
.btn-wrap{
	margin-top: 30px;
}

.btn{
    padding: 20px 0;
    font-size: 16px;
    font-weight: normal;
    color: #fff;
    border: 1px solid #e61c13;
    background-color: #e61c13;
    display: block;
    margin: 0;
    width: 120px;
}
.img{
	width: 15px;
	height: 15px;
}
p{
	color: #616161;
	margin-top: 20px;
}
</style>
</head>
<body>
<div class="seq-Form">

<form id="seqForm" name="seqForm" method="post" action="seqResult.do?preseq=${preseq}" onsubmit="return checkSeq()">
        <div class="section-box">
          <h3 class="tit">음식점 관리번호 부여</h3>
              <div class="row-field">
                <div class="input-area">
                  <input type="text" class="input"  name="seq" id="seq" maxlength="5" placeholder="부여할 seq 6자리를 입력주세요" required="required">
                  <span class="underline"></span>
                </div>
              </div>
              <div class="btn-wrap">
              	<input type="button" value="음식점 관리번호 중복확인" class="btn" style="width: 300px;" onclick="checkSeq()" id="" name="">
              </div> 
          <div class="btn-wrap">
            <button type="submit" class="btn">확인</button>
          </div>

         <p class="msg-reconfirm">
       		<img src="../image/exclamation_mark.png" class="img"> *음식점 구분식별번호인‘음식점 관리번호’를 부여합니다.<br>
       		<img src="../image/exclamation_mark.png" class="img"> *‘음식점 관리번호’부여방식은 알파벳1자리, 숫자 5자리로 총 6자리입니다. <br>
       		<img src="../image/exclamation_mark.png" class="img">  *알파벳 : &nbsp;치킨   c |; 피자/양식  p | 중국집   z	| 한식   h | 일식/돈까스 d |<br>
       			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;족발/보쌈   b &nbsp;| 야식   n		| 분식   v	| 카페/디저트 f <br>
     		<img src="../image/exclamation_mark.png" class="img">  *숫자 : 발급 순서대로 00001부터 넣습니다. <br>
     	</p>
        </div>
    </form>
    
    </div>
</body>
</html>
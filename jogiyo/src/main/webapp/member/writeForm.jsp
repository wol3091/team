<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script type="text/javascript">
</script>
<script>
	// 주소창 검색
    function sample4_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                var fullRoadAddr = data.roadAddress; // 도로명 주소 변수
                var extraRoadAddr = ''; // 도로명 조합형 주소 변수

                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                if(data.buildingName !== '' && data.apartment === 'Y'){
                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }
                if(fullRoadAddr !== ''){
                    fullRoadAddr += extraRoadAddr;
                }
                document.getElementById('postcode').value = data.zonecode; //5자리 새우편번호 사용
                document.getElementById('addr1').value = fullRoadAddr;
                if(data.autoRoadAddress) {
                    var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                    document.getElementById('guide').innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
                } else {
                    document.getElementById('guide').innerHTML = '';
                }
            }
        }).open();
    }
    // 비밀번호 일치 확인
    function isSame() {
    	var pw = document.writeForm.pwd.value;
    	var pw2 = document.writeForm.pwd2.value;
    	if(pw.length < 7 || pw.length > 15) {
    		document.getElementById('same').innerHTML="비밀번호는 8글자 이상, 16글자 이하만 사용 가능합니다.";
			document.getElementById('pwd').value = '';
			document.getElementById('pwd2').value = '';
    	}
    	if(document.getElementById('pwd').value != '' && document.getElementById('pwd2').value != '') {
	    	if(document.getElementById('pwd').value == document.getElementById('pwd2').value) {
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
    	var sId = document.writeForm.id.value;
    	
    	if(sId == "") {
    		alert("먼저 아이디를 입력하세요");
    	} else {
    		window.open("checkId.do?id=" + sId, "", "width=350 height=100 left=500 top=200");
    	}
    }
</script>
<style type="text/css">
</style>

<body class="body">
<!-- <readme> 
	1. footer 수정 필요함.
	2. header 위 공백 부분 수정 필요.
	3. email 인증 , sns 인증  구현 필요.
	4. 로고 이미지 테두리 이질감 제거 필요
 -->
</div>
    <div class="container">
      <div class="con2">
      <form class="form-signup" name="writeForm" action="write.do" method="post">
		<h3 class="form-signup-heading">회원정보 입력</h3>
		<label for="inputEmail" class="sr-only">Email address</label>
		<input type="email" name="id" class="form-control" placeholder="(필수)이메일 주소 입력" required autofocus>
		<input type="button" value="ID 중복체크" class="btn btn-lg btn-danger btn-block" onclick="checkId()">
		
		<label for="inputPassword" class="sr-only">Password</label>
		<input type="password" id="pwd" name="pwd" class="form-control" placeholder="(필수)비밀번호 입력" onchange="isSame()" required>
		
		<label for="inputPassword" class="sr-only">Password</label>
		<input type="password" id="pwd2" name="pwd2" class="form-control" placeholder="(필수)비밀번호 재확인 입력" onchange="isSame()" required>
		<span id="same"></span>
		
		<label for="inputName" class="sr-only">Nickname</label>
		<input type="text" name="nickname" class="form-control" placeholder="(필수)닉네임 입력" required>
		
		<label for="inputPhone" class="sr-only">phone</label>
		<input type="text" name="phone" class="form-control" placeholder="(필수)휴대폰 번호 입력(-제외)" required autofocus>
		
		
		
		<input type="button" onclick="sample4_execDaumPostcode()" class="btn btn-lg btn-danger btn-block"value="우편번호 찾기"><br>
		
		<input type="text" id="postcode" name="postcode" class="form-control"placeholder="우편번호"required="required">
		<input type="text" id="addr1" name="addr1" class="form-control" placeholder="도로명주소"required="required">
		<input type="text" id="addr2" name="addr2" class="form-control"placeholder="주소 상세 입력"required="required">
		<span id="guide" style="color:#999"></span>
		
		<h3 class="form-signup-heading">약관 동의</h3><br>
		<ul>
			<li>
				<div>
					<input type="checkbox" required="required" name="agree1" id="agree1">
					<label for="agree1">
					이용약관동의(필수)
					</label>
				</div>
				<a href=../policy/policy.do target="_blank">내용보기 ></a>
			</li>
			<li>
				<div>
					<input type="checkbox" required="required" name="agree2" id="agree2">
					<label for="agree2">
					개인정보 수집 및 이용동의(필수)
					</label>
				</div>
				<a href="../policy/policy.do" target="_blank">내용보기 ></a>
			</li>
			<li>
				<div>
					<input type="checkbox" name="agree3" id="agree3">
					<label for="agree3">
					요기요 혜택알림 동의(선택)
					</label>
				</div>
				<a href="../policy/policy.do" target="_blank">내용보기 ></a>
			</li>
		</ul>
	
	    <button class="btn btn-lg btn-danger btn-block" type="submit">회원가입</button><br>
	      
	    </form>
	    </div>
    </div> <!-- /container -->
</body>
</html>
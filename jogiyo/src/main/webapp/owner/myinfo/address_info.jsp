<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script type="text/javascript">
    //본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
    function sample4_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 도로명 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var fullRoadAddr = data.roadAddress; // 도로명 주소 변수
                var extraRoadAddr = ''; // 도로명 조합형 주소 변수

                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 도로명, 지번 조합형 주소가 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }
                // 도로명, 지번 주소의 유무에 따라 해당 조합형 주소를 추가한다.
                if(fullRoadAddr !== ''){
                    fullRoadAddr += extraRoadAddr;
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('restaurant_address1').value = data.zonecode; //5자리 새우편번호 사용
                document.getElementById('restaurant_address2').value = fullRoadAddr;
                document.getElementById('restaurant_address3').value = data.jibunAddress;

                // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
                if(data.autoRoadAddress) {
                    //예상되는 도로명 주소에 조합형 주소를 추가한다.
                    var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                    document.getElementById('guide').innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';

                } else if(data.autoJibunAddress) {
                    var expJibunAddr = data.autoJibunAddress;
                    document.getElementById('guide').innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';

                } else {
                    document.getElementById('guide').innerHTML = '';
                }
            }
        }).open();
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
.total-wrapper {
	margin-left: 50px;
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
.input-title {
    font-size: 15px;
    font-weight: normal;
    color: #444444;
    margin-bottom: 5px;
    margin-top: 30px;
}
.input-contents {
    margin: 5px 0px;
    color: #000000;
    font-size: 16px;
}
.form-row input {
    width: 325px;
    height: 50px;
}
.has-button input {
	margin-top: 50px;
    width: 220px;
    height: 50px;
}
.button-line.button-primary {
    border-color: #2ac1bc;
    color: #11b4b2;
}
.has-button .sub-btn {
    width: 100px;
    height: 50px;
    right: 755px;
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

</style>
</head>
<body>
<div class="main">
<div class="main-content">
<div class="total-wrapper">
  <div class="account-info-menu-title">회원정보</div>
  <form name="changePassword" action="address_infoResult.do?seq=${seq}" method="post">
      <div class="form-row">
        <p class="input-title">이메일</p>
        <input name="ownerEmail1" class="input" id="email" type="email" value="${ownerEmail1}">
      </div> 
      <div class="form-row has-button">
		<input class="input" id="restaurant_address1" type="text" placeholder="우편번호" name="restaurant_address1" value="${requestDTO.restaurant_address1}">
   		<button class="sub-btn btn-open-address button-line button-primary button-small" onclick="sample4_execDaumPostcode()" value="음식점 주소찾기" type="button">주소찾기</button>
  	  </div>
      <div class="form-row">
        <p class="input-title">도로명주소</p>
        <input name="restaurant_address2" class="input" id="restaurant_address2" type="text" placeholder="도로명주소"  value="${requestDTO.restaurant_address2}">
      </div>
      <div class="form-row">
        <p class="input-title">지번주소</p>
        <input name="restaurant_address3" class="input" id="restaurant_address3" type="text" placeholder="지번주소"  value="${requestDTO.restaurant_address3}">
      <span id="guide" style="color:#999"></span>
      <div class="form-row">
        <p class="input-title">상세주소</p>
        <input class="input" id="restaurant_address4"placeholder="상세주소" name="restaurant_address4" type="text"  value="${requestDTO.restaurant_address4}">
      </div>
    </div>
			
						
						
    <div class="button-group">
      <div class="button-control">
        <button class="button button-default" type="button" onclick="location.href='ownerModifyForm.do'">취소</button>
      </div>
      <div class="button-control">
        <button class="button button-primary" type="submit">확인</button>
      </div>
    </div>
  </form>
</div>
</div>
</div>
</body>
</html>
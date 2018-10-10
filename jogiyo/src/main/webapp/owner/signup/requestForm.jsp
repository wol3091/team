<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">

function request() {
	if("input[name=license_num1]").val() == "") {
		alert("사업자  번호를 입력하세요.");
		 $("input[name=license_num1]").focus();
	}else if("input[name=license_num2]").val() == "") {
		alert("사업자  번호를 입력하세요.");
		$("input[name=license_num2]").focus();
	} else if("input[name=license_num3]").val() == "") {
		alert("사업자  번호를 입력하세요.");
		$("input[id=license_num3]").focus();
	}  else if("input[id=registration]").val() == "") {
		alert("사업자등록증 사본등록을 하세요.");
		$("input[id=registration]").focus();
	}  else if("input[id=business_register]").val() == "") {
		alert("영업신고증 사본등록을 하세요.");
		$("input[id=business_register]").focus();
	}else if(document.requestform.register_name.value == "") {
		alert("사업주명을 입력하세요.");
		document.requestform.register_name.focus();
	} else if(document.requestform.business_phone2.value == "") {
		alert("사업자  휴대폰번호를 입력하세요.");
		document.requestform.business_phone2.focus();
	} else if(document.requestform.business_phone3.value == "") {
		alert("사업자  휴대폰번호를 입력하세요.");
		document.requestform.business_phone3.focus();
	} else if(document.requestform.restaurant_name.value == "") {
		alert("음식점 이름을 입력하세요.");
		document.requestform.restaurant_name.focus();
	} else if(document.requestform.restaurant_address1.value == "") {
		alert("음식점 주소(우편번호)를 입력하세요.");
		document.requestform.restaurant_address1.focus();
	} else if(document.requestform.restaurant_address2.value == "") {
		alert("음식점 주소(도로명주소)를 입력하세요.");
		document.requestform.restaurant_address2.focus();
	} else if(document.requestform.restaurant_address3.value == "") {
		alert("음식점 주소(지번주소)를 입력하세요.");
		document.requestform.restaurant_address3.focus();
	} else if(document.requestform.restaurant_address4.value == "") {
		alert("음식점 주소(상세주소)를 입력하세요.");
		document.requestform.restaurant_address4.focus();
	} else if(document.requestform.delivery_option.value == "") {
		alert("배달 가능 여부를 입력하세요.");
		document.requestform.delivery_option.focus();
	} else if(document.requestform.delivery_option.value == "") {
		alert("배달 가능 여부를 입력하세요.");
		document.requestform.delivery_option.focus();
	} else if(document.requestform.somename.value == "") {
		alert("썸네일 등록하세요.");
		document.requestform.somename.focus();
	}else {
		document.requestform.submit();
	} 
}

$(document).ready(function(){ 
	var fileTarget = $('.filebox .upload-hidden'); 
	fileTarget.on('change', function(){ 
		// 값이 변경되면 
		if(window.FileReader){
		// modern browser 
		var filename = $(this)[0].files[0].name; 
	} else { // old IE 
		var filename = $(this).val().split('/').pop().split('\\').pop();
	// 파일명만 추출 
	}
	// 추출한 파일명 삽입
	$(this).siblings('.upload-name').val(filename); 
	}); }); 

</script>
<style type="text/css">
body, p, h1, h2, h3, h4, h5, h6, ul, ol, li, dl, dt, dd, table, th, td, form, fieldset, legend, input, textarea, button, select, figure, figcaption {
    margin: 0;
    padding: 0;
}
body, input, select, textarea, button, table {
    font: 14px/1.5 'Malgun Gothic','맑은 고딕', '나눔고딕', NanumGothic, '돋움', Dotum, tahoma, helvetica, sans-serif;
    color: #666666;
}
table {
    border-collapse: collapse;
    border-spacing: 0px;
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
.own-content {
    float: left;
    width: 760px;
    margin: 0 0 0 34px;
}

.tit-area {
    position: relative;
  /*   border-bottom: 2px solid #343434; */
    padding: 27px 0;
    margin-bottom: 40px;
}

.tit-area > h2 {
    color: #343434;
    font-size: 31px;
    font-weight: normal;
    
}
.tit-area > p {
    color: #888;
    font-size: 12px;
    margin-top: 5px;
}
.tbl-caption.frst {
    padding-top: 0px;
}
.tbl-caption {
    color: #343434;
    font-size: 16px;
    font-weight: bold;
    padding: 13px 0 23px 0;
}
.tbl-caption .stxt {
    font-size: 12px;
    font-weight: normal;
}
.table-style1 th em, .tbl-caption em {
    color: #dc1400;
    font-style: normal;
}
.join-form .table-style1 {
    margin-bottom: 34px;
}
.table-style1 {
    width: 100%;
    border-top: 1px solid #AEAEAE;
    border-bottom: 1px solid #AEAEAE;
}

.table-style1 th {
    background-color: #fafafa;
    border-bottom: 1px solid #E0E0E0;
    border-right: 1px solid #E0E0E0;
    font-size: 12px;
    font-weight: bold;
    vertical-align: middle;
    text-align: center;
}
.table-style1 td {
    border-bottom: 1px solid #E0E0E0;
    min-height: 56px;
    font-size: 12px;
    font-weight: normal;
    vertical-align: middle;
    padding: 12px 14px;
}
.table-style1 td input[type='text'] {
    height: 32px;
    line-height: 30px;
    border: 1px solid #ccc;
    font-size: 12px;
    padding: 0 5px;
    vertical-align: middle;
    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
    box-sizing: border-box;
}
.w-s {
    width: 70px;
}
.filebox .upload-name {
    width: 300px;
    height: 32px;
    line-height: 30px;
    border: 1px solid #ccc;
    font-size: 12px;
    padding: 0 5px;
    vertical-align: middle;
}
.filebox label {
    display: inline-block;
    padding: 0 10px;
    height: 30px;
    font-size: 12px;
    font-weight: normal;
    color: #646464;
    border: 1px solid #888;
    background-color: #fff;
    box-shadow: none;
    text-decoration: none;
    margin-left: 3px;
    line-height: 30px;
    vertical-align: middle;
}
.table-style1 td input[type='file'] {
    font-size: 12px;
    padding: 0 5px;
    /* -webkit-box-sizing: border-box; */
    -moz-box-sizing: border-box;
    box-sizing: border-box;
}

.filebox input[type='file'] {
    position: absolute;
    width: 1px;
    height: 1px;
    padding: 0;
    margin: -1px;
    overflow: hidden;
    clip: rect(0px, 0px, 0px, 0px);
    border: 0;
}
.table-style1 td input[type='text'] {
    height: 32px;
    line-height: 30px;
    border: 1px solid #ccc;
    font-size: 12px;
    padding: 0 5px;
    vertical-align: middle;
    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
    box-sizing: border-box;
}
.select-style {
    float: left;
    padding: 0;
    margin: 0 3px 0 0;
    border: 1px solid #ccc;
    width: 70px;
    overflow: hidden;
    background-color: #fff;
    background: #fff url(/media/images/owners/img-arr-down.png) no-repeat 92% 50%;
}

.table-style1 td select {
    height: 30px;
    line-height: 30px;
    font-size: 12px;
    padding: 0 5px;
    border: 0;
    outline: 1px solid #CCC;
    background-color: white;
    vertical-align: middle;
    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
    box-sizing: border-box;
}
.table-style1 td input[type='text'] {
    height: 32px;
    line-height: 30px;
    border: 1px solid #ccc;
    font-size: 12px;
    padding: 0 5px;
    vertical-align: middle;
    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
    box-sizing: border-box;
}
.checkbox-style {
    float: left;
    margin-left: 50px;
   	padding-left: 10px;
   	
    margin: 0 3px 0 0;
    border: 1px solid #ccc;
    width: 400px;
    overflow: hidden;
    background-color: #fff;
}
.request-form .table-style1 {
    margin-bottom: 34px;
}

.request-form .terms {
    border: 1px solid #E0E0E0;
    background-color: #fff;
    font-size: 11px;
    padding: 15px;
    height: 95px;
    overflow-y: scroll;
    box-sizing: border-box;
}
.request-form .terms strong {
    color: #343434;
    font-size: 12px;
}
b, strong {
    font-weight: bold;
}
.request-form .terms .p1 {
    padding: 10px 0 20px 0;
}
.chk-item {
    color: #343434;
    font-size: 14px;
    margin-top: 15px;
    text-align: center;
}
.request-form .btn-set1 {
    margin: 50px 0 15px;
}
.btn-set1 {
    position: relative;
    text-align: center;
}
.j4 .btn-type1 {
    width: 156px;
    font-weight: bold;
}
.btn-type1 {
    height: 50px;
    line-height: 48px;
    background: #DC1400;
    border: 1px solid #DC1400;
    font-size: 14px;
    color: #fff;
    padding: 0;
    margin: 0;
    border-radius: 0;
    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
    box-sizing: border-box;
}
.btn-sm {
    padding: 0 10px;
    height: 32px;
    font-size: 12px;
    font-weight: normal;
    color: #646464;
    border: 1px solid #888;
    background-color: #fff;
    box-shadow: none;
    text-decoration: none;
    margin-left: 3px;
    vertical-align: middle;
}
.sb-addr {
    margin-top: 5px;
}

</style>
<!-- 마지막 체크박스에 js삽입이 안되는 오류 있음  -->

<!-- 음식점 위치 확인 -->
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>

<!-- js -->
<script type="text/javascript" src="../script/ownerScript.js"></script>

</head>
<body>
<div class="main">
<div class="main-content">
<div class="own-content j4">
<div class="tit-area">
   <h2>온라인 입점신청</h2>
   <p>운영중인 음식점을 요기요에 신청하세요. 온라인 입점신청 중 어려움이 있으시면 고객센터(02-1234-5678)로 연락주세요</p>
</div>
<form action="requestResult.do" method="POST" name="requestform" method="POST" enctype="multipart/form-data">
	<div class="request-form">
    	<div class="tbl-caption frst">사업자 정보 <span class="stxt"><em>*</em>필수 입력 정보</span></div>
            <table class="table-style1">
                        
                <colgroup>
                    <col style="width: 150px">
                    <col>
                </colgroup>
                <input type="hidden" name="access1" id="access1" value="n">
            	<input type="hidden" name="temp_close" id="temp_close" value="n">
                <tr>
                    <th>사업자 번호 <em>*</em></th>
                    <td>
                        <input type="text" class="w-s" name="license_num1"> -
                        <input type="text" class="w-s" name="license_num2">-
                        <input type="text" class="w-s" name="license_num3">
                    </td>
                </tr>
                <tr>
                    <th>사업자등록증 사본등록 <em>*</em></th>
                    <td class="add_file">
                        <div class="filebox">
                          <input class="upload-name" value="파일선택" disabled="disabled">
                          <label for="registration">찾아보기</label>
                          <input type="file" accept=".gif, .jpg, .png" id="registration" name="imageFile" class="upload-hidden">
                        </div>
                    </td>
                </tr>
                <tr>
                    <th>영업신고증 사본등록 <em>*</em></th>
                    <td class="add_file">
                        <div class="filebox">
                            <input class="upload-name" disabled="disabled" value="파일선택">
                            <label for="business_register">찾아보기</label>
                            <input type="file" accept=".gif, .jpg, .png" id="business_register" name="imageFile" class="upload-hidden">
                        </div>
                    </td>
                </tr>
                <tr>
                    <th>사업주명 <em>*</em></th>
                    <td>
                        <input type="text" class="w-l" name="register_name">
                    </td>
                </tr>
                <tr>
                    <th>사업자 휴대폰 번호 <em>*</em></th>
                    <td>
                        <div class="select-style">
                            <select name="business_phone1" class="w-s">
                                <option value="010">010</option>
                                <option value="011">011</option>
                                <option value="016">016</option>
                                <option value="017">017</option>
                                <option value="018">018</option>
                                <option value="019">019</option>
                                <option value="0130">0130</option>
                             </select>
                         </div>
                         -
                        <input type="text" class="w-s" name="business_phone2"> -
                        <input type="text" class="w-s" name="business_phone3">
                    </td>
                </tr>
                
            </table>


            <div class="tbl-caption">음식점 정보</div>
            <table class="table-style1">
                <colgroup>
                    <col style="width: 150px">
                    <col>
                </colgroup>
                <tr>
                    <th>음식점 이름 <em>*</em></th>
                    <td>
                        <input type="text" class="w-l" name="restaurant_name">
                    </td>
                </tr>
                <tr>
                    <th>음식점 전화번호</th>
                    <td>
                        <div class="select-style">
                        <select name="restaurant_phone1" id="restaurant_phone1" class="w-s">
                            <option value="02">02</option>
                            <option value="031">031</option>
                            <option value="032">032</option>
                            <option value="033">033</option>
                            <option value="041">041</option>
                            <option value="042">042</option>
                            <option value="043">043</option>
                            <option value="044">044</option>
                            <option value="051">051</option>
                            <option value="052">052</option>
                            <option value="053">053</option>
                            <option value="054">054</option>
                            <option value="055">055</option>
                            <option value="061">061</option>
                            <option value="062">062</option>
                            <option value="063">063</option>
                            <option value="064">064</option>
                            <option value="010">010</option>
                            <option value="011">011</option>
                            <option value="016">016</option>
                            <option value="017">017</option>
                            <option value="018">018</option>
                            <option value="019">019</option>
                            <option value="0130">0130</option>
                            <option value="070">070</option>
                            <option value="080">080</option>
                            <option value="0507">0507</option>
                            <option value="0506">0506</option>
                            <option value="0505">0505</option>
                            <option value="0504">0504</option>
                            <option value="0503">0503</option>
                            <option value="0502">0502</option>
                            <option value="0303">0303</option>
                         </select>
                         </div> <span class="bar">-</span>
                        <input type="text" class="w-s" name="restaurant_phone2"> -
                        <input type="text" class="w-s" name="restaurant_phone3">
                    </td>
                </tr>
                <tr>
                    <th>음식점 주소 <em>*</em></th>
                    <td name="selected_address">
                        <p class="sb-addr"><input class="address1" type="text" id="restaurant_address1" name="restaurant_address1" placeholder="우편번호"
                         value="123">
						<input class="btn-sm" type="button" onclick="sample4_execDaumPostcode()" value="음식점 주소찾기"><br></p>
						<p class="sb-addr"><input class="address2" type="text" id="restaurant_address2" name="restaurant_address2" placeholder="도로명주소">
						<input class="address3" type="text" id="restaurant_address3"  name="restaurant_address3" placeholder="지번주소">
						 </p>
						<span id="guide" style="color:#999"></span>

<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script>
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
                        <p class="sb-addr"><input class="address4" type="text" class="w-xl" placeholder="상세주소" name="restaurant_address4"
                         value="123"></p>
                    </td>
                </tr>
                <tr>
                    <th>업종 카테고리 <em>*</em></th>
                    <td>
                        <div class="checkbox-style">
                       			<input type="checkbox" name="box" value="프랜차이즈" />프랜차이즈
								<input type="checkbox" name="box" value="치킨" />치킨
								<input type="checkbox" name="box" value="피자양식" />피자/양식
								<input type="checkbox" name="box" value="중국집" />중국집
								<input type="checkbox" name="box" value="한식" />한식
								<input type="checkbox" name="box" value="일식/돈까스" />일식/돈까스<br>
								<input type="checkbox" name="box" value="족발보쌈"/>족발/보쌈
                        		<input type="checkbox" name="box" value="야식"/>야식
                        		<input type="checkbox" name="box" value="분식"/>분식
                        		<input type="checkbox" name="box" value="카페/디저트"/>카페/디저트
                        </div>
                    </td>
                </tr>
                <tr>
                    <th>배달 가능 여부 <em>*</em></th>
                    <td class="rs">
                        <label class="radio-inline">
                          <input type="radio" name="delivery_option" value="배달만 가능" checked="checked"> 배달만 가능
                        </label>
                        <label class="radio-inline">
                          <input type="radio" name="delivery_option" value="배달 + 테이크아웃 가능"> 배달+테이크아웃 가능
                        </label>
                    </td>
                </tr>
                <tr>
                    <th>썸네일 등록</th>
                    <td class="add_file">
                        <div class="filebox">
                          <input class="upload-name" value="파일선택" disabled="disabled">
								
                          <label for="somename">찾아보기</label>
                          <input type="file" accept=".gif, .jpg, .png" id="somename" name="imageFile" class="upload-hidden">
                        </div>
                    </td>
                </tr>
            </table>

            <div class="terms" >
                <strong>개인정보 수집 및 이용 동의</strong>

                <p class="p1">"회사"는 다음과 같이 "사장님"의 개인정보를 수집합니다. 처리하고 있는 개인정보는 다음의 수집·이용목적 이외의 용도로는 활용되지 않으며, 수집·이용목적이 변경되는 경우에는 「개인정보보호법」에 따라 별도의 동의를 받는 등 필요한 조치를 이행합니다.</p>

                <p>요기요 온라인 입점신청 시 수집하는 개인정보</p>
                <table class="section">
                    <tr>
                        <th width="18%">개인정보 수집 목적</th>
                        <th>수집하는 개인정보 항목</th>
                        <th width="20%">보유 및 이용기간</th>
                        <th width="12%">수집방법</th>
                    </tr>
                    <tr>
                        <td>요기요 입점신청</td>
                        <td>[필수] 사업자번호, 사업자등록증, 영업신고등록증, 사업주명, 사업자 휴대폰번호, 인증번호, 음식점 이름, 음식점 주소, 업종 카테고리, 배달가능 여부<br>
                        [선택] 음식점전화번호, 전단지</td>
                        <td>목적달성 후 즉시 파기</td>
                        <td>온라인</td>
                    </tr>
                </table>
                <p>요기요 온라인 입점신청을 위해 동의받는 개인정보 수집 및 이용동의를 제외한 나머지 개인정보처리 관련 사항은 요기요 사장님 사이트의 개인정보처리방침과 동일하게 적용됩니다.</p>
            </div>
            <p class="chk-item">
                <label>
                    <input type="checkbox" name="yak" value="y" checked="checked"> <strong>개인정보 수집 및 이용에 동의합니다.(필수)</strong>
                </label>
            </p>

            <div class="btn-set1">
                <button type="submit" class="btn-type1" name="save_button">입점 신청 완료</button>
             <!--  <a href="/owner/join/process/" class="btn-right"><span>입점절차 살펴보기</span> &#9656;</a>-->   
    	</div>
    </div>
</form>
</div>
</div>
</div>
	</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="../js/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
	var main_btn_ud = 0; /* 열린상태 0 닫은 상태 1 */
	var side_btn_ud = 0; 	/* 열린상태 0 닫은 상태 1 */

	$(document).ready(function() { 
		$('.testmin').tooltip();
	});
	
	function delivery_btn() {
		
		$('.btn_address_area').toggle();
		if(side_btn_ud == 0) {
			$('#ttokdak1').html('<img alt="" src="../image/btg_down.png">');
			side_btn_ud = side_btn_ud +1;
		} else {
			$('#ttokdak1').html('<img alt="" src="../image/btg_up.png">');
			side_btn_ud = side_btn_ud -1;
		}
	}
	
	function req_btn() {
		$('.btn_textarea').toggle();
		/* 열린 상태 */
		if(main_btn_ud == 0) {
			$('#ttokdak2').html('<img alt="" src="../image/btg_down.png">');
			main_btn_ud = main_btn_ud +1;
		} else {
			$('#ttokdak2').html('<img alt="" src="../image/btg_up.png">');
			main_btn_ud = main_btn_ud -1;
		}
		
	}
	
	/* 숫자만 입력 가능하게 만들기 */
	function onlyNum() {
		$("input[name=phoneNumber]").val( $("input[name=phoneNumber]").val().replace(/[^0-9]/g,"") );
	}

	function go_realOrder() {
		if($("input[name=second_address]").val() == "") {
			alert("주소를 입력해 주세요");
			$("input[name=second_address]").focus();
		} else if($("input[name=phoneNumber]").val() == "") {
			alert("전화번호를 입력해 주세요");
			$("input[name=phoneNumber]").focus();
		} else if(!$("#allCheck").is(":checked")) {
			alert("체크해 주세요");
			$("#allCheck").focus();
		} else if(!$("#allCheck").is(":checked")) {
			alert("체크해 주세요");
			$("#allCheck").focus();
		} else if(!$("#allCheck").is(":checked")) {
			alert("체크해 주세요");
			$("#allCheck").focus();
		} else {
			document.orderGo.submit();
		}
	}
	/* 전체 체크 */
	$(function(){ 
		$("#allCheck").click(function(){ 
			if($("#allCheck").prop("checked")) { 
				$("input[name=all_ch]").prop("checked",true); 
			} else { 
			$("input[name=all_ch]").prop("checked",false); 
			} 
		}) 
	})
</script>
<style type="text/css">
html, body {
	margin:0;
	padding:0;
	width: auto !important;
    min-width: 320px;
    letter-spacing: 0;
    background: #FBFBFB;
    font-family: '맑은고딕', malgun gothic,'돋움',Dotum,'Apple SD Gothic Neo',Helvetica,sans-serif;
}
#section {
	min-height: 500px;
	background: #FBFBFB;
}
#real_section {
	width: 980px;
	margin: auto;
}
#real_section_part1 {
	width: 63%;
	display: inline-block;
	margin:auto;
}
#real_section_part1 .subject_tg {
	 width: 100%; 
	 background: #e6e6e6; 
	 height: 35px;
	 border: 0;
	 border: 1px solid #a0a0a0;
	 border-top:none;
	 color: #5a5a5a;
	 padding-top: 12px;
	 padding-left: 10px;
	 cursor: pointer;
}
#real_section_part2 {
	float:right;
	width: 33%;
	margin:auto;
}
</style>
</head>
<body>
<!-- 
이런 식으로 쓰면 됨 ㄱㄱ
길이는 ==${length}
<c:forEach var="list" items="${order_menu}">
	${list}
</c:forEach>
+주소도 필요
 -->
<div id="section">
	<div id="real_section">
		<div id="real_section_part1">
			<div class="subject_tg" style="background: black; color: white; cursor: auto;">
				결제하기
			</div>
			<form action="../choice/paymentResult.do" name="orderGo" method="post">
			<div class="subject_tg" onclick="delivery_btn();">
				배달정보  <span style="float: right; padding-left: 10px;" id="ttokdak1"><img alt="" src="../image/btg_up.png"></span>
			</div>
			<div style="height: 210px; width: 101.56%; border: 1px solid #dcdcdc; border-top: none; border-bottom:none;
			padding-left: 0.1px;" class="btn_address_area">
				<table style="width: 100%; padding-top: 20px;">
					<tr style="width: 100%; height: 40px;">
						<td style="width: 20%; text-align: right; padding-right: 20px; font-weight: bold;">주소</td>
						<td style="width: 65%;"><input type="text" name="first_address" value="${location }" readonly="readonly"
						style="height: 60%; width: 90%; font-size: 1em; padding-left: 20px;"></td>
					</tr>
					<tr style="width: 100%; height: 40px;">
						<td style="width: 20%; text-align: right; padding-right: 20px; font-weight: bold;"></td>
						<td style="width: 65%;"><input type="text" name="second_address"  placeholder="(필수)상세주소 입력"
						style="height: 60%; width: 90%; font-size: 1em; padding-left: 20px;"></td>
					</tr>
					<tr style="width: 100%; height: 40px;">
						<td style="width: 20%; text-align: right; padding-right: 20px; font-weight: bold;">휴대폰전화번호</td>
						<td style="width: 65%;"><input type="text" placeholder="(필수)휴대폰 번호 입력" name="phoneNumber" onkeyup="onlyNum();"
						style="height: 60%; width: 90%; font-size: 1em; padding-left: 20px;"></td>
					</tr>
					<tr style="width: 100%; height: 40px;">
						<td style="width: 20%; text-align: right; padding-right: 20px; font-weight: bold;"></td>
						<td style="width: 65%;">
							<input type="checkbox" checked="checked">안심번호사용<img alt="정보" src="../image/123.png" style="width: 13px; height: 13px; cursor: pointer;" 
							class="testmin" title="안심번호는 고객님의 개인정보 보호를 위해연락처 정보가 유출되지 않도록1회성 임시번호를 발급하는 서비스 입니다.발급된 안심번호는 일정시간 이후자동으로 해지됩니다.">
						</td>
					</tr>
				</table>
			</div>
			
			<div class="subject_tg" style="border-top: 0.1px solid #a0a0a0;"  onclick="req_btn();">
				주문시 요청사항<span style="float: right; padding-left: 10px;" id="ttokdak2"><img alt="" src="../image/btg_up.png"></span>
			</div>
			
				<div style="height: 180px;  width: 101.56%; border: 1px solid #dcdcdc; border-top: none; border-bottom: none;" class="btn_textarea">
					<textarea rows="5" style="width: 95%; height:80%; margin-left: 12px;
					margin-top: 16px;" name="wish"></textarea>
					
					<c:forEach var="i" begin="0" end="${length-1 }" step="1">
						<input type="hidden" name="input_order_menu" value="${order_menu[i] }">
						<input type="hidden" name="input_order_price" value="${order_price[i] }">
						<input type="hidden" name="input_order_count" value="${order_count[i] }">
					</c:forEach>
					<input type="hidden" name="delivery_cost" value="${requestDTO.getDelivery_cost()}">
					<input type="hidden" name="seq" value="${seq }">
					<input type="hidden" name="id" value="${memId }">
					<input type="hidden" name="total_price" value="${total_price}">
				</div>
			</form>
			<div class="subject_tg"  style="border-top: 0.1px solid #a0a0a0;">
				결제수단 선택
			</div>
			<div  style="height: 120px; width: 100%; border: 1px solid #dcdcdc; border-top: none;
			padding-left: 10px;">
				<br>
				<span style="color: red;">요기서결제</span>(웹에서 지금 결제)<br>
				<span style="color: red; font-size: 12px;">* 요기서결제는 Internet Explorer에서 가능합니다.</span>
				<table style="width: 95%; height: 40px; margin: auto;  margin-top: 10px; border: 1px solid #dcdcdc;">
					<tr>
						<td style="border-right: 1px solid #dcdcdc; border-left: none;"><input type="radio" name="calc_choice">신용카드 결제</td>
						<td style=""><input type="radio" name="calc_choice">휴대전화 결제</td>
					</tr>
				</table>
			</div>
			
			<div class="subject_tg" style="border-top: 1px solid #a0a0a0; margin-top: 25px;">
				할인방법 선택
			</div>
			<div style="height: 70px; width: 101.56%; border: 1px solid #dcdcdc; border-top: none;
			padding-left: 0.1px;">
				<table style="width: 100%; height: 100%;">
					<tr>
						<td style="width: 20%; text-align: left; padding-left: 20px; font-weight: bold;">쿠폰</td>
						<td style="width: 65%;"><input type="text" placeholder="쿠폰 코드 입력"
						style="height: 60%; width: 90%; font-size: 1em; padding-left: 20px;"></td>
						<td style="width: 10%;">
							<span style="border: 1px solid red; padding: 10px 12px 12px 8px; color: red; cursor: pointer;">
							적용
							</span>
						</td>
					</tr>
				</table>
			</div>
			
			
		</div>
		
		<div id="real_section_part2">
			<div style="width: 100%; background: #dcdcdc; height: 30px;border: 1px solid #a0a0a0;
border-bottom: none; color: #5a5a5a;padding-top: 12px; padding-left: 10px;">
				주문 내역
			</div>
			<div style="width: 100%; background: white; height: 30px;border: 1px solid #a0a0a0;
border-bottom: none; color: black;padding-top: 12px; padding-left: 10px;">
				${requestDTO.getRestaurant_name()} - ${requestDTO.getRestaurant_address3()}
			</div>
			<div style="width: 100%; background: #FFEAD0; min-height: 50px;border: 1px solid #a0a0a0;
border-bottom: none; color: black;padding-top: 12px; padding-left: 10px; padding-bottom: 12px;">
				<c:forEach var="i" begin="0" end="${length-1 }" step="1">
					${order_menu[i] } x ${order_count[i]} <span style="float: right;">${order_price[i] }원&nbsp;</span> <br>
				</c:forEach>
				<br>총 가격<span style="float: right;">${total_price-requestDTO.getDelivery_cost() }원&nbsp;</span>
				<c:if test="${requestDTO.getDelivery_cost() !=0 }">
					<br><br>배달료 <span style="float: right;">${requestDTO.getDelivery_cost()}원&nbsp;</span>
				</c:if>
			</div>
			<div style="width: 100%; background: #FFEAD0; min-height: 50px; border: 1px solid #a0a0a0;
 color: black;padding-top: 12px; padding-left: 10px; color: red;">
				총 결제 금액 <span style="float: right;">${total_price}원&nbsp;</span>
			</div>
			<!-- 전체동의 selection  -->
			<div style="width: 100%; height: 70px; border-bottom: 1px solid #a0a0a0;
 color: black;padding-top: 30px; padding-left: 10px; font-size: 15px; font-weight: bold;">
				<input type="checkbox" style="width: 20px; height: 20px;" id="allCheck">
				<div style="display: inline-block;position: relative; top:-5px;">전체 동의</div>
			</div>
			
			<div style="width: 100%;
 color: black;padding-top: 2px; padding-left: 20px;">
 				<input type="checkbox" style="width: 20px; height: 20px;" name="all_ch">
				<div style="display: inline-block;position: relative; top:-5px;  font-size: 12px; font-weight: bold;">SMS 수신 동의</div><br>
				
				<input type="checkbox" style="width: 20px; height: 20px;" name="all_ch">
				<div style="display: inline-block;position: relative; top:-5px;  font-size: 12px; font-weight: bold;">요기요 이용약관에 동의합니다. (전문보기)</div><br>
				
				<input type="checkbox" style="width: 20px; height: 20px;" name="all_ch">
				<div style="display: inline-block;position: relative; top:-5px;  font-size: 12px; font-weight: bold;">개인정보 수집 및 이용에 동의합니다. (전문보기)</div><br>
				
				<input type="checkbox" style="width: 20px; height: 20px;" name="all_ch">
				<div style="display: inline-block;position: relative; top:-5px;  font-size: 12px; font-weight: bold;">개인정보 제3자 제공에 동의합니다. (전문보기)</div><br>
				
			</div>
			
			
			<div style="width: 100%; background: red; height: 38px;border: 1px solid #a0a0a0;
 color: white;padding-top: 4px; text-align: center; font-size: 20px; margin-top: 30px; cursor: pointer;"
 onclick="go_realOrder();">
				주문 완료
			</div>
		</div>
	</div>
</div>
</body>
</html>
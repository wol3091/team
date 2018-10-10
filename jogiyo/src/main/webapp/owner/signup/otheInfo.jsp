<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="../../js/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
$(function() {
    $('.content').keyup(function (e){
        var content = $(this).val();        
        $('.counter').html("("+ content.length+" / 10000자)");    //글자수 실시간 카운팅

    });
    $('.content').keyup();
});
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

.own-content {
    float: left;
    width: 760px;
    margin: 0 0 0 34px;
}

.tit-area {
    position: relative;
    border-bottom: 2px solid #343434;
    padding: 27px 0;
    margin-bottom: 40px;
}

.tit-area > h2 {
    color: #343434;
    font-size: 31px;
    font-weight: normal;
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

.otherinfo .table-style1 {
    margin-bottom: 34px;
}

.table-style1 {
    width: 100%;
    border-top: 1px solid #AEAEAE;
    border-bottom: 1px solid #AEAEAE;
}

table {
    border-collapse: collapse;
    border-spacing: 0px;
}

body, input, select, textarea, button, table {
    font: 14px/1.5 'Malgun Gothic','맑은 고딕', '나눔고딕', NanumGothic, '돋움', Dotum, tahoma, helvetica, sans-serif;
    color: #666666;
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

.w-l {
    width: 350px;
}

.join-form .terms {
    border: 1px solid #E0E0E0;
    background-color: #fff;
    font-size: 11px;
    padding: 15px;
    height: 95px;
    overflow-y: scroll;
    box-sizing: border-box;
}
.w-m {
	width: 70px;
}
.w-s {
	width: 200px;
}
.counter {
    font-size: 12px;
    text-align: right;
    color: #898989;
}
.counter .counting {
    color: #232323;
}
.weekday {
	margin-left: 12px;
}
.saturday {
	margin-top: 10px;
} 
.sunday {
	margin-top: 10px;
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
.btn-set1 {
    position: relative;
    text-align: center;
}
.otherinfo .btn-set1 {
    margin: 50px 0 15px;
}
</style>
</head>
<body>
<div class="own-content j4">
    <div class="tit-area">
        <h2>나머지 정보 입력</h2>
    </div>

    <form class="otherinfo" name="otherinfo" method="POST" action="otherInfoResult.do?seq=${seq}">
	    <div class="otherinfo">
	        <div class="tbl-caption frst">음식점 정보</div>
	        <table class="table-style1">
	            <colgroup>
	                <col style="width: 150px">
	                <col>
	            </colgroup>
	            <tbody>
		            <tr>
		                <th>배달가능지역</th>
		                <td>
		                    <input name="delivery_region" id="delivery_region" class="w-l" type="text">
		                </td>
		            </tr>
		            <tr>
		                <th>결제수단</th>
		                <td>
		                    <input name="money_method" id="money_method" class="w-s" type="text">
		                </td>
		            </tr>
		            <tr>
		                <th>영업시간</th>
		                <td>
		                <div class="weekday">
		                    평일           <input name="weekday_start_H" id="weekday_start_H" class="w-m" type="text" maxlength="10">
		                    <input name="weekday_start_M" id="weekday_start_M" class="w-m" type="text" maxlength="10">
		                    :
		                    <input name="weekday_end_H" id="weekday_end_H" class="w-m" type="text" maxlength="10">
		                    <input name="weekday_end_M" id="weekday_end_M" class="w-m" type="text" maxlength="10"> <br>
		     			</div>
		     			<div class="saturday">
		          토요일          <input name="saturday_start_H" id="saturday_start_H" class="w-m" type="text" maxlength="10">
		                    <input name="saturday_start_M" id="saturday_start_M" class="w-m" type="text" maxlength="10">
		                    :
		                    <input name="saturday_end_H" id="saturday_end_H" class="w-m" type="text" maxlength="10">
		                    <input name="saturday_end_M" id="saturday_end_M" class="w-m" type="text" maxlength="10"><br>
		                </div>
		                <div class="sunday">
		        일요일            <input name="sunday_start_H" id="sunday_start_H" class="w-m" type="text" maxlength="10">
		                    <input name="sunday_start_M" id="sunday_start_M" class="w-m" type="text" maxlength="10">
		                    :
		                    <input name="sunday_end_H" id="sunday_end_H" class="w-m" type="text" maxlength="10">
		                    <input name="sunday_end_M" id="sunday_end_M" class="w-m" type="text" maxlength="10"> 
		               	</div>
		                </td>
		            </tr>
		            <tr>
		                <th>원산지</th>
		                <td>
		                    <div class="terms">
		            			<textarea style="overflow: hidden;" class="content" rows="5" cols="50" name="original" id="original" maxlength="10000"></textarea>
		            			<span class="counter">(<b class="counting">0</b> / 10000자)</span>

		        			</div>
		                </td>
		            </tr>
		            <tr>
		                <th>배달료</th>
		                <td>
		                    <input name="delivery_cost" class="w-s" type="text">
		                </td>
		            </tr>
		            <tr>
		                <th>배달소요시간</th>
		                <td>
		                    <input name="delivery_time" class="w-s" type="text">
		                </td>
		            </tr>
		            <tr>
		                <th>최소주문금액</th>
		                <td>
		                    <input name="lower_price" id="lower_price" class="w-s" type="text">
		                </td>
		            </tr>
	        </tbody>
	        </table>
	         <div class="btn-set1">
                <button type="submit" class="btn-type1" name="save_button">입점 신청 완료</button>
             <!--  <a href="/owner/join/process/" class="btn-right"><span>입점절차 살펴보기</span> &#9656;</a>-->   
    		</div>
	    </div>
    </form>
</div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style type="text/css">
h1{
   color: #232323;
}
.tbl-caption{
   color: #343434;
    font-size: 16px;
    font-weight: bold;
    padding: 13px 0 23px 0;
}
.table-style1 {
    width: 60%;
    border-top: 1px solid #AEAEAE;
    border-bottom: 1px solid #AEAEAE;
}
.table-style1 th {
    border-bottom: 1px solid #E0E0E0;
    border-right: 1px solid #E0E0E0;
    font-size: 12px;
    font-weight: bold;
    color: #616161;
    background: #f1f1f1;
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

.w-s {
    width: 70px;
}

button, .btn {
   margin-top: 30px;
   width: 176px;
    display: inline-block;
    height: 47px;
    background-color: #e61c13;
    color: #fff;
    border: none;
    border: 1px solid #b4060d;
    box-shadow: inset 0 1px 0 #eb8c8f;
    font-weight: bold;
}
p{
   color: #616161;
}
.btn_wrap{
	margin-left: -100px;
	margin-bottom: 30px;
}
.all_wrap{
	margin-top: 30px;
	margin-left: -100px;
}
</style>
<script>
String.prototype.popupView = function () {

 var img_view = this;
 var x = x + 20 ;
 var y = y + 30 ;
 htmlz = "<html><head><title>이미지크게보기</title><style>body{margin:0;cursor:hand;}</style></head><body scroll=auto onload='width1=document.all.Timage.width;if(width1>1024)width1=1024;height1=document.all.Timage.height;if(height1>768)height1=768;top.window.resizeTo(width1+30,height1+54);' onclick='top.window.close();'><img src='"+img_view+"' title='클릭하시면 닫힙니다.' name='Timage' id='Timage'></body></html>"
 imagez = window.open('', "image", "width="+ 100 +", height="+ 100 +", top=0,left=0,scrollbars=auto,resizable=1,toolbar=0,menubar=0,location=0,directories=0,status=1");
 imagez.document.open();
 imagez.document.write(htmlz)
 imagez.document.close();
}

</script>


</head>

<body>
	<div class="all_wrap">
    <h1><span>조기요 사장님 입점 수락</span></h1>
    <form name="accept_form" method="post" action="acceptResult.do?preseq=${requestDTO.preseq}">
        <div class="tbl-caption">사장님 입점정보 </div>
            <table class="table-style1">                       
                <colgroup>
                    <col style="width: 150px">
                    <col>
                </colgroup>
                <tr>
                	<input type="hidden" name="seq" id="seq" value="1">
                	<input type="hidden" name="access1" id="access1" value="y">
                    <th>사업자 번호 <em>*</em></th>
                    <td>
                        <input type="text" class="w-s" name="license_num1" value="${requestDTO.license_num1}"> -
                        <input type="text" class="w-s" name="license_num2" value="${requestDTO.license_num2}">-
                        <input type="text" class="w-s" name="license_num3" value="${requestDTO.license_num3}">
                    </td>
                </tr>
                <tr>
                    <th>사업주명 <em>*</em></th>
                    <td>
                        <input type="text" class="w-l" name="register_name" value="${requestDTO.register_name}">
                    </td>
                </tr>
                <tr>
                    <th>사업자 휴대폰 번호 <em>*</em></th>
                    <td>
                        <input type="text" class="w-s" name="business_phone2" value="${requestDTO.business_phone1}"> -
                        <input type="text" class="w-s" name="business_phone2" value="${requestDTO.business_phone2}"> -
                        <input type="text" class="w-s" name="business_phone3" value="${requestDTO.business_phone3}">
                    </td>
                </tr>
                
                <tr>
                    <th>음식점 이름 <em>*</em></th>
                    <td>
                        <input type="text" class="w-l" name="restaurant_name" value="${requestDTO.restaurant_name}">
                    </td>
                </tr>
                
                  <tr>
                    <th>사업자등록증<em>*</em></th>
                    <td>
                        <img src="../../registration/${requestDTO.registration}" onclick="this.src.popupView()" width="200px;" height="300px">
                        <p>*이미지를 클릭시 크게보기</p>
                    </td>
                </tr>
                </table>
             
            </div>
            <div class="btn_wrap">
            <input type="submit" class="btn" value="수락하기">
            <p>사장님의 입점절차에 오류가 있을 시에는 직접 연락을 해서, 사장님께서 직접 입점신청 수정 후 관리자의 수락하기를 진행합니다.</p>
			</div>
    </form>
</div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript" src="js/bootstrap.js"></script>
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-
BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-
rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-
Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
<script type="text/javascript">
$('#myTab a').click(function (e) {
     e.preventDefault()
     $(this).tab('show')
   })
   
$('#myTab a[href="#profile"]').tab('show') // Select tab by name
$('#myTab a:first').tab('show') // Select first tab
$('#myTab a:last').tab('show') // Select last tab
$('#myTab li:eq(2) a').tab('show') // Select third tab (0-indexed)

$(function() {
    $('.content').keyup(function (e){
        var content = $(this).val();        
        $('.counter').html("("+ content.length+" / 10000자)");    //글자수 실시간 카운팅

    });
    $('.content').keyup();
});
</script>
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
.h3{
   text-align: center;
}
p{
   text-align: center;
}
#myTab{
   margin: 0 auto;
}
.font{
color: black;
font-weight: bold;
} 
.container{
   margin: auto;
}
.header{
 padding-bottom: 40px; 
}
.login{
color: white;
font-size:large;
letter-spacing: 2px;
margin-top: 10px;}
.form-control{
margin:10px;
}
.form-signup-heading{
text-shadow: 0.05em 0.05em 0.05em;
color: gray;
}
.body{
background-color: rgba(0,0,0,0.05); 
}
img{
margin-left: 25px; margin-top: 25px;
}
body{
margin:0; padding:0;
}
.basic{
height: 500px;
}
.header_name{
font-family: serif;
font-style: italic;}
.tab-content{
height:1000px;
background-color: #f4f4f4;
}
/*btn-block**/
.btn-block{
 margin-left: -160px;
}
/*세션 기본정보 css*/
.tbody_tr{
margin: 0 auto;
height: 80px;
color: gray;
text-align: center;
padding: 100%;
}
.table { vertical-align: middle; }
.td_subName{
font-weight: bold;
height:50px; 
}
.wonsanji{
   font-size: x-small;
   font-weight: lighter;
   text-align: left;
   text-shadow: none;
}
.td2_subName{
   font-family:나눔고딕, NanumGothic, Georgia, Serif;
}
.H/M{
padding: 10px;
margin: 5px;
}
</style>
</head>
<body>
<div class="main">
<div class="main-content">
<!-- readme -->
<!-- 24시간 영업 클릭 시 시간선택셀럭트 숨김 기능 필요 -->
<div class="page-header">
  <h1>운영 정보 수정 <small>${requestDTO.seq} ${requestDTO.restaurant_name}</small></h1>
</div>

<div class="nav nav-tabs nav-justified">
<ul class="nav nav-tabs nav-justified" role="tablist" id="myTab">
  <li role="presentation" class="active"><a href="#home" aria-controls="home" role="tab" data-toggle="tab" class="font">기본 정보</a></li>
  <li role="presentation"><a href="#profile" aria-controls="profile" role="tab" data-toggle="tab" class="font">운영 정보</a></li>
</ul>
<div class="tab-content">
   <div role="tabpanel" class="tab-pane active" id="home">
      <div class="basic">
         <div>
         <form action="modify.do?seq=${seq}" name="modifyForm1" method="post">
            <table class="table">
               <tbody>
                  <tr class="tbody_tr">
                     <td class="td_subName" style="vertical-align: middle">업소 썸네일</td>
                     <td class="td2_subName" style="vertical-align: middle"><img name="somename" id="somename" src="../../somename/${requestDTO.somename}" class="img-circle" height="100" 
width="100"></td>
                  </tr>
                  <tr class="tbody_tr">
                     <td class="td_subName" style="vertical-align: middle">업소 번호</td>
                     <td class="td2_subName" style="vertical-align: middle"><input type="text" name="seq" id="seq" value="${requestDTO.seq}" readonly="readonly"></td>
                  </tr>
                  <tr class="tbody_tr">
                     <td class="td_subName" style="vertical-align: middle">업소명</td>
                     <td class="td2_subName" style="vertical-align: middle"><input type="text" name="restaurant_name" id="restaurant_name" style="height:35px; width:400px;text-align: center;" value="${requestDTO.restaurant_name}"></td>
                  </tr>
                  <tr class="tbody_tr">
                     <td class="td_subName" style="vertical-align: middle">카테고리</td>
                     <td class="td2_subName" style="vertical-align: middle"><input type="text" name="category_menu" id="category_menu" value="${requestDTO.category_menu}"></td>
                  </tr>
                  <tr class="tbody_tr">
                     <td class="td_subName" style="vertical-align: middle">전화번호</td>
                     <td class="td2_subName" style="vertical-align: middle">
                        <input type="text" name="restaurant_phone1" id="restaurant_phone1" style="height:30px; width:50px; text-align: center;margin:5px;" value="${requestDTO.restaurant_phone1}">-
                        <input type="text" name="restaurant_phone2" id="restaurant_phone2" style="height:30px; width:100px;text-align: center;margin:5px;" value="${requestDTO.restaurant_phone2}">-
                        <input type="text" name="restaurant_phone3" id="restaurant_phone3" style="height:30px; width:100px;text-align: center;margin:5px;" value="${requestDTO.restaurant_phone3}">
                     </td>
                  </tr>
                  <tr class="tbody_tr">
                     <td class="td_subName" style="vertical-align: middle">주소</td>
                     <td class="td2_subName" style="vertical-align: middle">
                        <input type="text" name="restaurant_address1" id="restaurant_address1" value="${requestDTO.restaurant_address1}">
                        <input type="text" name="restaurant_address2" id="restaurant_address2" value="${requestDTO.restaurant_address2}">
                        <input type="text" name="restaurant_address3" id="restaurant_address3" value="${requestDTO.restaurant_address3}">
                        <input type="text" name="restaurant_address4" id="restaurant_address4" value="${requestDTO.restaurant_address4}">
                        
                     </td>
                  </tr>
                  <tr class="tbody_tr">
                     <td class="td_subName" style="vertical-align: middle">원산지</td>
                           
                     <td class="td2_subName" style="vertical-align: middle"><textarea style="overflow: hidden; outline:none; background:#fff;" class="content" rows="30" cols="80" name="original" id="original" maxlength="10000">${requestDTO.original}</textarea>
                        <span class="counter">(<b class="counting">0</b> / 10000자)</span>
                     </td>
                  </tr>
                  <tr class="tbody_tr">
                     <td><br><br></td>
                     <td><button type="submit" class="btn btn-danger btn-lg btn-block" style="width: 350px; margin-left: 300px; margin-top: 50px;">입력 정보 수정</button>
                     </td>
                  </tr>
               </tbody>
            </table>
         </form>   
         </div>
      </div>
   </div>
    <div role="tabpanel" class="tab-pane" id="profile">
         <div class="basic">
         <div>
         <form action="modify2.do?seq=${seq}" name="modifyForm2" method="post">
            <table class="table">
               <tbody>
                  <tr class="tbody_tr">
                     <td class="td_subName" style="vertical-align: middle">영업 시간 <br>(00시~24시 기준)<br><br>24시간 영업(시작 24:00만 표기)</td>
                     <td class="td2_subName" style="vertical-align: middle">
                     <span class="label label-danger">월 ~ 금</span><div></div>
                        <span class="label label-default">시작</span> <!-- weekday_start_H -->
                           <input type="text" name="weekday_start_H"  style="width: 100px; height: 30px;text-align: center;margin:10px;" value="${requestDTO.weekday_start_H}">시
                           <input type="text" name="weekday_start_M"  style="width: 100px; height: 30px;text-align: center;margin:10px;" value="${requestDTO.weekday_start_M}">분
                        <div></div>
                        <span class="label label-default">종료</span>
                           <input type="text" name="weekday_end_H" style="width: 100px; height: 30px;text-align: center;margin:10px;" value="${requestDTO.weekday_end_H}">시
                           <input type="text" name="weekday_end_M" style="width: 100px; height: 30px;text-align: center;margin:10px;" value="${requestDTO.weekday_end_M}">분
                        <div></div>
   
   
                        <span class="label label-danger">토요일</span><div></div>
                        <span class="label label-default">시작</span>
                           <input type="text" name="saturday_start_H"  style="width: 100px; height: 30px;text-align: center;margin:10px;" value="${requestDTO.saturday_start_H}">시
                           <input type="text" name="saturday_start_M"  style="width: 100px; height: 30px;text-align: center;margin:10px;" value="${requestDTO.saturday_start_M}">분
                        <div></div><span class="label label-default">종료</span>
                           <input type="text" name="saturday_end_H"  style="width: 100px; height: 30px;text-align: center;margin:10px;" value="${requestDTO.saturday_end_H}">시
                           <input type="text" name="saturday_end_M" style="width: 100px; height: 30px;text-align: center;margin:10px;" value="${requestDTO.saturday_end_M}">분
                        <div></div>
                        
                        
                        
                        
                        <span class="label label-danger">일요일</span><div></div>
                        <span class="label label-default">시작</span>
                           <input type="text" name="sunday_start_H"  style="width: 100px; height: 30px;text-align: center;margin:10px;" value="${requestDTO.sunday_start_H}">시
                           <input type="text" name="sunday_start_M"  style="width: 100px; height: 30px;text-align: center;margin:10px;" value="${requestDTO.sunday_start_M}">분
                        <div></div><span class="label label-default">종료</span>
                           <input type="text" name="sunday_end_H"  style="width: 100px; height: 30px;text-align: center;margin:10px;" value="${requestDTO.sunday_end_H}">시
                           <input type="text" name="sunday_end_M" style="width: 100px; height: 30px;text-align: center;margin:10px;" value="${requestDTO.sunday_end_M}">분
                        <div></div>
                     </td>
                  </tr>
                  
                  <tr class="tbody_tr">
                     <td class="td_subName" style="vertical-align: middle">예상 배달 소요시간</td>
                     <td class="td2_subName" style="vertical-align: middle">
                     <input type="text" placeholder="ex)45-50"  name="delivery_time"style="width: 100px; height: 30px;margin:10px;" value="${requestDTO.delivery_time}">분
                  </tr>
                  <tr class="tbody_tr">
                     <td class="td_subName" style="vertical-align: middle">배달가능지역</td>
                     <td class="td2_subName" style="vertical-align: middle">
                        <input type="text" name="delivery_region" placeholder="ex)종로3가, 종각, 종묘, 광화문"style="width: 400px; height: 30px;margin:10px;" value="${requestDTO.delivery_region}">
                  </tr>
                  <tr class="tbody_tr">
                     <td class="td_subName" style="vertical-align: middle">최소배달금액</td>
                     <td class="td2_subName" style="vertical-align: middle">
                        <input type="text" value="${requestDTO.delivery_cost}" name="delivery_cost" style="width: 200px; height: 30px; text-align: center;margin:10px;" >원
                     </td>
                  </tr>
                   <tr class="tbody_tr">
                     <td class="td_subName" style="vertical-align: middle">최소주문금액</td>
                     <td class="td2_subName" style="vertical-align: middle">
                        <input type="text" value="${requestDTO.lower_price}" name="lower_price" style="width: 200px; height: 30px; text-align: center;margin:10px;" >원
                     </td>
                  </tr>
                  <tr class="tbody_tr">
                     <td><br><br></td>
                     <td><button type="submit" class="btn btn-danger btn-lg btn-block" style="margin-top: 50px; width: 350px; margin-left: 50px;">운영 정보 수정</button>
                     </td>
                  </tr>
               </tbody>
            </table>
         </form>
         </div>
      </div>
      
   </div>   
</div>
</div>
</div>
</div>
<script>
  $(function () {
    $('#myTab a:last').tab('show')
  })
</script>
</body>
</html> 
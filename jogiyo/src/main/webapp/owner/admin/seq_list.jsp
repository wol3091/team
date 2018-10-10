<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>입점신청목록보기</title>
<style type="text/css">
.main {
   height: 910px;
   overflow: hidden;
  
}
.main-content {
   width: 900px;
   height: 100%;
   overflow-y:scroll;
   -ms-overflow-style: none;
}
.all_wrapper{
   margin-top: 50px;
   /* position:absolute; */
   top:20%;
   left:50%;
   /* transform:translate(-50%, -50%) */
   margin-bottom: 50px;
   margin-left: 100px;
}
.search-wrap{
   margin-bottom: 30px;
}
.c{
   color: white;
}
.dsc {
    margin: 7px 0 6px;
    font-size: 12px;
    line-height: 17px;
    color: #898989;
}
#restaurant_name:link { color:black; text-decoration: none; }
#restaurant_name:visited { color:black; text-decoration: none; }
#restaurant_name:hover { color:red; text-decoration: underline; }
#restaurant_name:achive { color:black; text-decoration: none; }
</style>
<script type="text/javascript">
function filterTo(input, table) {
   var tr = document.getElementById(table).getElementsByTagName('tr');
   for (var i = 1; i < tr.length; i++) {
       var td = tr[i].getElementsByTagName('td');
       var hide = true;
       for (var j=0; j<td.length; j++) { 
           if (td[j].innerHTML.toUpperCase().indexOf(input.toUpperCase()) > -1) { hide=false; break } 
       }
       tr[i].style.display = hide ? 'none' : '';
   } }

</script>
</head>

<body> 
<div class="main">
<div class="main-content">
<div class="all_wrapper">
   <div class="search-wrap">
   <p class="dsc">*검색창에 찾고자하는 항목을 검색 시 쉽게 찾을 수 있습니다 </p>
   <input type = 'text'onkeyup = "filterTo (this.value, 'myTable')"placeholder = '예)조기요치킨' style="height:30px; width:320px;"> 
   </div>
   <p class="dsc">음식점명 클릭시 seq부여 창으로 이동</p>
      <table  cellpadding="4" id = 'myTable'>
      <tr bgcolor="#FF4848">
         <th width="200" class="c">사업자 번호</th>
         <th width="120" class="c">음식점 이름</th>
         <th width="80" class="c">사업주명</th>
         <th width="200" class="c">사업자 휴대폰 번호</th>      
      </tr>
         <c:forEach var="requestDTO" items="${list}">
            <tr bgcolor="#FFFFE4">
               <td align="center">${requestDTO.license_num1}-${requestDTO.license_num2}-${requestDTO.license_num3}</td>
                <td><a id="restaurant_name" href="giving_seq.do?preseq=${requestDTO.preseq}"> ${requestDTO.restaurant_name}</a></td>
               <td align="center">${requestDTO.register_name}</td>
               <td align="center">${requestDTO.business_phone1}-${requestDTO.business_phone2}-${requestDTO.business_phone3}</td>
            </tr>
         </c:forEach>   
      </table>
   </div>
   </div>
</div>
</body>
</html>
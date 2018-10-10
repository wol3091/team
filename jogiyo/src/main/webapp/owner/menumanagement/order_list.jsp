<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.all_wrap{
	margin: auto;
	/* margin-top:40px; */
    width: 60%;
    background-color: #f4f4f4;
    padding: 10px;
}

table{
	background: white;
}
.c{
	color: white;
}
p{
	color: #616161;
	margin-top: 20px;
}
</style>
</head>
<body>
<div class="all_wrap">
	<div>
		<h1>주문리스트</h1>
		<P>*현재들어온 주문 내역<br>*주문을 취소하고 싶으시면 고객센터로 전화주세요</P>
	</div>
	<div>
	<table id = 'myTable'>
      <tr bgcolor="#FF4848">
         <th width="150" class="c">주문자 아이디</th>
         <th width="250" class="c">주소</th>
         <th width="250" class="c">주문 메뉴</th>  
         <th width="250" class="c">주문 시간</th>
      </tr>

         <c:forEach var="Owner_orderlistDTO" items="${list}">
			<c:if test="${Owner_orderlistDTO.owner_check eq 'n'}">
            <tr>
               <td>${Owner_orderlistDTO.id}</td>
               <td>${Owner_orderlistDTO.delivery_region}</td>
               <td><a id="restaurant_name" href="order_view.do?seq=${Owner_orderlistDTO.seq}&owner_check=${Owner_orderlistDTO.owner_check}">${Owner_orderlistDTO.food}</a></td>
           	   <td>${Owner_orderlistDTO.logtime}</td>
            </tr>
            </c:if>
         </c:forEach>   
         
      </table>
	</div>
</div>

<div class="all_wrap">
	<div>
		<h1>주문완료리스트</h1>
	</div>
	<div>
	<table id = 'myTable'>
      <tr bgcolor="#FFDD73">
         <th width="150" class="c">주문자 아이디</th>
         <th width="250" class="c">주소</th>
         <th width="250" class="c">주문 메뉴</th>  
         <th width="250" class="c">주문 시간</th>
      </tr>
         <c:forEach var="Owner_orderlistDTO" items="${list}">
         	<c:if test="${Owner_orderlistDTO.owner_check eq 'y'}">
            <tr>
               <td>${Owner_orderlistDTO.id}</td>
               <td>${Owner_orderlistDTO.delivery_region}</td>
               <td><a id="restaurant_name" href="order_view.do?ceo_seq=${ceo_seq}&id=${Owner_orderlistDTO.id}&owner_check=${Owner_orderlistDTO.owner_check}&seq=${Owner_orderlistDTO.seq}">${Owner_orderlistDTO.food}</a></td>
           	   <td>${Owner_orderlistDTO.logtime}</td>
            </tr>
            </c:if>
         </c:forEach>   
      </table>
	</div>
</div>
</body>
</html>
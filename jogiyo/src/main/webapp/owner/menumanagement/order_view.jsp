<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
    width: 150px;
}
.w-l {
    width: 450px;
}
.btn {
    margin-top: 30px;
    margin-left: 20px;
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
.btn1 {
  	margin-left:200px;
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
	margin-bottom: 30px;
}
.all_wrap{
	margin-top: 30px;
	margin-left: 200px;
}
</style>


</head>

<body>
<form action="order_viewResult.do" >
	<div class="all_wrap">
    <h1><span>조기요 주문상세확인</span></h1>
        <div class="tbl-caption">주문내용을 확인합니다.</div>
        
            <table class="table-style1">                       
                <colgroup>
                    <col style="width: 150px">
                    <col>
                </colgroup>
                <tr>
                    <th>소비자 id </th>
                    <td>
                        <input type="text" class="w-s" name="id" value="${owner_orderlistDTO.id}">
                    </td>
                </tr>
                <tr>
                    <th>사용자전화번호</th>
                    <td>
                       <input type="text" class="w-s" name="phone" value="${owner_orderlistDTO.phone}">
                    </td>
                </tr>
                <tr>
                    <th>주문내역 </th>
                    <td>
                        <input type="text" class="w-l" name="food" value="${owner_orderlistDTO.food}">
                    </td>
                </tr>
                
                <tr>
                    <th>소비자 요구사항</th>
                    <td>
                        <input type="text" class="w-l" name="wish" value="${owner_orderlistDTO.wish}">
                    </td>
                </tr>
                
                  <tr>
                    <th>배달 주소</th>
                    <td>
                        <input type="text" class="w-l" name="delivery_region" value="${owner_orderlistDTO.delivery_region}">
                    </td>
                </tr>
                </table>
             
            </div>
            <div class="btn_wrap">
            <input type="hidden" name="seq" value="${seq}">
            <input type="hidden" name="owner_check" value="y">
            <input type="button" class="btn1" value="주문리스트" onclick="location.href='order_list.do?seq=${seq}&owner_check=${owner_check}'">
            <c:if test="${owner_check eq 'n' }">
            	<input type="submit" class="btn" value="주문수락" >
            </c:if>
            <c:if test="${owner_check eq 'y' }">
            	<input type="submit" class="btn" value="주문완료" >
            </c:if>
			</div>
</form>
</body>
</html>
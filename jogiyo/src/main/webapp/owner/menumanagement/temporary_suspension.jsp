<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.header {
    position: relative;
    padding-top: 30px;
     display: block;
}
.header h1 {
    padding: 20px 0 15px;
    font-size: 28px;
    font-weight: 700;
}
p {
    display: block;
}
.impl {
    color: #ff5757;
}
.edit {
    margin-top: 20px;
}
.edit dt {
    font-size: 15px;
    margin-bottom: 16px;
    color: #898989; 
}
.edit dd .select, .edit- dd .select {
    margin-right: 20px;
}
.select {
    display: inline-block;
    position: relative;
    width: 560px;
    vertical-align: top;
}
.select {
    position: relative;
    cursor: pointer;
    position: relative;
    overflow: hidden;
}

.contents {
    margin-bottom: 80px;
}
.operation {
    margin: 20px 0 60px;
    border-top: 1px solid #ddd;
}
ul {
    list-style: none;
}
.operation > li {
    border-bottom: 1px solid #ddd;
}
.operation .operation-item {
    padding: 16px 0 15px 20px;
}
.operation .item {
    float: left;
}
.operation .item strong {
    display: block;
    font-size: 18px;
    padding-bottom: 5px;
    color: #232323;
}
.operation .item span {
    font-size: 15px;
    color: #898989;
    
}
.operation .operation-item .btn {
    float: right;
    width: 126px;
}
.btn.btn-round.btn-impl {
    color: #ff5757;
    border-color: #ff5757;
}
.btn.btn-round {
    min-width: 100px;
    padding: 10px 20px;
    border-width: 1px;
    border-style: solid;
    background: transparent;
    border-radius: 20px;
}
.btn.btn-impl {
    border-color: #ff5757;
}
.btn {
    display: inline-block;
    padding: 10px 36px;
    font-size: 14px;
    line-height: 18px;
    font-weight: bold;
    background: #898989;
    border: 1px solid #898989;
    color: #fff;
    vertical-align: middle;
    cursor: pointer;
}
button{
	text-rendering: auto;
    color: initial;
    letter-spacing: normal;
    word-spacing: normal;
    text-transform: none;
    text-indent: 0px;
    text-shadow: none;
    margin: 0em;
    font: 400 13.4px;
}
</style>
</head>
<body>
<section class="operation">
  
  <header class="header" style="">
    <h1>임시 운영 중지</h1>
    <p>* 사장님이 일정 시간 동안 주문을 받을 수 없을 때 전화와 바로결제 서비스를 일시 중단하는 기능입니다.<br><span class="impl">* 최대 24시간까지 임시 운영 중지 하실 수 있습니다.</span></p>
   
  </header>


  <div class="contents">
    <ul class="operation">
      <!-- 운영중지 아이템일 경우 li class="item-stop", 해제일 경우 li class="item-run"-->
        <li>
          <div class="operation-item line clearfix">
            <div class="item">
              <strong>${seq} ${requestDTO.restaurant_name}</strong>
              <span>외식배달 / ${requestDTO.restaurant_address2}</span>
            </div>
            <c:if test="${requestDTO.temp_close eq 'n'}">
            <form action="tempResult.do?seq=${seq}" method="post">
              <input type="hidden" name="temp_close" id="temp_close" value="y">
              <button type="submit" class="btn btn-round btn-impl">임시운영중지</button>
             </form>
          	</c:if>
          	<c:if test="${requestDTO.temp_close eq 'y'}">
          	 <form action="tempResult.do?seq=${seq}" method="post">
          		<input type="hidden" name="temp_close" id="temp_close" value="n">
             	<button type="submit" class="btn btn-round btn-impl">임시운영중지해제</button>
             </form>
          	</c:if>
          </div>
          <div class="setting-area"></div>
        </li>
    </ul>
  </div>
  </form>
</section>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

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

.content1 {
    float: left;
    width: 900px;
    margin: 0 0 0 34px;
    padding-bottom: 90px;
	margin-left: 30px;
}
.title-wrap>h2 {
	margin-top:20px;
    color: #343434;
    font-size: 31px;
    font-weight: normal;
}
.title-wrap>p {
    color: #888;
    font-size: 12px;
    margin-top: 5px;
}
.p1>p {
    color: #343434;
    font-size: 16px;
    font-weight: bold;
    padding-bottom: 23px;
}
.btn_wrap {
    position: relative;
    text-align: center;
    margin-left: 3px;
}
.btn{
    padding: 20px 0;
    font-size: 17px;
    font-weight: normal;
    color: #fff;
    border: 1px solid #e61c13;
    background-color: #e61c13;
    display: block;
    margin: 0;
    width: 100%;
    text-decoration: none;
}
.down_2 ul {
    margin: 40px 11px 30px 11px;
}
ul {
    list-style: none;
}

.down_2 li {
    border-bottom: 1px solid #E0E0E0;
    font-size: 12px;
    line-height: 1.6;
    padding: 0 0 30px 36px;
    margin-top: 30px;
}
.down_2 li>strong {
    color: #343434;
    font-size: 21px;
    font-weight: normal;
}
.down_2 li:first-child>strong {
    color: #DC1400;
}
.down_2 li:first-child {
    color: #DC1400;
    margin-top: 0;
}
.down_2 li {
    border-bottom: 1px solid #E0E0E0;
    font-size: 12px;
    line-height: 1.6;
    padding: 0 0 30px 36px;
    margin-top: 30px;
}
</style>
</head>
<body>
<div class="main">
  <div class="main-content">
	<div class="content1">

        <div class="title-wrap">
            <h2>입점절차</h2>
            <p>등록비용없이, 쉽고 편리하게 입점하실 수 있어요</p>
        </div>

        <div class="down_1">
          <p>문의를 남겨 주시면, 담당자가 전화 드리고 가게 등록을 도와드릴게요.</p>
			<img src="../../owner/ownerimage/procedure_way.png">

          <div class="btn_wrap">
            <a href="requestForm.do" class="btn">온라인 입점신청</a>
          </div>
        </div>


        <div class="down_2">
          <ul>
            <li>
              <img src="../../owner/ownerimage/ico-li1.png">
              <strong>사장님이 준비하실 것</strong>
              <p> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;계약을 위해 <strong>사업자 등록증 사본</strong>과 음식 메뉴와 가격이 기입된 <strong>최신 전단지</strong>가 필요합니다.</p>
            </li>
            <li>
             <img src="../../owner/ownerimage/ico-li2.png">
              <strong>조기요가 할 일</strong>
              <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;고객이 요기요 앱에서 메뉴를 선택하고 주문할 수 있도록, 전단지의 메뉴와 가격을 입력해 드립니다.<br>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;또한 원하시는대로 배달가능지역을 설정해드립니다.</p>
            </li>
            <li>
             <img src="../../owner/ownerimage/ico-li2.png">	
              <strong>이제 조기요에서 주문이 들어옵니다!</strong>
              <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;계약서 작성 후 약 2주가 지나면 사장님이 설정하신 배달 가능 지역에 있는 고객들에게 음식점이 노출됩니다.<br>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;다양한 접수 방식으로 요기요에서 들어온 주문을 받고 배달하시면 됩니다.</p>
            </li>
          </ul>
          <img src="../../owner/ownerimage/img-j3-4.png" >
        </div>
    </div>
 </div>
</div>
</body>
</html>
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
    $('#content').keyup(function (e){
        var content = $(this).val();        
        $('#counter').html("("+ content.length+" / 400자)");    //글자수 실시간 카운팅

    });
    $('#content').keyup();
});
</script>
<!-- ReadMe 각 메뉴는 R,L등 사이즈없이 하나로 통일 하였음 따라서 메뉴별 가격만 추가 -->
<style type="text/css">
.contents-area {
	margin-left: 180px;
}
/*media screen*/
.menu-container .edit-menu-detail {
    padding: 0 15px;
}
/*media screen*/
.menu-container .input-order-intro-area {
    padding-top: 28px;
}
/*media screen*/
.menu-container .input-order-intro-area .info-list {
    margin-bottom: 16px;
}
/*media screen*/
ol, ul {
    list-style: none;
}
/*media screen*/
.menu-container .input-order-intro-area .info-list li::before {
    content: "";
    position: absolute;
    display: block;
    top: 7px;
    left: 0px;
    width: 3px;
    height: 3px;
    background: #bdbdbd;
    border-radius: 50%;
}
/*media screen*/
.menu-container .input-order-intro-area .info-list li {
    position: relative;
    padding-left: 9px;
    color: #898989;
    font-size: 12px;
    line-height: 18px;
    letter-spacing: -0.4px;
}
/*media screen*/
.menu-container .input-order-intro-area .info-list li + li {
    margin-top: 6px;
}
/*media screen*/
.menu-container .input-order-intro-area :-ms-input-placeholder.input-order-intro {
    color: #888888 !important;
}
/*media screen*/
.menu-container .input-order-intro-area .input-order-intro {
    padding: 20px 15px;
    width: 488px;
    min-height: 136px;
    -webkit-box-sizing: border-box;
    box-sizing: border-box;
    border: 1px solid #dddddd;
    font-size: 16px;
    line-height: 25px;
    color: #000000;
    resize: none;
}
/*media screen*/
.menu-container .input-order-intro-area .writing-count {
	margin-left: 400px;
    font-size: 14px;
    line-height: 22px;
    letter-spacing: -0.4px;
    color: #888888;
    text-align: right;
}
/*media screen*/
.menu-container .input-order-intro-area .msg-warning {
    color: #f52926;
    font-size: 14px;
    line-height: 22px;
}


</style>
</head>
<body>
<div class="menu-container">
<div class="contents-area">
<div class="menu-manager">
  <div class="edit-menu-detail">
    <div class="input-order-intro-area">
      <ul class="info-list">
        <li>
          등록된 주류 메뉴가 없으면 주류 제공과 관련된 내용은 주문 안내에 입력하실 수 없습니다.
        </li>
        <li>
          단어의 선택이나 표현이 적절한지 다시 한번 더 체크해주세요.
        </li>
        <li>
          특수문자는 ~ ! # $ % * ( ) - _ + : ' &lt; &gt; , . / \ → ∙ ※ ☆ ★ &amp; 만 입력 가능합니다.
        </li>
      </ul>
      <textarea class="input input-order-intro" id="content" maxlength="400" placeholder="주문 시 유의사항을 입력해주세요." row="5"></textarea>
      <span class="writing-count" id="counter">(<b class="counting">0</b> / 400자)</span>
    </div>
  </div>
</div>
</div>
</div>
</body>
</html>
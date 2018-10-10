<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.info-list {
 color: #353535;
}
.input-order-intro {
    padding: 20px 15px;
    width: 488px;
    min-height: 136px;
    -webkit-box-sizing: border-box;
    box-sizing: border-box;
    border: 1px solid #dddddd;
    font-size: 16px;
    line-height: 25px;
    color: #353535;
    resize: none;
}

</style>
</head>
<body>
    <div class="input-order-intro-area">
      
      <ul class="info-list">
        <li> 등록된 주류 메뉴가 없으면 주류 제공과 관련된 내용은 주문 안내에 입력하실 수 없습니다. </li>
        <li>단어의 선택이나 표현이 적절한지 다시 한번 더 체크해주세요. </li>
        <li> 특수문자는 ~ ! # $ % * ( ) - _ + : ' &lt; &gt; , . / \ → ∙ ※ ☆ ★ &amp; 만 입력 가능합니다.</li>
      </ul>
      
      <textarea class="input input-order-intro" id="order-intro" data-ref="orderIntro" row="5" maxlength="400" placeholder="주문 시 유의사항을 입력해주세요."></textarea>
    </div>
</body>
</html>
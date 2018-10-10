<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="../../js/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
function add_item(){
    // pre_set 에 있는 내용을 읽어와서 처리..
    var div = document.createElement('div');
    div.innerHTML = document.getElementById('pre_set').innerHTML;
    document.getElementById('field').appendChild(div);
}

function remove_item(obj){
    // obj.parentNode 를 이용하여 삭제
    document.getElementById('field').removeChild(obj.parentNode);
}
</script>

<!-- ReadMe 각 메뉴는 R,L등 사이즈없이 하나로 통일 하였음 따라서 메뉴별 가격만 추가
	표시 숨김설정은 앱과 관련있는 기능으로 삽입하지않음
 -->
<style type="text/css">
body {
	font-family: "Nanum Barun Gothic","APPLE SD Gothic NEO",sans-serif,helvetica;
}
.contents-area {
    float: left;
    border-left: 1px solid #ccc;
    background: #fff;
   	overflow-x:hidden;
   	overflow-y: auto;
    width: 535px;
    max-height: 700px;
}
.contents-area .edit-menu-detail .menu-info-header {
    padding-top: 8px;
}
.contents-area .edit-menu-detail .menu-info-header .input-menu-name {
    margin: 10px 0 4px;
    padding: 8px 10px 7px;
    width: 100%;
    border: 1px solid #eee;
    font-size: 28px;
    color: #000;
    line-height: 33px;
}
.contents-area input[type=text]{
    padding: 15px 10px;
    width: 100%;
    vertical-align: middle;
    font-size: 16px;
    color: #000;
    border: 1px solid #ddd;
    -webkit-box-sizing: border-box;
    box-sizing: border-box;
}
.menu-info-header.desc {
    margin: 7px 0 6px;
    font-size: 16px;
    color: #000;
    line-height: 22px;
}

.edit-menu-detail .option-group {
    padding: 0 0 12px;
    border-top: 1px solid #ececec;
}
.edit-menu-detail .option-tit {
    padding: 24px 0 5px;
}
.edit-menu-detail .option-tit h3 {
    float: left;
    width: 55%;
    font-weight: bold;
    font-size: 18px;
    color: #000;
    line-height: 25px;
}

button {
    outline: none;
    border: none;
    background: none;
    border-radius: 0;
}

ol, ul {
    list-style: none;
}


.link_underline {
    text-decoration: underline;
}
.edit-menu-detail .option-group {
    padding: 0 0 12px;
    border-top: 1px solid #ececec;
}
.edit-menu-detail .option-group .option-tit {
    padding: 24px 0 5px;
}
.edit-menu-detail .option-group .option-tit h3 {
    float: left;
    width: 55%;
    font-weight: bold;
    font-size: 18px;
    color: #000;
    line-height: 25px;
}
.edit-menu-detail .option-group .option-list li {
    margin-top: 10px;
    padding: 9px 0;
    font-size: 16px;
    color: #000;
    line-height: 22px;
}
.edit-menu-detail .option-group .price-set li input[type=text] {
    width: 175px;
    letter-spacing: -0.5px;
}

.check-value {
    padding: 10px;
    width: 175px;
    height: 50px;
    font-size: 16px;
    color: #000;
    -webkit-box-sizing: border-box;
    box-sizing: border-box;
    margin-left: 20px;
}
.edit-menu-detail .option-group .price-set li .input-wrap .text{
    padding: 10px;
    width: 130px;
    height: 50px;
    font-size: 16px;
    color: #000;
    -webkit-box-sizing: border-box;
    box-sizing: border-box;
    /* margin-left: 300px; */
  	margin-left: 50px;
}
.check-price {
    margin: 0 10px;
    padding-right: 20px;
}

.check-price {
    width: 130px;
    height: 50px;
    font-size: 16px;
    color: #000;
    -webkit-box-sizing: border-box;
    box-sizing: border-box;
    /* margin-left: 300px; */
  	margin-left: 50px;
}

.edit-menu-detail .option-group .price-set li .text + .text {
    margin: 0 10px;
    padding-right: 20px;
}
.edit-menu-detail .option-group .option-list li .text + .text {
    margin-left: 10px;
    padding-right: 30px;
}
.edit-menu-detail .option-group .price-set li .input-price {
    display: inline-block;
    margin-left: -40px;
    width: 32px;
    font-size: 16px;
    color: #888;
}
.edit-menu-detail .option-group .price-set li:first-child .btn-del-option {
    display: none;
}
.edit-menu-detail .option-group .price-set li .btn-del-option {
    padding: 14px 0 13px 10px;
    vertical-align: middle;
    font-size: 16px;
    color: #f52926;
}
.btn-del-option {
    padding: 16px 10px 13px;
    vertical-align: middle;
    font-size: 16px;
    color: #f52926;
}
.edit-menu-detail .btn-add-price::before {
    content: "";
    display: inline-block;
    margin-top: -3px;
    margin-right: 5px;
    vertical-align: middle;
}
.edit-menu-detail .btn-add-price {
    padding: 10px 0;
    font-size: 16px;
    font-weight: bold;
    color: #597ee5;
}
.edit-menu-detail :last-of-type.option-group {
    border-bottom: 1px solid #ececec;
}
.edit-menu-detail .option-group {
    padding: 0 0 12px;
    border-top: 1px solid #ececec;
}
.edit-menu-detail .option-group .option-tit {
    padding: 24px 0 5px;
}
.edit-menu-detail .option-group .option-tit h3 {
    float: left;
    width: 55%;
    font-weight: bold;
    font-size: 18px;
    color: #000;
    line-height: 25px;
}
.edit-menu-detail .option-group .option-tit {
	margin-top: 20px;
}
.edit-menu-detail .option-group .option-tit .msg-option {
    padding-top: 2px;
    width: 45%;
    float: right;
    text-align: right;
    font-size: 14px;
    color: #888;
    line-height: 19px;
}
.edit-menu-detail .option-group .option-list{
	margin-top: 20px;
	margin-bottom: 20px;
}
.edit-menu-detail .option-group .option-list li .item {
    float: left;
    width: 65%;
    min-height: 1px;
}
/*media screen*/
.edit-menu-detail .option-group .option-list li .option-price {
    float: left;
    width: 35%;
    text-align: right;
}
.soldout-tip-open {
	margin-bottom: 30px;
}
.option-group .btn-add {
    padding: 10px 0;
    font-size: 16px;
    font-weight: bold;
    color: #597ee5;
}
input[type=button] {
    outline: none;
}
input[type=button]  {
    border: none;
    background: none;
    border-radius: 0;
}

input[type=submit] {
    outline: none;
}
input[type=submit]  {
    border: none;
    background: none;
    border-radius: 0;
}
.btn-add-price {
    padding: 10px 0;
    font-size: 16px;
    font-weight: bold;
    color: #597ee5;
    margin-left: 20px;
}

.btn .btn-round {
    min-width: 150px;
    padding: 10px 20px;
    border-width: 1px;
    border-style: solid;
    background: transparent;
    border-radius: 20px;
    border-color: #e61c13;
    margin-top: 20px;
    margin-left: 20px;
}
.addmenu .option-list li .item {
    float: left;
    width: 65%;
    min-height: 1px;
}
ol, ul {
    list-style: none;
}
.addmenu .option-list li .option-price {
    float: left;
    width: 35%;
    text-align: right;
    
}
.btn-del-menu {
    margin-top: 10px;
    padding: 13px 0 20px;
    font-size: 16px;
    font-weight: bold;
    color: #597ee5;
}
</style>
</head>
<body>

<div class="contents-area">
	<div class="menu-manager">
	<form action="menuaddmenu.do" method="post">
	<div class="edit-menu-detail">
    	<div class="menu-info-header">
			<div class="input-wrap">
				<input name="menu" class="input-menu-name check-value" type="text" maxlength="101"  value="${menu}">
			</div>
			<!-- <p class="vali-txt type-err">특수문자 ( @, ^, |, “ ) 은(는) 입력이 불가능합니다.</p> -->
			
			<c:if test="${menu_group == ownerMenuDTO.menu_group}">
				<p class="desc"><input type="text" name="menu_explain" value="${ownerMenuDTO.menu_explain}"></p>
			</c:if>
			
			<c:if test="${menu_group == ownerSideMenuDTO.menu_group}">
				<p class="desc"><input type="text" name="menu_explain" value="${ownerSideMenuDTO.menu_explain}"></p>
			</c:if>
		</div>
			<input type="hidden" name="menu_group" id="menu_group" value="${ownerMenuDTO.menu_group}">
			<input type="hidden" name="seq" id="seq" value="${seq}">
			<input type="hidden" name="imgName" id="imgName" value="${ownerMenuDTO.imgName}">
			<input type="hidden" name="soldout" id="soldout" value="${ownerMenuDTO.soldout}">
		<div>
			<c:if test="${menu_group == ownerMenuDTO.menu_group}">
			<img src="../../imgName/${ownerMenuDTO.imgName}" style="margin-left: 150px;" width="200px" height="200px">
			</c:if>	
			<c:if test="${menu_group == ownerSideMenuDTO.menu_group}">
				<img src="../../imgName/${ownerSideMenuDTO.imgName}" style="margin-left: 150px;" width="200px" height="200px">
			</c:if>		
		</div>	

		<div class="option-group price-container">
			<div>
				<div class="option-tit">
					<h3>가격</h3>
				</div>
				<ul class="option-list price-set">

					<li>
						<div class="input-wrap">
							<c:if test="${menu_group == ownerMenuDTO.menu_group}">
								<input type="text" name="price" style="width: 130px;" lang="en-150" type="tel" placeholder="5,000" value="${ownerMenuDTO.price}">
							<span class="input-price">원</span>
							</c:if>
							<c:if test="${menu_group == ownerSideMenuDTO.menu_group}">
								<input type="text" name="price" style="width: 130px;" lang="en-150" type="tel" placeholder="5,000" value="${ownerSideMenuDTO.price}">
							</c:if>
						</div>
					</li>
				</ul>
				<!-- <button class="btn-add-price" type="button">가격 추가</button> -->
			</div>
		</div>
		<div class="option-group">
			<div class="option-tit">
				<h3>토핑 추가선택</h3>
			 	<span class="msg-option">5개 선택 가능</span>
			</div>
			<div class="addmenu">
				<ul class="option-list">
					<c:if test="${menu_group == ownerMenuDTO.menu_group}">
					<c:forEach var="ownermenuDTO" items="${list3}">
							<li>
								<input disabled="disabled" type="text" name="addmenu" value="${ownermenuDTO.addmenu}" class="item">
							  	<input disabled="disabled" type="text" name="addmenu_price" value="${ownermenuDTO.addmenu_price}" class="option-price">
							</li>
					</c:forEach>
						<li>
						<div id="pre_set" style="display:none">
	   					  <input type="text" name="input_addmenu" style="float: left; width: 65%; min-height: 1px;"> 
	   					  <input type="text" name="input_addmenu_price" style="float: left; width: 35%; text-align: right;">
	   					  <input type="button" value="삭제" onclick="remove_item(this)">						
						</div>
							<div id="field"></div>
						<li>
							<input type="button" value="추가 " onclick="add_item()"><br>
							<div style=" margin-top: 20px; margin-left: 200px; background: #dcdcdc; color: white; text-align: center;
							height: 50px; width:150px; padding-top: 10px; font-size: 20px;"><input type="submit" value="추가"></div>
						</li>
					</c:if>
					<c:if test="${menu_group == ownerSideMenuDTO.menu_group}">
						<c:url var="delete" value="sidemenuDelete.do">
							<c:param name="menu" value="${menu}"></c:param>
							<c:param name="seq" value="${seq}"></c:param>
							<c:param name="soldout" value="${ownerSideMenuDTO.soldout}"></c:param>
						    <c:param name="menu_group" value="${ownerSideMenuDTO.menu_group}"></c:param>
						</c:url>
						<a class="sp-menus-del-menu btn-del-menu" href="${delete}">이 메뉴 삭제</a>
					</c:if>	
				</ul>
			</div>
		</div>
		</div>
		</form>
		</div>
	</div>

</body>
</html>
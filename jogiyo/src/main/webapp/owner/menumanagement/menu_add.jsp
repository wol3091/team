<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
html, body, div, span, applet, object, iframe, h1, h2, h3, h4, h5, h6, p, blockquote, pre, a, abbr, acronym, address, big, cite, code, del, dfn, em, img, ins, kbd, q, s, samp, small, strike, strong, sub, sup, tt, var, b, u, i, center, dl, dt, dd, ol, ul, li, fieldset, form, label, legend, table, caption, tbody, tfoot, thead, tr, th, td, article, aside, canvas, details, embed, figure, figcaption, footer, header, hgroup, menu, nav, output, ruby, section, summary, time, mark, audio, video {
    margin: 0;
    padding: 0;
    border: 0;
    font-size: 100%;
    font: inherit;
    vertical-align: baseline;
}
body {
	font-family: "Nanum Barun Gothic","APPLE SD Gothic NEO",sans-serif,helvetica;
}
.contents-area {
    overflow-y: auto;
    float: left;
    width: 520px;
    height: 100%;
    border-left: 1px solid #ccc;
    background: #fff;
    -webkit-box-sizing: border-box;
    box-sizing: border-box;
}
.addmenu {
	padding: 13px 20px 12px; 
    font-size: 20px;
    color: #666;
    /* background: #f4f4f4; */
   /*  border-bottom: 1px solid black; */
}

.add-menu {
    position: absolute;
    top: 98px;
    overflow-y: auto;
    background: #fff;
}
.menu h3{
    float: left;
    width: 55%;
    font-weight: bold;
    font-size: 18px;
    color: #000;
    line-height: 25px;
}
select{
   width: 350px;
   padding: .8em .5em;
   font-family: inherit;
   background: url(https://farm1.staticflickr.com/379/19928272501_4ef877c265_t.jpg) no-repeat 98% 50%;
   border-radius: 0px;
   -webkit-appearance: none;
   -moz-appearance: none;
   appearance: none;
   margin-left: 20px;
   margin-top: 30px;
   border: 1px solid #ddd;
}
.input {
   width: 350px;
   height: 50px;
   margin-left: 20px;
   margin-top: 20px;
   border: 1px solid #ddd;
}
textarea {
   width: 350px;
   height: 100px;
   margin-left: 20px;
   margin-top: 20px;
   border: 1px solid #ddd;
}
.price {
    
   margin-top: 30px;
   border-bottom: 
}
.image {
   margin-top: 30px;
}
.add-btn-area button {
    margin: 0 7px;
    padding: 15px 40px 14px;
    font-size: 16px;
    color: #888;
    border-radius: 50px;
    border: 1px solid #aaa;
}
.add-btn-area {
   margin-left: 200px;
   margin-top:	20px;
   margin-bottom: 20px;
}

.add-btn-area .btn-save {
    color: #597ee5;
    border-color: #7094fa;
}
.imageAdd {
   width: 350px;
   height: 30px;
   margin-left: 20px;
   margin-top: 40px;
}
.filebox .upload-name {
	margin-top: 20px;
	margin-left: 20px;
    width: 300px;
    height: 32px;
    line-height: 30px;
    border: 1px solid #ccc;
    font-size: 12px;
    padding: 0 5px;
    vertical-align: middle;
}
.filebox label {
	margin-top: 20px;
    display: inline-block;
    padding: 0 10px;
    height: 30px;
    font-size: 12px;
    font-weight: normal;
    color: #646464;
    border: 1px solid #888;
    background-color: #fff;
    box-shadow: none;
    text-decoration: none;
    margin-left: 3px;
    line-height: 30px;
    vertical-align: middle;
}
input[type='file'] {
    font-size: 12px;
    padding: 0 5px;
    /* -webkit-box-sizing: border-box; */
    -moz-box-sizing: border-box;
    box-sizing: border-box;
}

.filebox input[type='file'] {
    position: absolute;
    width: 1px;
    height: 1px;
    padding: 0;
    margin: -1px;
    overflow: hidden;
    clip: rect(0px, 0px, 0px, 0px);
    border: 0;
}
</style>
<script type="text/javascript" src="../../js/jquery-3.3.1.min.js"></script>
<script type="text/javascript">

$(document).ready(function(){ 
	var fileTarget = $('.filebox .upload-hidden'); 
	fileTarget.on('change', function(){ 
		// 값이 변경되면 
		if(window.FileReader){
		// modern browser 
		var filename = $(this)[0].files[0].name; 
	} else { // old IE 
		var filename = $(this).val().split('/').pop().split('\\').pop();
	// 파일명만 추출 
	}
	// 추출한 파일명 삽입
	$(this).siblings('.upload-name').val(filename); 
	}); 
	
}); 

$(function() {
    $('.content').keyup(function (e){
        var content = $(this).val();        
        $('.counter').html("("+ content.length+" / 1000자)");    //글자수 실시간 카운팅

    });
    $('.content').keyup();
});
</script>
</head>
<body>
<div class="content-area">
   <form name="addMenu" action="menu_addResult.do" method="post" enctype="multipart/form-data">
      <div class="addmenu">
         <h2 class="btn-addmenu">새 메뉴 추가</h2>
      </div>
      <div class="menu"><br>
       <h3>메뉴 그룹</h3><br>
      </div>
      <input type="hidden" name="soldout" id="soldout" value="n">
      <input type="hidden" name="seq" id="seq" value="${seq}">
      <input type="hidden" name="category_menu" id="category_menu" value="${category_menu}">
      <div class="right">
         <select name="menu_group" id="menu_group">
            <option value="메인">메인 메뉴</option>
            <option value="사이드">사이드 메뉴</option>
         </select>
        </div>
      <div class="menu"><br>
       <h3>메뉴명</h3><br>
      </div>
      <input type="text" class="input" name="menu" id="menu">
      <div class="menu"><br>
       <h3>음식설명</h3><br>
      </div>
      <textarea name="menu_explain" id="menu_explain" placeholder="예)맛있는 조기요양념치킨" style="overflow: hidden; background: #fff; margin-left: 20px; margin-top: 10px;" maxlength="1000" class="content"></textarea>
      <span class="counter">(<b class="counting">0</b> / 10000자)</span>
      <div class="menu">
       <h3 class="price">가격</h3><br>
      </div>
      <input type="text" class="input" name="price" id="price">
      <div class="menu">
       		<h3 class="image">이미지</h3><br>
      </div>
      <div class="filebox">
      	<input class="upload-name" value="파일선택" disabled="disabled">
      	<label for="image">찾아보기</label>
      	<input class="upload-hidden" type="file" accept=".gif, .jpg, .png" name="image" id="image">
      </div>
      <div class="add-btn-area">
            <button class="btn-cancel" type="button">취소</button>
            <button class="btn-save" type="submit">추가</button>
         </div>
   </form>
</div>
</body>
</html>
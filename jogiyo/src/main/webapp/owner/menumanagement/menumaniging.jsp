<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
/*media screen*/
html, body, div, span, applet, object, iframe, h1, h2, h3, h4, h5, h6, p, blockquote, pre, a, abbr, acronym, address, big, cite, code, del, dfn, em, img, ins, kbd, q, s, samp, small, strike, strong, sub, sup, tt, var, b, u, i, center, dl, dt, dd, ol, ul, li, fieldset, form, label, legend, table, caption, tbody, tfoot, thead, tr, th, td, article, aside, canvas, details, embed, figure, figcaption, footer, header, hgroup, menu, nav, output, ruby, section, summary, time, mark, audio, video {
    margin: 0;
    padding: 0;
    border: 0;
    font-size: 100%;
    font: inherit;
    vertical-align: baseline;
}
/*media screen*/
.main-content {
    position: relative;
    width: 980px;
    float: left;
    z-index: 10;
}
.main-content {
   
}

/*media screen*/
.contents-header h1 {
    padding: 20px 0 15px;
    font-size: 28px;
    line-height: 1.5;
    font-weight: 700;
}
/*media screen*/
article, aside, details, figcaption, figure, footer, header, hgroup, menu, nav, section {
    display: block;
}
.shop-list-wrap {
    overflow: hidden;
    margin-top: 25px;
}

/*media screen*/
.shop-list-wrap .shop-list {
    float: left;
    width: 640px;
}
/*media screen*/
.shop-list-wrap .use-info {
    float: right;
    width: 300px;
}
/*media screen*/
.shop-list-wrap .use-info .guide {
    margin-bottom: 30px;
    padding: 26px 20px 8px;
    border-bottom: 1px solid #ddd;
    background: #fff;
    -webkit-box-sizing: border-box;
    box-sizing: border-box;
}
/*media screen*/
.shop-list-wrap .use-info .guide h3 {
    margin-bottom: 17px;
    font-size: 18px;
    font-weight: bold;
    color: #444;
}
/*media screen*/
.shop-list-wrap .use-info .guide ol {
    padding-left: 15px;
}
/*media screen*/
.shop-list-wrap .use-info .guide li {
    list-style-type: decimal;
    margin-bottom: 17px;
    font-size: 14px;
    line-height: 1.6;
    color: #232323;
}

/*media screen*/
.shop-list-wrap .shop-list li .shop-cate {
    font-size: 14px;
    color: #888;
}
/*media screen*/
.shop-list-wrap .shop-list li {
    position: relative;
    margin-bottom: 13px;
    padding: 16px 300px 16px 20px;
    line-height: 1.45;
    border-bottom: 1px solid #ddd;
    background: #fff;
    -webkit-box-sizing: border-box;
    box-sizing: border-box;
}
.shop-list-wrap .shop-list li .shop-name {
    margin-top: 4px;
    font-size: 18px;
    font-weight: bold;
    color: #000;
}
.shop-list-wrap .shop-list li .shop-address {
    font-size: 14px;
    color: #000;
}
.shop-list-wrap .shop-list li .btn-area {
    position: absolute;
    top: 30px;
    right: 20px;
}
.btn-in-menu {
    display: inline-block;
    margin-left: 7px;
    padding: 11px 0 11px;
    width: 132px;
    font-size: 16px;
    line-height: 18px;
    text-align: center;
    vertical-align: middle;
    -webkit-box-sizing: border-box;
    box-sizing: border-box;
}

/*media screen*/
.menu-manager button {
    outline: none;
}
/*media screen*/
.btn-in-menu.btn-blue {
    color: #fff;
    background: #7094fa;
}

button {
    border: none;
    background: none;
    border-radius: 0;
}


</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form>
<div class="main-content">
	<div class="menu-manager menu-manager-container"><div>
	  <div class="contents-header">
	    <h1>메뉴관리</h1>
	    <p>메뉴관리를 원하시는 업소를 선택해주세요.</p>
	  </div>
	  <div class="shop-list-wrap">
	  <ul class="shop-list">
		  <li>
			  <p class="shop-cate">${requestDTO.seq}</p>
			  <p class="shop-name">${requestDTO.restaurant_name}</p>
			  <p class="shop-address">${requestDTO.restaurant_address2}</p>
		  <div class="btn-area">
		    <button onclick="location.href='menumanaging2.do?seq=${seq}'" class="btn-in-menu btn-blue link-menus" type="button">메뉴 관리</button>
		  </div>
		  </li>
	  </ul>
	    <div class="use-info">
	      <div class="guide">
	        <h3>메뉴관리 간단사용법</h3>
	        <ol>
	          <li>업소를 선택하세요.</li>
	          <li>메뉴를 조회하거나 수정할 수 있습니다.</li>
	          <li>상단의 ‘저장’ 버튼을 누르시면, 수정하신<br>내용이 배달의민족 앱에 반영됩니다.<br><span>최대 15분까지 소요될 수 있습니다.</span></li>
	        </ol>
	      </div>
	      
	    </div>
	  </div>
	</div>
	</div>
</div>
</form>
</body>
</html>
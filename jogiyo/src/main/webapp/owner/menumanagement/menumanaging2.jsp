<%@page import="ownermenu.bean.OwnerMenuDTO"%>
<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt" prefix="fmt"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
function open(link) {
 window.open(link);
}

</script>
<!-- ReadMe 앱에 추가는 앱이 존재하여야하므로 헤더부분 버튼을 삭제하였음. -->
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
body {
    font-size: 15px;
    line-height: 1.67em;
    color: #232323;
    font-family: "Nanum Barun Gothic","APPLE SD Gothic NEO",sans-serif,helvetica;
}
.ceo-wrapper {
    min-width: 1235px;
    width: 1235px;
    margin: auto;
}
/*media screen*/
.main-content {
    position: relative;
    width: 900px;
    float: left;
    border: 1px solid black;
    margin-top: 50px;
}
/*media screen*/
/* .menu-container {
    position: absolute;
    top: 50px;
    bottom: 80px;
    width: 882px;
}  */
/*media screen*/
.shop-info {
    position: relative;
    padding: 29px 200px 15px 30px;
    background: #333;
}
/*media screen*/
.menu-container .shop-info .shop-name {
    margin-bottom: 4px;
    font-size: 24px;
    color: #fff;
}
/*media screen*/
.menu-container .shop-info .shop-address {
    font-size: 16px;
    color: #fff;
}
/*media screen*/
.menu-container .menu-box {
    position: relative;
    overflow: hidden;
    margin-top: -98px;
    padding-top: 98px;
    -webkit-box-sizing: border-box;
    box-sizing: border-box;
    border-top: none;
}

/*media screen*/
.menu-container .list-area {
    overflow-y: auto;
    float: left;
    width: 360px;
    border: 1px solid #ddd;
    max-height: 700px;
}

/*media screen*/
.menu-container .edit-order-intro-area {
    padding-bottom: 8px;
    background: #dddddd;
}
/*media screen*/
.menu-container .btn-edit-order-intro {
    display: block;
    overflow: hidden;
    position: relative;
    padding: 13px 15px 12px;
    background: #f4f4f4;
    font-size: 16px;
    line-height: 25px;
    letter-spacing: -0.4px;
    cursor: pointer;
}

/*media screen*/
.menu-container .btn-edit-order-intro .order-intro dt {
    float: left;
    color: #000000;
    font-weight: bold;
}
/*media screen*/
.menu-container .edit-menu-top .btn-add-menu {
    padding: 18px 0 13px 15px;
    width: 100%;
    font-size: 16px;
    text-align: left;
    color: #597ee5;
    font-weight: bold;
    cursor: pointer;
}
/*media screen*/
.menu-container button {
    outline: none;
}
/*media screen*/
button {
    border: none;
    background: none;
    border-radius: 0;
}
/*media screen*/
.menu-container .edit-menu-group {
    margin-bottom: 10px;
}
/*media screen*/
.menu-container .group-tit {
    position: relative;
    padding: 14px 40px 9px 15px;
    font-weight: bold;
    word-break: break-all;
    font-size: 18px;
    color: #000;
    line-height: 25px;
    background: #fff;
    border-top: 1px solid #ddd;
    border-bottom: 1px solid #ddd;
}
/*media screen*/
/* .menu-container .group-tit + .inner-group {
    display: block;
} */
/*media screen*/
.menu-container .group-info {
    margin: 14px 15px 0;
    padding: 0 5px 10px;
    font-size: 13px;
    letter-spacing: -0.3px;
    color: #888;
    line-height: 19px;
    border-bottom: 1px solid #ddd;
}
/*media screen*/
ol, ul {
    list-style: none;
}

/*media screen*/
.menu-container .menu-list li {
    /* overflow: hidden; */
    position: relative;
    padding: 15px;
}

.menu-box {
	float: left;
	height: 800px;
	overflow-y: auto;
    float: left;
    width: 360px;
   
}

.menu-container .group-tit.hidden-menu {
    padding: 18px 50px 15px 15px;
    border-bottom: 1px solid #ddd;
    font-size: 16px;
    background-color: transparent;
}
.menu-container .menu-list li .hidden-menu-name {
    font-size: 15px;
    color: #888;
}

</style>
</head>
<body>
<div class="ceo-wrapper clearfix">
    <div class="main-content">
    	<div class="menu-container">
		  		<div class="header-shop">
	  				<div class="shop-info">
	  					<p class="shop-name">
	  						<span>${requestDTO.restaurant_name}</span>
					    </p>
						<p class="shop-address">
	    					<span>${requestDTO.restaurant_address2}</span>
	    					<span class="shop-cate">
    						<span>외식</span> 
    						<span>${requestDTO.seq}</span></span>
	  					</p>
					</div>
				 </div>
				<div class="menu-box">
				    <div class="list-area">
						<div class="edit-order-intro-area">
				        <a class="btn-edit-order-intro" role="button">
							<dl class="order-intro">
					            <dt onclick="location.href='menu_guide.do?seq=${seq}'">주문안내</dt>
					            <dd data-name="editShopOrderIntro" data-role="bind"></dd>
							</dl>
				        </a>
					</div>
				
				    <div class="edit-menu-top">
				        <a href="menu_add.do?seq=${seq}"><button class="sp-add btn-new-primary btn-add-menu" type="button">새 메뉴 추가</button></a>
				        <div class="select-button">
				    	</div>
				    </div>
				    <div class="group-wrap">
				    <section class="edit-menu-group first-group">
					    <h2 class="group-tit">메인메뉴</h2>
					  	<div class="inner-group">
					        <p class="group-info">요청할 것이 있으면<br><a class="link_underline" href="modifyInfo.do" target="_blank">정보 수정 요청</a>을 통해 요청해주세요.</p>
					  		<div class="menu-list-wrap">
					  			<ul class="menu-list menu-item-wrap">
					  				<c:forEach var="ownermenuDTO" items="${list}">
									<li class=" list-on">
										<c:if test="${ownermenuDTO.soldout eq 'n'}">
						      				<div class="check-wrap">
						        					<c:url value="menu_detail.do" var="menu">
						        						<c:param name="soldout" value="${ownermenuDTO.soldout}"></c:param>
						        						<c:param name="menu_group" value="${ownermenuDTO.menu_group}"></c:param>
						        						<c:param name="menu" value="${ownermenuDTO.menu}"></c:param>
						        						<c:param name="seq" value="${seq}"></c:param>
						        					</c:url>
						        					<span class="menu-name"><a  style="color: black;" href="${menu}">${ownermenuDTO.menu}</a></span>
						      				</div>
						      			</c:if>
					  				</li>
					  				
					  				</c:forEach>
					  			</ul>
					  		</div>
					 	</div>
					 	<h3 class="group-tit hidden-menu">품절메뉴<span class="sp-menus-toggle-check-s toggle-arr"></span></h3>
							<div class="inner-group">
						       <div class="hidden-menu-list-wrap">
						        	<ul class="menu-list menu-item-wrap">
						        	<c:forEach var="ownermenuDTO" items="${list}">							    
						        	<c:if test="${ownermenuDTO.soldout eq 'y'}">
										<li class=" list-on" data-menu-id="294416">
													<c:url value="menu_detail.do" var="menu">
						        						<c:param name="soldout" value="${ownermenuDTO.soldout}"></c:param>
						        						<c:param name="menu_group" value="${ownermenuDTO.menu_group}"></c:param>
						        						<c:param name="menu" value="${ownermenuDTO.menu}"></c:param>
						        						<c:param name="seq" value="${seq}"></c:param>
						        					</c:url>
										      <p class="hidden-menu-name"><span><a style="color: #888;" href="${menu}">${ownermenuDTO.menu}</a></span></p>
										  </li>
									</c:if>

									</c:forEach>
									<c:forEach var="ownersidemenuDTO" items="${list1}">	
						  
						        	<c:if test="${ownersidemenuDTO.soldout eq 'y'}">
										<li class=" list-on" data-menu-id="294416">
													<c:url value="menu_detail.do" var="menu">
						        						<c:param name="soldout" value="${ownersidemenuDTO.soldout}"></c:param>
						        						<c:param name="menu_group" value="${ownersidemenuDTO.menu_group}"></c:param>
						        						<c:param name="menu" value="${ownersidemenuDTO.menu}"></c:param>
						        						<c:param name="seq" value="${seq}"></c:param>
						        					</c:url>
										      <p class="hidden-menu-name"><span><a style="color: #888;" href="${menu}">${ownersidemenuDTO.menu}</a></span></p>
										  </li>
									</c:if>
									</c:forEach>
									</ul>
								</div>
						      </div>
					 	</section>
					 </div>
				
				
				<section class="edit-menu-group first-group">
				    <h2 class="group-tit">사이드 메뉴 </h2>
				    <div class="inner-group">
				     <div class="menu-list-wrap">
				      <ul class="menu-list menu-item-wrap">
				      	<c:forEach var="ownersidemenuDTO" items="${list1}">	
					    <li class=" list-on">
					    <c:if test="${ownersidemenuDTO.soldout eq 'n'}">
					      <div class="check-wrap">
		      				    <c:url value="menu_detail.do" var="sidemenu">
		      				    	<c:param name="soldout" value="${ownersidemenuDTO.soldout}"></c:param>
	        						<c:param name="menu_group" value="${ownersidemenuDTO.menu_group}"></c:param>
	        						<c:param name="menu" value="${ownersidemenuDTO.menu}"></c:param>
	        						<c:param name="seq" value="${seq}"></c:param>
	        					</c:url>
					          <span class="menu-name"><a style="color: black;" href="${sidemenu}">${ownersidemenuDTO.menu}</a></span>
					      </div>
					      </c:if>
					   </li>
					   </c:forEach>
					   </ul>
				  	  </div>
				    </div>
				    </section>
				  </div>
				
			</div>
		</div>
		<div class="contents-area">
			<c:if test="${detail != null}">
				<jsp:include page="${detail}"></jsp:include>	
			</c:if>
		</div>
	</div>
</div>

</body>
</html>
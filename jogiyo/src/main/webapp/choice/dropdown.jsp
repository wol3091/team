<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/reset.css">
<link rel="stylesheet" type="text/css" href="css/common.css">
<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="plugins/xdomain/jquery.xdomainajax.js"></script>
<script type="text/javascript">
$(function() {
	$(".select > a").click(function() {
	    $(this).next("ul").toggle();
	    return false;
	});
	
	$("div.select > ul > li").click(function() {
	    $(this).parent().hide().parent("div.select").children("a").text($(this).text());
	    $(this).prependTo($(this).parent());
	});

});

</script>
<style type="text/css">
	.select {position:relative; line-height:35px;}
	.select > a {display:block; border:1px solid #ccc; padding:0 8px; overflow:hidden;}
	.select > a:after,
	.select > ul > li:first-child:after {display:block; float:right;}
	.select > a:after {content:'▼';}
	.select > ul {position:absolute; width:100%; top:1px; background:#fff; display:none;}
	.select > ul > li {cursor:pointer; padding:0 8px; border:1px solid #ccc; border-top:0;}
	.select > ul > li:first-child:after {content:'▲';}
</style>
</head>
<body>
<div class="select">
    <a href="#">Select 1</a>
    <ul>
        <li>Select 1</li>
        <li>Select 2</li>
        <li>Select 3</li>
    </ul>
</div>
</body>
</html>
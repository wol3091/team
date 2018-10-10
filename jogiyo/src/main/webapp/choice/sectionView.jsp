<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
<script type="text/javascript" src="../../js/jquery-3.3.1.min.js"></script>
<script src="../js/bootstrap.min.js"></script>
<script src="../js/bootstrap.js"></script>

<!-- 나중에 파일로 욺기자 -->
<script type="text/javascript">

	var closeTest;	/* Xclose에 변수로 메인메뉴를 주려고 만듬 */
	var minTest=0;  /* 그거 잠깐 넣은거.. */
	var list_count=0; /* 그 주문표 리스트때문에 */
	var showNhide=0;  /* 안보이면 0 ,중간과정으로1,보이면 2*/
	var main_btn_ud = 0; /* 열린상태 0 닫은 상태 1 */
	var side_btn_ud = 1; 	/* 열린상태 0 닫은 상태 1 */
	var divX;
	var divY;
	$(document).ready(function() { 
		var divEl = $("#orderList");
		divX = divEl.offset().left;
		divY = divEl.offset().top;
		$('.testmin').tooltip();
	});
	 
	$(window).scroll(function(){
		var scrollT = $(this).scrollTop(); //스크롤바의 상단위치
        var scrollH = $(this).height();
		
        if(scrollT>divY) {
        	$("#orderList").css({position:'fixed'});
			$("#orderList").css({left:(divX-10)+'px'});  //여기다가 절대 위치 넣자 
			$("#orderList").css({top:'4px'});	//여기다간 그냥 딱 띄어질 높이만 넣자
		} 
        
        if(scrollT<=divY) {
        	$("#orderList").css({position:'static'});
			
		} 
        
        /* var bottom = $(window).height() - $("#scr_min").offset().top;
        
        if(bottom< -1100) {
        	alert("호잇");
        	$("#orderList").css({position:'fixed'});
			$("#orderList").css({left:(divX-10)+'px'});  //여기다가 절대 위치 넣자 
			$("#orderList").css({bottom:'500px'});	//여기다간 그냥 딱 띄어질 높이만 넣자
        } */
        
        
        /* 주문하기 있는 창으로 가져오기 */
        
	});

	$(document).ready(function() { 
		$('#viewSelection1').show();
		$('#viewSelection2').hide();
		$('#viewSelection3').hide();
		$('#side').hide();
		/* 잠시 show로 함 나중에 바꿔줘야한다. */
		$('.addMenuDiv ').hide();
		$('#leastOrderPrice').hide();
		$('#totalPrice').hide();
		$(".orderBox").hide();
		$("#slect_modal").hide();
	});	
	
	

	function menu() {
		 $('#viewSelection1').show();
		 $('#viewSelection2').hide();
		 $('#viewSelection3').hide();
		 $('#main').hide();
		 $('#side').hide();
		 $('#class_menu').css('cursor','auto');
		 $('#class_review').css('cursor','pointer');
		 $('#class_information').css('cursor','pointer');
		 
		 /* 빨간색 나오기 */
		 $('#class_review_bottom').css("background-color","white");
		 $('#class_menu_bottom').css("background-color","red");
		 $('#class_information_bottom').css("background-color","white");
	}
	function review() {
		$('#viewSelection2').show();
		$('#viewSelection1').hide();
		$('#viewSelection3').hide();
		$('#class_menu').css('cursor','pointer');
		$('#class_review').css('cursor','auto');
		$('#class_information').css('cursor','pointer');
		
		/* 빨간색 나오기 */
		 $('#class_review_bottom').css("background-color","red");
		 $('#class_menu_bottom').css("background-color","white");
		 $('#class_information_bottom').css("background-color","white");
	}
	function inform() {
		$('#viewSelection3').show();
		$('#viewSelection1').hide();
		$('#viewSelection2').hide();
		$('#class_menu').css('cursor','pointer');
		$('#class_review').css('cursor','pointer');
		$('#class_information').css('cursor','auto');
		
		/* 빨간색 나오기 */
		 $('#class_review_bottom').css("background-color","white");
		 $('#class_menu_bottom').css("background-color","white");
		 $('#class_information_bottom').css("background-color","red");
	}
	
	
	function showMain() {
		$('#main').toggle();
		/* 열린 상태 */
		if(main_btn_ud == 0) {
			$('#main_btn_ud').html('<img alt="" src="../image/btg_down.png">');
			main_btn_ud = main_btn_ud +1;
		} else {
			$('#main_btn_ud').html('<img alt="" src="../image/btg_up.png">');
			main_btn_ud = main_btn_ud -1;
		}
		
	}
	
	
	function showSide() {
		$('#side').toggle();
		if(side_btn_ud == 0) {
			$('#side_btn_ud').html('<img alt="" src="../image/btg_down.png">');
			side_btn_ud = side_btn_ud +1;
		} else {
			$('#side_btn_ud').html('<img alt="" src="../image/btg_up.png">');
			side_btn_ud = side_btn_ud -1;
		}
	}
	function xClose(mainMenu) {
		
		var regExp = /[\{\}\[\]\/?.,;:|\)*~`!^\-_+<>@\#$%&\\\=\(\'\"]/gi;
		var trim_mainMenu1 = mainMenu.replace(regExp, "");
		var trim_mainMenu = trim_mainMenu1.replace(/ /gi, ""); 
		
		$("input:radio[name="+trim_mainMenu+"]").prop('checked', false);
		$("input:radio[name="+trim_mainMenu+"]").eq(0).prop("checked", true); 
		$('.addMenuDiv ').hide();
		showNhide = 0;
		$('html, body').css({'overflow': 'visible', 'height': '100%'});
		$('html, body').off('scroll touchmove mousewheel');
	}
	
	/* 여기서는 가격만 조정이 되게 만든다. */
	function addMenu(menu,price,addmenu,addmenuPrice) {
		/* 띄어쓰기 제거 */
		
		/* 그 주문 하였습니다 그거 모달창 1개 만들자. */
		if(addmenu=="") {
			addOrderList(menu,price,addmenu,addmenuPrice);
		} else {
			
			closeTest = menu;
			showNhide = 1;
			
			
			
			var regExp = /[\{\}\[\]\/?.,;:|\)*~`!^\-_+<>@\#$%&\\\=\(\'\"]/gi;
			var replace_menu1 = menu.replace(regExp, "");
			var replace_menu = replace_menu1.replace(/ /gi, "");
			
			$('#'+replace_menu).show();
			/* 그전에 이미지의 가격을 불러오기 */
			var price = price;
			/* 만약 추가 메뉴가 필요하다면 ....
			나중에 메뉴 테이블에서 seq로 메뉴 꺼내오면 리스트가 되니깐 if 문에는 
			그냥 */
			$('html, body').css({'overflow': 'hidden', 'height': '100%'});
			$('html, body').on('scroll touchmove mousewheel', function(event) {
			  event.preventDefault();
			  event.stopPropagation();
			  return false;
			});
			
			/* $('body').addClass('stop-scrolling')
			$('html').css("overflow","hidden"); */
			
		}
		
	}
	
	
	function addOrderList(menu,price,addmenu,addmenuPrice) {
		/* 모달창도 잠깐 뜨고 사라지게 하자 */
		selectModal();
		list_count = list_count + 1;
		var regExp = /[\{\}\[\]\/?.,;:|\)*~`!^\-_+<>@\#$%&\\\=\(\'\"]/gi;
		var trim_menu1 = menu.replace(regExp, "");
		var trim_addmenu = addmenu.replace(regExp, "");
		var trim_menu = trim_menu1.replace(/ /gi, ""); 
		var trim_addmenu = trim_addmenu.replace(/ /gi, ""); 
		/* 추가메뉴 없는것 */
		if(addmenu=="") {
			if(list_count == 1) {
				$('#leastOrderPrice').show();
				$('#totalPrice').show();
				$(".price_l").hide();
				$(".orderBox").show();
				$(".endMin").css({'background': 'red'});
				$(".endMin").css('cursor','pointer');
				$(".orderBox").append(
					'<div style="text-align: left; padding: 20px;" id = "'
					+'sh'+trim_menu+trim_addmenu+
					'"><span name="order_menu">'
					+menu+
					'</span><br style="line-height: 30px;"><img style="cursor: pointer; width: 20px; height: 20px;" alt="" src="../image/엑스.JPG" onclick="removeId'+"('"+menu+addmenu+"')"+';">&nbsp; <span id="shPrice" name="shPrice">'
					+price+
					'</span>원<span style="float: right; "><img style="cursor: pointer; width: 20px; height: 20px;" alt="-" src="../image/마이너스.JPG" onclick="minus_btn'+"('"+menu+addmenu+"')"+';"> <span id="shCount" name="shCount">1</span><img style="cursor: pointer; width: 20px; height: 20px;" alt="+" src="../image/더하기1.JPG" onclick="plus_btn'+"('"+menu+addmenu+"')"+';"></span></div>'
				);
				clac_total(Number(price)+Number(addmenuPrice));  /* 총 가격 계산하기 */
			}
			
			if(list_count>=2) {
				
				/* 메뉴 중복을 확인하자. */
				var check_tf = $('#sh'+trim_menu+trim_addmenu).length ? true : false;   /* 중복되면 true로 나온다. */
				
				
				if(check_tf) {
					plus_btn(menu+addmenu);
					list_count = list_count - 1;
				} else {
					$(".orderBox").append(
							'<div style="text-align: left; padding: 20px; border-top: 0.5px solid #dcdcdc; " id = "'
							+'sh'+trim_menu+trim_addmenu+
							'"><span name="order_menu">'
							+menu+
							'</span><br style="line-height: 30px;"><img style="cursor: pointer; width: 20px; height: 20px;"  alt="" src="../image/엑스.JPG" onclick="removeId'+"('"+menu+addmenu+"')"+';">&nbsp; <span id="shPrice"  name="shPrice">'
							+price+
							'</span>원<span style="float: right; "><img style="cursor: pointer; width: 20px; height: 20px;"  alt="-" src="../image/마이너스.JPG" onclick="minus_btn'+"('"+menu+addmenu+"')"+';"> <span id="shCount"  name="shCount">1</span><img style="cursor: pointer; width: 20px; height: 20px;"  alt="+" src="../image/더하기1.JPG" onclick="plus_btn'+"('"+menu+addmenu+"')"+';"></span></div>'
						);
					clac_total(Number(price)+Number(addmenuPrice));  /* 총 가격 계산하기 */
				}
			}
		
			
		/* 추가메뉴 있는것 */	
		} else {
			num_price = Number(price);
			num_addmenuPrice = Number(addmenuPrice);
			total_price = num_price + num_addmenuPrice;
			if(list_count == 1) {
				$('#leastOrderPrice').show();
				$('#totalPrice').show();
				$(".price_l").hide();
				$(".orderBox").show();
				$(".endMin").css({'background': 'red'});
				$(".endMin").css('cursor','pointer');
				$(".orderBox").append(
						'<div style="text-align: left; padding: 20px;" id = "'
						+'sh'+trim_menu+trim_addmenu+
						'"><span name="order_menu">'
						+menu+
						' : '
						+addmenu+
						'</span><br style="line-height: 30px;"><img style="cursor: pointer; width: 20px; height: 20px;" alt="" src="../image/엑스.JPG" onclick="removeId'+"('"+menu+addmenu+"')"+';">&nbsp; <span id="shPrice" name="shPrice">'
						+total_price+
						'</span>원<span style="float: right; "><img style="cursor: pointer; width: 20px; height: 20px;" alt="-" src="../image/마이너스.JPG" onclick="minus_btn'+"('"+menu+addmenu+"')"+';"> <span id="shCount" name="shCount">1</span><img style="cursor: pointer; width: 20px; height: 20px;" alt="+" src="../image/더하기1.JPG" onclick="plus_btn'+"('"+menu+addmenu+"')"+';"></span></div>'
					);
				clac_total(Number(price)+Number(addmenuPrice));  /* 총 가격 계산하기 */
			}
			
			if(list_count>=2) {
				
				
				/* 메뉴 중복을 확인하자 */
				
				var check_tf = $('#sh'+trim_menu+trim_addmenu).length ? true : false;   /* 중복되면 true로 나온다. */
				
				if(check_tf) {
					plus_btn(menu+addmenu);
					list_count = list_count - 1;
				} else {
					$(".orderBox").append(
							'<div style="text-align: left; padding: 20px;  border-top: 0.5px solid #dcdcdc;" id = "'
							+'sh'+trim_menu+trim_addmenu+
							'"><span name="order_menu">'
							+menu+
							' : '
							+addmenu+
							'</span><br style="line-height: 30px;"><img style="width: 20px; height: 20px;" alt="" src="../image/엑스.JPG" onclick="removeId'+"('"+menu+addmenu+"')"+';">&nbsp; <span id="shPrice" name="shPrice">'
							+total_price+
							'</span>원<span style="float: right; "><img style="width: 20px; height: 20px;" alt="-" src="../image/마이너스.JPG" onclick="minus_btn'+"('"+menu+addmenu+"')"+';"> <span id="shCount" name="shCount">1</span><img style="width: 20px; height: 20px;" alt="+" src="../image/더하기1.JPG" onclick="plus_btn'+"('"+menu+addmenu+"')"+';"></span></div>'
					);
					clac_total(Number(price)+Number(addmenuPrice));  /* 총 가격 계산하기 */
				}
				
			}
		}
	}
	
	
	/* 그 추가메뉴 선택창이 나오면 화면이 포스되고 스크롤도 안되게  하고 화면 바깥을 누르면 그 화면이 꺼지게 한다. */
	$('html').click(function(e) { 
		if(showNhide==2) {
			if(!$('.addMenuDiv').has(e.target).length) {
				xClose(closeTest);
			}
		}
		if(showNhide==1) {
			if(!$('.addMenuDiv').has(e.target).length) {
				showNhide = 2;
			}
		} 
	});		
	
	function check_order(mainMenu,mainPrice,name) {
		
		/* 체크 부분 아직 안 됬다 적어도 1개는 체크가 되어있게하자 */
		/*  var radioVal = $('input[name="subMenu"]:checked').val(); */  /* 서브메뉴 가격 가져오기 */
		var regExp = /[\{\}\[\]\/?.,;:|\)*~`!^\-_+<>@\#$%&\\\=\(\'\"]/gi;
		var mainMenu1 = mainMenu.replace(regExp, "");
		var trim_mainMenu = mainMenu1.replace(/ /gi, ""); 
		
		
		 var radioVal = $("input[name="+trim_mainMenu+"]:checked").val();  /* 서브메뉴 가격 가져오기 */
		 var test = radioVal.split('-');
		 var addmenu = test[1];
		 var addmenuPrice = test[0];
		
		 xClose(mainMenu);
		 /* 이제 장바구니에 추가 */
		 addOrderList(mainMenu,mainPrice,addmenu,addmenuPrice);
	}
	
	/* 주문 완료 모달 나오기 */
	function selectModal() {
		$("#slect_modal").show();
		
		
		setTimeout(function() {
			$("#slect_modal").hide();
			}, 1500);
	}
	
	
	
	function removeId_t(id) {
		
		var regExp = /[\{\}\[\]\/?.,;:|\)*~`!^\-_+<>@\#$%&\\\=\(\'\"]/gi;
		var trim_id1 = id.replace(regExp, "");
		var trim_id = trim_id1.replace(/ /gi, ""); 
		
		
		var count = $('#sh'+trim_id).find('#shCount').text();
		
		
		$('#sh'+trim_id).remove();
		
		
		list_count = list_count-Number(count);
		
		if(list_count == 0) {
			
			$('#leastOrderPrice').hide();
			$('#totalPrice').hide();
			$(".price_l").show();
			$(".orderBox").hide();
			$(".endMin").css({'background': '#dcdcdc'});
			$(".endMin").css('cursor','auto');
		} 	
	}
	
	function removeId(id) {
		var regExp = /[\{\}\[\]\/?.,;:|\)*~`!^\-_+<>@\#$%&\\\=\(\'\"]/gi;
		var trim_id1 = id.replace(regExp, "");
		var trim_id = trim_id1.replace(/ /gi, "");  
		var price = $('#sh'+trim_id).find('#shPrice').text();
		var count = $('#sh'+trim_id).find('#shCount').text();
		
		
		var minus_price = Number(price)*(-1);
		
		$('#sh'+trim_id).remove();
		list_count = list_count-Number(count);
		
		if(list_count ==1) {
			var total_price;  /*clac 전 토탈 가격*/
			total_price = $('#total_price').text();
			real_total_price = minus_price+Number(total_price);
			$('#total_price').html(real_total_price);
		} else {
			var total_price;  /*clac 전 토탈 가격*/
			total_price = $('#total_price').text();
			real_total_price = minus_price+Number(total_price);
			$('#total_price').html(real_total_price);
		}
		
		
		
		
		
		if(list_count == 0) {
			
			$('#leastOrderPrice').hide();
			$('#totalPrice').hide();
			$(".price_l").show();
			$(".orderBox").hide();
			$(".endMin").css({'background': '#dcdcdc'});
			$(".endMin").css('cursor','auto');
		} 	
	}
	
	
	
	
	
	
	
	function plus_btn(id) {
		var regExp = /[\{\}\[\]\/?.,;:|\)*~`!^\-_+<>@\#$%&\\\=\(\'\"]/gi;
		var trim_id1 = id.replace(regExp, "");
		var trim_id = trim_id1.replace(/ /gi, ""); 
		list_count = list_count+1;
		
		var price = $('#sh'+trim_id).find('#shPrice').text();
		var count = $('#sh'+trim_id).find('#shCount').text();
		
		
		
		num_price = Number(price);
		num_count = Number(count);
		
		var per_price = num_price/num_count;
		clac_total(per_price);
		num_price = num_price+per_price;
		num_count = num_count+1 ;
		
		/* 이제 count는 +1 price는 개당 가격을 더하자 */
		$('#sh'+trim_id).find('#shPrice').html(num_price);
		$('#sh'+trim_id).find('#shCount').html(num_count);
		
	}
	
	function minus_btn(id) {
		var regExp = /[\{\}\[\]\/?.,;:|\)*~`!^\-_+<>@\#$%&\\\=\(\'\"]/gi;
		var trim_id1 = id.replace(regExp, "");
		var trim_id = trim_id1.replace(/ /gi, ""); 
		
		var price = $('#sh'+trim_id).find('#shPrice').text();
		var count = $('#sh'+trim_id).find('#shCount').text();
		
		
		num_price = Number(price);
		num_count = Number(count);
		
		var per_price = num_price/num_count;
		
		
		clac_total(-per_price);
		/* 순서때문에 아래로 내렸다. */
		list_count = list_count-1;
		num_price = num_price-per_price;
		num_count = num_count-1 ;
		
		/* 이제 count는 +1 price는 개당 가격을 더하자 */
		if(num_count == 0) {
			$('#sh'+trim_id).find('#shCount').html(num_count);
			removeId_t(id);
		} else {
			$('#sh'+trim_id).find('#shPrice').html(num_price);
			$('#sh'+trim_id).find('#shCount').html(num_count);
		}
	}
	
	function clac_total(price) {
		
		if(list_count ==1) {
			var delivery_price = $('#delivery_price').text();
			price = Number(price)+Number(delivery_price);
			$('#total_price').html(price);
		} else {
			var total_price;  /*clac 전 토탈 가격*/
			total_price = $('#total_price').text();
			real_total_price = Number(price)+Number(total_price);
			$('#total_price').html(real_total_price);
		}
	}
	
	function go_order() {
		
		var least_orderPrice = $('#least_orderPrice').text();
		total_price = $('#total_price').text();
		least_orderPrice = least_orderPrice.replace(",", "");
		if(list_count != 0 && Number(total_price) >= Number(least_orderPrice)) {
			var length = $("span[name='order_menu']").length;
			
			for(var i=0; i<length; i++) {
				var full_name = $("span[name='order_menu']:eq("+i+")").text();
				var shPrice	= $("span[name='shPrice']:eq("+i+")").text();	
				var shCount	= $("span[name='shCount']:eq("+i+")").text();	
				
				/* shCount = shCount.toString(); */
				
				$(".orderBox").append(
					'<input type="hidden" name="input_order_menu" value="'+full_name+'">'	
				);
				
				$(".orderBox").append(
						'<input type="hidden" name="input_order_price" value="'+shPrice+'">'
				);
				
				
				$(".orderBox").append(
						'<input type="hidden" name="input_order_count" value="'+shCount+'">'	
				);
				document.test_test.submit();
			}
			
		}
		
		if(list_count != 0 && Number(total_price) < Number(least_orderPrice)) {
			alert("최소 금액 이상 주문해 주십시오.^^");
		}
	}
	
	
	
		
</script>
<style type="text/css">
#sectionTest2 {
	width: 1000px;
	margin: auto;
	margin-bottom: 200px;
}



@import url(http://fonts.googleapis.com/earlyaccess/nanumgothic.css);


body {
    font-family: "Nanum Gothic", sans-serif;
}

.selection {
	width: 592px;
	height: 150px;
	display: inline-block;
	border: 1px solid #c8c8c8;
	background: white;
	
}
.selection2 {
	width: 400px;
	height: 100%;
	float: right;
}

.logo {
	width: 80px;
	height: 80px;
	margin-left: 5px;
}


table {
	margin-top: 10px;
	border-collapse: collapse;
}

#viewNav {
	width: 592px;
	background: white;
}

#viewNav > ul>li {
	float: left; 
	margin: auto;
	width:33%;
	text-align: center;
	
}
#center {
	border-left: 1px solid black;
	border-right: 1px solid black;
}

#viewSelection1 {
	width: 100%;
	border: 1px solid #bebebe;
	border-top: none;
}
#viewSelection2 {
	width: 100%;
	border: 1px solid #bebebe;
	border-top: none;
	
}
#viewSelection3 {
	width: 100%;
	border: 1px solid #bebebe;
	border-top: none;
}
#orderList {
	width: 292px;
	margin-left: 10px;
	margin-top: 10px;
}

.button {
    background-color: #b4b4b4;
    color: black;
    text-align: center;
    text-decoration: none;
    font-size: 16px;
    cursor: pointer;
    border-bottom: 1px solid #aaaaaa;
}

.testmin, .navmin {
	cursor: pointer;
}


.navmin {
	background: white; height: 25px; font-size: 15px; padding-top: 10px;
}


.addMenuDiv {
	box-shadow : rgba(0,0,0,0.5) 0 0 0 9999px;
	position: absolute; /* */
	left: 30%;
	top: 15%;
	/* transform: translate(-50%, -50%); */
	width: 30%;
	height: 59%;
	z-index: 3;
	background: #F9FFFF;
}

.fontList1 {
	font-size: 15px;
	color: #282828;
	font-weight: bolder;
	font-style: Serif;
}

.fontList2 {
	font-size: 12px;
	color: #282828;
	font-style: Serif;
}

#slect_modal {
	border: 1px solid black;
	width: 250px;
	height:200px;
	position: fixed;
	top: 30%;
	left: 40%;
	z-index: 7;
	background: #505050;
	border-radius: 8px;
}


</style>
</head>
<body style="background: #FBFBFB">
<div id="sectionTest2" >
	<!--나중에 데이터 이용해서 for문으로 쓰기+margin css 도 수정 해야 할 듯-->
	<div class="selection" style="margin-top: 12px;" >
		<table>
			<tr style="border-bottom: 1px solid #c8c8c8; height: 35px;">
				<td colspan="2" style="vertical-align: middle; font-size: 17px; font-weight:bolder;
				font-family: 새굴림;">&nbsp;&nbsp;${requestDTO.getRestaurant_name() }</td>
			</tr>
			<tr>
				<td style=" padding-top: 10px;">
					<div class="logo" style="background-image: url('image/${requestDTO.getSomename() }'); 
					background-size: cover; "></div>
				</td>
				<td style="width: 100%;  padding-top: 10px;">
					<ul style="list-style: none;  padding-left: 3px;">
						<li>${requestDTO.getRestaurant_name() }-${requestDTO.getRestaurant_address3() }</li>
						<li>별표 | 리뷰 198</li>
						<li style="color: red">조기서 결제 | <span>${requestDTO.getLower_price() }</span>원 이상 배달</li>
						<li >
							배달 시간 : ${requestDTO.getDelivery_time() }분 
							<img alt="정보" src="../image/123.png" style="width: 13px; height: 13px;" 
							class="testmin" title="최근주문의 배달시간을 분석한 정보입니다.
실제 배달시간과는 차이가 있을 수 있습니다.">
	 					</li>
					</ul>
				</td>
			</tr>
		</table>
		<div id="viewNav">
			<table style="width: 100%; border: 1px solid #bebebe;
			">
				<tr height="40px;" align="center" >
					<td style="text-align: center; border-right: 1px solid #bebebe;
					width: 33%;" onclick="menu();" id="class_menu">메뉴</td>
					<td style="cursor: pointer; text-align: center;  border-right: 1px solid #bebebe;"
					onclick="review();" id="class_review">클린리뷰</td>
					<td style="cursor: pointer; text-align: center; width: 33%;" onclick="inform();"
					id="class_information">정보</td>
				</tr>
				<tr>
					<th style=" font-size: 2px;background:red;
					border-right: 1px solid #bebebe;" id="class_menu_bottom">&nbsp</th>
					<th style=" font-size: 2px;
					border-right: 1px solid #bebebe;" id="class_review_bottom"></th>
					<th style="font-size: 2px;" id="class_information_bottom"></th>
				</tr>
			</table>
			
			
			
			<div id="viewSelection1">
				<div style=" width: 100%;  overflow-x: scroll; overflow-y:hidden;
					 height: 200px; width: 100%; white-space:nowrap; padding-left: 7px;
					 background: #FBFBFB;">
					 <!-- 저기  addMenu 매개변수 3번쨰꺼로 사이드 메뉴 줘서 만약 추가 메뉴 1개라도 있으면 null?이 아닌 값이
					 넘어가니깐 addmenu가 켜지게 하고 아니면 걍  바로 장바구니 ㄱㄱ-->
					<c:forEach var="menuDTO" items="${mainList}">
						<c:set var="loop_flag" value="false" />
							<c:forEach var="item" items="${menu_sideList}" varStatus="status">
						<c:if test="${loop_flag != true}">
								<c:if test="${menuDTO.getMenu()== item.getMenu() }">
									<div style="height: 150px; width: 130px; overflow:hidden; border:1px solid #bebebe;
									margin-top: 17px; margin-right: 7px; display: inline-block; cursor: pointer;" onclick="addMenu('${menuDTO.getMenu() }','${menuDTO.getPrice() }','${item.getAddmenu() }','${item.getAddmenu_price()}');">
										<img alt="메인메뉴" src="image/${menuDTO.getImgName() }"
										style="height: 65%; width: 100%;">
										<div style="background: white;
										height: 34%;  padding-left: 9px; padding-top: 5px;
										width:100%; text-overflow: ellipsis; overflow:hidden; white-space:nowrap">
											<span class="fontList1">${menuDTO.getMenu() }</span><br>
											<span class="fontList2">${menuDTO.getPrice() }</span>
										</div>
									</div>
						
						<c:set var="loop_flag" value="true" />
								
								
								</c:if>
							</c:if>
							</c:forEach>
<!-- 추가 메뉴가 있을 경우에 나올 주문표 -->
<!-- 숨겨진 div -->
<c:set var="id_bofore1" value='${fn:replace(menuDTO.getMenu()," ", "")}'/> <!-- 공백제거 -->
<c:set var="id_bofore2" value='${fn:replace(id_bofore1,".", "")}'/>	<!-- .제거 -->
<c:set var="id_bofore3" value='${fn:replace(id_bofore2,"+", "")}'/>	<!-- +제거 -->
<c:set var="id_bofore4" value='${fn:replace(id_bofore3,"-", "")}'/>	<!-- -제거 -->
<c:set var="id_bofore5" value='${fn:replace(id_bofore4,"(", "")}'/>	<!-- (제거 -->
<c:set var="id_bofore6" value='${fn:replace(id_bofore5,")", "")}'/>	<!-- )제거 -->
<div class="addMenuDiv" id='${id_bofore6}' >
	<div style="width: 100%; background: #787878; color: #dcdcdc; height: 40px;
	font-size: 15px; padding-top: 7px; text-align: center;" >
	${menuDTO.getMenu() }
	<div style="float: right; cursor: pointer;" class="x_btn" onclick="xClose('${menuDTO.getMenu() }')">
		&nbsp;&nbsp;x&nbsp;&nbsp;
	</div>
	</div>
	<div style="overflow-x: hidden;overflow-y:auto;
	height: 420px; padding-left: 20px;">
		<div style="width: 100%;  height: 40px;
		font-size: 15px; padding-top: 7px; padding-left: 5px;  border-bottom: 1px solid #bebebe;">
			추가 메뉴 <span style="color: red;">(필수 선택)</span>
		</div>
	<c:set var="test" value="a"/>
	<c:forEach var="item" items="${menu_sideList}" varStatus="status">
		<c:if test="${menuDTO.getMenu()== item.getMenu() && item.getAddmenu_price() != 0 }">
			<c:if test="${test != 'a'}">
				<div style="width: 100%;  height: 40px;
				font-size: 15px; padding-top: 7px; padding-left: 5px;  border-bottom: 1px solid #bebebe;">
					<input type="radio" name='${id_bofore6}' value="${item.getAddmenu_price()}-${item.getAddmenu() }"> ${item.getAddmenu() }  ${item.getAddmenu_price() }
				</div>
			</c:if>
			<c:if test="${test == 'a' }">
				<div style="width: 100%;  height: 40px;
				font-size: 15px; padding-top: 7px; padding-left: 5px;  border-bottom: 1px solid #bebebe;">
					<input type="radio" checked="checked" name='${id_bofore6}' value="${item.getAddmenu_price()}-${item.getAddmenu() }"> ${item.getAddmenu() }  ${item.getAddmenu_price() }
				</div>
				<c:set var="test" value="b"/>
			</c:if>
			
		</c:if>
	</c:forEach>
	</div>
	<div style="width: 100%; background: red; color: white; height: 40px; position:absolute; bottom:0px;
	font-size: 15px; padding-top: 7px; padding-left: 5px; text-align: center; cursor: pointer;" 
	onclick="check_order('${menuDTO.getMenu() }','${menuDTO.getPrice() }','${menuDTO.getMenu()}');">
		주문표에 담기	
	</div>
</div>



			
					</c:forEach>
					<c:forEach var="sideMenuDTO" items="${sideList}">
						<div style="height: 150px; width: 130px; overflow:hidden; border:1px solid #bebebe; 
						margin-top: 17px; margin-right: 7px; display: inline-block; cursor: pointer;" onclick="addMenu('${sideMenuDTO.getMenu() }','${sideMenuDTO.getPrice() }','','');">
							<img alt="사이드메뉴" src="image/${sideMenuDTO.getImgName() }"
							style="height: 65%; width: 100%; border: none;">
							<div style=" background: white;
							height: 34%;  padding-left: 9px; padding-top: 5px;
							width:100%; text-overflow: ellipsis; overflow:hidden; white-space:nowrap">
								<span class="fontList1">${sideMenuDTO.getMenu() }</span><br>
								<span class="fontList2">${sideMenuDTO.getPrice() }</span>
							</div>
						</div>
					</c:forEach>
				</div>
				
				<button style="width: 100%; background: #e6e6e6; height: 35px;
				border: 0;border-bottom: 1px solid #a0a0a0; color: #5a5a5a;"  onclick="showMain()"
				class="button">메인메뉴 <span style="float: right;" id="main_btn_ud"><img alt="" src="../image/btg_up.png"></span></button><br>
					<!-- for문으로 작성 ㄱ  나중에 i가 1이면 보더 안생기게 ㄱ-->
					<div id="main">
					
					
					
						<c:forEach var="menuDTO" items="${mainList}" varStatus="status">
							<c:if test="${status.index == 0 }">
								<c:set var="loop_flag" value="false" />
									<c:forEach var="item" items="${menu_sideList}" varStatus="status">
										<c:if test="${loop_flag != true}">
											<c:if test="${menuDTO.getMenu()== item.getMenu() }">
												<div style="padding-left: 9px; padding-top: 10px; padding-bottom: 10px; width: 100%;
												cursor: pointer;" onclick="addMenu('${menuDTO.getMenu()}','${menuDTO.getPrice() }','${item.getAddmenu() }','${item.getAddmenu_price()}');">
													<span class="fontList1">${menuDTO.getMenu() }</span>
													<img alt="메인메뉴" src="image/${menuDTO.getImgName() }"
											style="height:70px; width:120px; border: none; float: right; margin-right: 10px; margin-top: -5px;">
													<br>
													<span class="fontList2">${menuDTO.getMenu_explain() }</span> <br>
													<span class="fontList2">${menuDTO.getPrice() }원</span>
												</div>
												<c:set var="loop_flag" value="true" />
											</c:if>
										</c:if>
									</c:forEach>
							</c:if> 
							
							<c:if test="${status.index >= 1 }">
								<c:set var="loop_flag" value="false" />
									<c:forEach var="item" items="${menu_sideList}" varStatus="status">
										<c:if test="${loop_flag != true}">
											<c:if test="${menuDTO.getMenu()== item.getMenu() }">
												<div style="border-top: 1px solid #bebebe;
												padding-left: 9px; padding-top: 10px; padding-bottom: 10px;cursor: pointer;"
												 onclick="addMenu('${menuDTO.getMenu()}','${menuDTO.getPrice() }','${item.getAddmenu() }','${item.getAddmenu_price()}');">
													<span class="fontList1">${menuDTO.getMenu() }</span>
													<img alt="메인메뉴" src="image/${menuDTO.getImgName() }"
												style="height:70px; width:120px; border: none; float: right; margin-right: 10px; margin-top: -5px;">
													<br>
													<span class="fontList2">${menuDTO.getMenu_explain() }</span><br>
													<span class="fontList2">${menuDTO.getPrice() }원</span>
												</div>
												<c:set var="loop_flag" value="true" />
											</c:if>
										</c:if>
									</c:forEach>
							</c:if> 
						</c:forEach>
						
					</div>			
				<button style="width: 100%  ;background: #e6e6e6;  height: 35px;
				border: 0; border-bottom: 1px solid #a0a0a0;color: #5a5a5a;" onclick="showSide()"
				class="button ">사이드 메뉴 <span style="float: right;" id="side_btn_ud"><img alt="" src="../image/btg_down.png"></span></button>
					<div id="side">
					
						<c:forEach var="sideMenuDTO" items="${sideList}" varStatus="status">
							<c:if test="${status.index == 0 }">
								<div style="padding-left: 9px; padding-top: 10px; padding-bottom: 10px;
								cursor: pointer;"  onclick="addMenu('${sideMenuDTO.getMenu() }','${sideMenuDTO.getPrice() }','','');">
									<span class="fontList1">${sideMenuDTO.getMenu() }</span>
									<img alt="사이드" src="image/${sideMenuDTO.getImgName() }"
										style="height:70px; width:120px; border: none; float: right; margin-right: 10px; margin-top: -5px;"> 
									<br>
									<span class="fontList2">${sideMenuDTO.getMenu_explain() }</span><br>
									<span class="fontList2">${sideMenuDTO.getPrice() }원</span>
								</div>
							</c:if> 
							<c:if test="${status.index != 0 }">
							<div style="border-top: 1px solid #bebebe;
							padding-left: 9px; padding-top: 10px; padding-bottom: 10px;cursor: pointer;"
							  onclick="addMenu('${sideMenuDTO.getMenu() }','${sideMenuDTO.getPrice() }','','');">
								<span class="fontList1">${sideMenuDTO.getMenu() }</span>
								<img alt="사이드" src="image/${sideMenuDTO.getImgName() }"
										style="height:70px; width:120px; border: none; float: right; margin-right: 10px; margin-top: -5px;"> 
								<br>
								
								<span class="fontList2">${sideMenuDTO.getMenu_explain() }</span><br>
								<span class="fontList2">${sideMenuDTO.getPrice() }원</span>
							</div>
							</c:if>
						</c:forEach>
							
					</div>			
			</div>
			<div id="viewSelection2">
				
	            <c:if test="${reviewDTO.orderlist != null }">
	               <p align="center">주문후 첫번째 리뷰를 남겨보세요.</p>
	            </c:if>
	            <c:if test="${reviewDTO.orderlist == null }">
	               <jsp:include page="reviewlist.do"/>
	            </c:if>
         	</div>	
			<div id="viewSelection3">
				<div style="margin: auto; width: 90%;">
				<br><br>
					업체정보
					<div style="border: 1px solid gray; margin-bottom: 5px; margin-top: 5px;" ></div>
					영업시간 : ${requestDTO.getWeekday_start_H() }:${requestDTO.getWeekday_start_M() } ~ ${requestDTO.getWeekday_end_H() }:${requestDTO.getWeekday_end_M() } 	<br>
					<br><br>
					결제정보
					<div style="border: 1px solid gray; margin-bottom: 5px; margin-top: 5px;" ></div>
					최소주문 금액 : ${requestDTO.getLower_price() } 	<br>
					결재수단 : ${requestDTO.getMoney_method() }	<br><br>
					원산지정보
					<div style="border: 1px solid gray; margin-bottom: 5px; margin-top: 5px;" ></div>
						${requestDTO.getOriginal() }
						<br><br><br>
				</div>
			</div>
	</div>
	</div>
	
	<div class="selection2">
		<div id="orderList">
			<div  style="border:  1px solid #a0a0a0; width: 100%;">
				<div style="background: #505050; color: #b4b4b4; height: 40px; font-size: 15px;
				padding-top: 10px;" class="startMin">&nbsp;&nbsp;주문표</div>		
				<!-- 만일 메뉴가 1개라도 있으면  이게 뜨게 한다.-->
				<div style="height: 20px; min-height: 100px; text-align: center;
				padding-top: 43px; background: white;" class="price_l">
					주문표에 담긴 메뉴가 없습니다
				</div> 
				
				
				<!-- 여기가 이제 form으로 보낼 부분이다. -->
				<form action="../choice/payment.do"  name="test_test" method="post">
					<div style=" max-height:250px; background: white; overflow-y:auto;" class="orderBox" >
					</div> 
					<input name="hidden_location" value="${location}" type="hidden">
					<input name="hidden_seq" value="${seq}" type="hidden">
				</form>
				<!-- 이러한 div를  -->
				<!-- <div style="text-align: left; padding: 20px;">
					테스트용asdassdasd<br style="line-height: 30px;">
					x표시이미지&nbsp;가격  <span style="float: right; ">플2마</span>
				</div>
				여기서 부터 보더 탑이 필요하다.
				<div style="text-align: left; padding: 20px; border-top: 0.5px solid #dcdcdc ">
					테스트용asdassdasd<br style="line-height: 30px;">
					x표시이미지&nbsp;가격  <span style="float: right; ">플2마</span>
				</div>
				<div style="text-align: left; padding: 20px; border-top: 0.5px solid #dcdcdc ">
					테스트용asdassdasd<br style="line-height: 30px;">
					x표시이미지&nbsp;가격  <span style="float: right; ">플2마</span>
				</div> -->
				
				
				<!-- 나중에 if문으로 배달료 0원 이면 안나오게 만들기--> 
				<div  style="text-align:right;  border-top: 1px solid #a0a0a0;  height: 30px;
				padding-top: 5px; background: white; padding-right: 20px;"> 배달요금 <span id="delivery_price">${requestDTO.getDelivery_cost() }</span>원 별도</div>
				
				<div  style="text-align:right;  border-top: 1px solid #a0a0a0;  height: 30px;
				padding-top: 5px; background: #dcdcdc; padding-right: 20px;" id="leastOrderPrice"> 최소주문금액:<span id="least_orderPrice">${requestDTO.getLower_price() }</span>이상</div>
				
				<div  style="text-align:right;  border-top: 1px solid #a0a0a0; border-bottom: 1px solid #a0a0a0; height: 30px;
				padding-top: 5px; background: #FFEFD5; color: red; padding-right: 20px;" id="totalPrice"> 합계 : <span id="total_price"></span></div>	
			</div>
			
			<div style=" margin-top: 20px; background: #dcdcdc; color: white; text-align: center;
			height: 50px; width:100%; padding-top: 10px; font-size: 20px;"  class="endMin" onclick="go_order();" id="scr_min" >주문하기</div>		
		</div>
	</div>
	<br>
	<br>
</div>
<div id="slect_modal">
	<span style="display: block; width: 100%; height: 80%; font-size: 120px; color: white;
	text-align: center;" >✔</span>
	<div style="color: #d2d2d2; font-size: 1.5em; text-align: center;
	width: 100%;">주문표에 담았습니다</div>
</div>
</body>
</html>
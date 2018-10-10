<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript" src="js/bootstrap.js"></script>
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-
BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-
rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-
Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
<script type="text/javascript">
$('#myTab a').click(function (e) {
     e.preventDefault()
     $(this).tab('show')
   })
   
$('#myTab a[href="#profile"]').tab('show') // Select tab by name
$('#myTab a:first').tab('show') // Select first tab
$('#myTab a:last').tab('show') // Select last tab
$('#myTab li:eq(2) a').tab('show') // Select third tab (0-indexed)


$(document).ready(function() { 
	$('.owner_d').hide();
});



function toggle_ow(a) {
	$("#"+a+" .owner_u").hide();
	$("#"+a+" .owner_d").show();
}


function toggle_om(a) {
	$("#"+a+" .owner_u").show();
	$("#"+a+" .owner_d").hide();
}



 
 
</script>
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
.h3{
   text-align: center;
}
p{
   text-align: center;
}
#myTab{
   margin: 0 auto;
}
.font{
color: black;
font-weight: bold;
} 
.container{
   margin: auto;
}
.header{
 padding-bottom: 40px; 
}
.login{
color: white;
font-size:large;
letter-spacing: 2px;
margin-top: 10px;}
.form-control{
margin:10px;
}
.form-signup-heading{
text-shadow: 0.05em 0.05em 0.05em;
color: gray;
}
.body{
background-color: rgba(0,0,0,0.05); 
}
img{
margin-left: 25px; margin-top: 25px;
}
body{
margin:0; padding:0;
}
.basic{
height: 500px;
}
.header_name{
font-family: serif;
font-style: italic;}
.tab-content{
height:1000px;
}
/*btn-block**/
.btn-block{
 margin-left: -160px;
}
/*세션 기본정보 css*/
.tbody_tr{
margin: 0 auto;
height: 80px;
color: gray;
text-align: center;
padding: 100%;
}
.table { vertical-align: middle; }
.td_subName{
font-weight: bold;
height:50px; 
}
.wonsanji{
   font-size: x-small;
   font-weight: lighter;
   text-align: left;
   text-shadow: none;
}
.td2_subName{
   font-family:나눔고딕, NanumGothic, Georgia, Serif;
}
.H/M{
padding: 10px;
margin: 5px;
}
.main_nav{
margin-top:50px;
}
.storeName{
color: gray;
}
</style>
</head>
<body>
<div class="main">
<div class="main-content">
<!-- readme -->
<!-- 24시간 영업 클릭 시 시간선택셀럭트 숨김 기능 필요 -->
<div class="page-header">
  <h1>리뷰관리 <small>${requestDTO.seq} ${requestDTO.restaurant_name}</small></h1>
</div>

<div class="nav nav-tabs nav-justified">
<ul class="nav nav-tabs nav-justified" role="tablist" id="myTab">
  <li role="presentation" class="active"><a href="#home" aria-controls="home" role="tab" data-toggle="tab" class="font">전체 리뷰</a></li>
  <li role="presentation"><a href="#profile" aria-controls="profile" role="tab" data-toggle="tab" class="font">미답변 리뷰</a></li>
</ul>
<div class="tab-content">
   <div role="tabpanel" class="tab-pane active" id="home">
      <div class="basic">
     <c:if test="${empty all_list}">	
		리뷰가 없습니다.
	</c:if>  
      
         <div>
         	<table class="table">
         	<c:forEach var="reviewDTO" items="${all_list}">
		         <tr class="tbody_tr" >
			            <td class="main_sesssion">
			               <!-- <span style="color:red;">★★★★★</span> 
			               <small><strong>&{customer_nickname}</strong></small>
			               소비자 이미지 업로딩 구역
			               <p style="margin-top:20px; margin-left:100px;height:auto; width:500px;">
			               <strong>
					              &{reviewDTO.content}
			               </strong></p> -->
			               
			               <!-- 고객 댓글 -->
			               <div style="width: 80%; max-height: 150px; text-align: left; padding-left: 50px; overflow-y: auto;">
			               ${reviewDTO.getId() } - ${reviewDTO.getNickname() }<br>
			               	별점 : 
			                <c:if test="${reviewDTO.getStarpoint() == '1'}">	
			                	★☆☆☆☆
			               	</c:if>
			               	<c:if test="${reviewDTO.getStarpoint() == '2'}">	
			                	★★☆☆☆
			               	</c:if>
			               	<c:if test="${reviewDTO.getStarpoint() == '3'}">	
			                	★★★☆☆
			               	</c:if>
			               	<c:if test="${reviewDTO.getStarpoint() == '4'}">	
			                	★★★★☆
			               	</c:if>
			               	<c:if test="${reviewDTO.getStarpoint() == '5'}">	
			                	★★★★★
			               	</c:if>
			               <br><br>
			               ${reviewDTO.getContent() }
			               
			               </div>
			                
			                <br>
			                
			                 <!-- 사장님 댓글  있을 경우에-->
			              <c:if test="${reviewDTO.getCeoOK() == 'y'}">
			               <img src="../ownerimage/arrow.png" style="padding:0; width:60px; margin-left:100px; margin-top:10px; float:left;"><br>
			               <span class="label label-danger" style="float:left;">사장님 답변</span><span style="float:left; size:middle; margin-left:10px;"></span><br>
			                <!--    <form action="" name="commentForm" method="post"> -->
						            <div>
						                <span><strong></strong></span> <span id="cCnt"></span>
						            </div>
						            <div>
						                <table>                    
						                    <tr>
						                        <td>
						                        <textarea readonly="readonly"  name="menu_explain" id="menu_explain" cols="30" rows="7" style="width:500px; overflow:auto; background: #fff; " maxlength="500 " class="content1">
						                        	${reviewDTO.getCeoContent()}
						                        </textarea>
						                        </td>
						                    </tr>
						                </table>
						            </div>
						        </c:if>
						        
						        <c:if test="${reviewDTO.getCeoOK() == 'n'}">
						        <div id="${reviewDTO.getNickname()}">
			               			<div class="owner_u" onclick="toggle_ow('${reviewDTO.getNickname()}');" style="cursor: pointer;">
						        	<img src="../ownerimage/arrow.png" style="padding:0; width:60px; margin-left:150px; margin-top:0; float:left;"><br>
			               				<span class="label label-danger" style="float:left;">사장님 답변 작성하기</span><br>
			               			</div>
			               			
			               			<div class="owner_d" >
			               				<img src="../ownerimage/arrow.png" style="padding:0; width:60px; margin-left:300px; margin-top:10px; float:left;"><br>
			               <span class="label label-danger" style="float:left;">작성하기</span><span style="float:left; size:middle; margin-left:10px;"></span><br>
			                <!--    <form action="" name="commentForm" method="post"> -->
						           
						            <div>
						                <span><strong></strong></span> <span id="cCnt"></span>
						            </div>
						            
							            <div>
							                <table>                    
							                    <tr>
									                
								                  <td>
								                     <form action="owner_answer.do" name="answer" method="post">
								                        <textarea name="ceoContent" id="menu_explain" cols="30" rows="7" style="width:500px; overflow:auto; background: #fff; " maxlength="500 " class="content1">
								                        </textarea>
		      												<input type="hidden" name="id" value="${reviewDTO.getId()}">
		      												<input type="hidden" name="logtime" value="${reviewDTO.getLogtime()}">
								                            <div>
								                                <button class="btn btn-default" type="submit" style="float:right; margin-right: 10px;">답변 등록</button>
								                                <input type="button" class="btn btn-default" onclick="toggle_om('${reviewDTO.getNickname()}');" style="float:right;" value="작성 취소">
								                            </div>
								                      </form> 
								                  </td>
							                         
							                    </tr>
							                </table>
							            </div>
							            
			               			</div> 
			               		</div>
						        </c:if>
	   								       
   								<!-- </form> -->
			            </td>
		         	</tr>
		         </c:forEach>
     	 </table>
         </div>
      </div>
   </div>
   
   
   
   
   
   
   
   
   
   <div role="tabpanel" class="tab-pane" id="profile">
      <div class="basic">
      <c:if test="${empty n_list}">	
		리뷰가 없습니다.
	</c:if>
        <table class="table">
         	<c:forEach var="reviewDTO" items="${n_list}">
		         <tr class="tbody_tr" >
			            <td class="main_sesssion">
			               <div style="width: 80%; max-height: 150px; text-align: left; padding-left: 50px; overflow-y: auto;">
			               ${reviewDTO.getId() } - ${reviewDTO.getNickname() }<br>
			               	별점 : 
			                <c:if test="${reviewDTO.getStarpoint() == '1'}">	
			                	★☆☆☆☆
			               	</c:if>
			               	<c:if test="${reviewDTO.getStarpoint() == '2'}">	
			                	★★☆☆☆
			               	</c:if>
			               	<c:if test="${reviewDTO.getStarpoint() == '3'}">	
			                	★★★☆☆
			               	</c:if>
			               	<c:if test="${reviewDTO.getStarpoint() == '4'}">	
			                	★★★★☆
			               	</c:if>
			               	<c:if test="${reviewDTO.getStarpoint() == '5'}">	
			                	★★★★★
			               	</c:if>
			               <br><br>
			               ${reviewDTO.getContent() }
			               
			               </div>
			                
			                <br>
						        <div>
			               			<div>
			               				<img src="../ownerimage/arrow.png" style="padding:0; width:60px; margin-left:300px; margin-top:10px; float:left;"><br>
			               <span class="label label-danger" style="float:left;">작성하기</span><span style="float:left; size:middle; margin-left:10px;"></span><br>
			                <!--    <form action="" name="commentForm" method="post"> -->
						           
						            <div>
						                <span><strong></strong></span> <span id="cCnt"></span>
						            </div>
						            
							            <div>
							                <table>                    
							                    <tr>
							                        <td>
							                        <form action="owner_answer.do" name="answer" method="post">
							                        <textarea name="ceoContent" id="ceoContent" cols="30" rows="7" style="width:500px; overflow:auto; background: #fff; " maxlength="500 " class="content1">
							                        </textarea>
	      												<input type="hidden" name="id" value="${reviewDTO.getId()}">
	      												<input type="hidden" name="logtime" value="${reviewDTO.getLogtime()}">
							                            <div>
							                                <button class="btn btn-default" type="submit" style="float:right; margin-right: 10px;">답변 등록</button>
							                                <button class="btn btn-default" type="reset"  style="float:right;">작성 취소</button>
							                            </div>
							                            </form>
							                        </td>
							                    </tr>
							                </table>
							            </div>
							            
			               			</div> 
			               		</div>
   								<!-- </form> -->
			            </td>
		         	</tr>
		         </c:forEach>
     	 </table> 
      </div>
      
   </div>   
</div>
</div>
</div>
</div>
<script>
  $(function () {
    $('#myTab a:last').tab('show')
  })
 
</script>
</body>
</html> 
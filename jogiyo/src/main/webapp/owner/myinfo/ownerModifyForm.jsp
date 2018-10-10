<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet"> 

<style type="text/css">
@import url('https://fonts.googleapis.com/css?family=Josefin+Sans:100,300,400,600,700');



h3{
     font-family: 'Josefin Sans', sans-serif;
}

.box{
    padding:60px 0px;
    margin-left: 150px;
}

.box-part{
    background:#FFF;
    border-radius:10px;
    padding:60px 10px;
    margin:180px, 0px, 300px, 150px;
}

.box-part:hover{
    background:red;
}

.box-part:hover .fa , 
.box-part:hover .title , 
.box-part:hover .text ,
.box-part:hover a{
	
    color:#FFF;
    -webkit-transition: all 1s ease-out;
    -moz-transition: all 1s ease-out;
    -o-transition: all 1s ease-out;
    transition: all 1s ease-out;
}

.text{
    margin:20px 0px;
}

.fa{
     color:#4183D7;
}
.col-lg-4 {
	margin-bottom: 300px;
	margin-left: 100px;
	margin-top: 100px;
}
</style>
</head>
<body>

			 
			    <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
               
					<div class="box-part text-center">
                        
                        <img src="../../owner/ownerimage/password.PNG" width="50px" height="50px;">
                        
						<div class="title">
							<h3>계정정보</h3>
						</div>
                        
						<div class="text">
							<span>비밀번호를 변경하실 수 있습니다.</span>
						</div>
                        <a href="../../owner/myinfo/account_info.do">변경하기</a>
					 </div>
				</div>	 
				
				 <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
               
					<div class="box-part text-center">
					    
					    <img src="../../owner/ownerimage/accountmodify.png" width="50px" height="50px;">
                    
						<div class="title">
							<h3>회원정보</h3>
						</div>
                        
						<div class="text">
							<span>주소 이메일 등을 변경하실 수 있습니다.</span>
						</div>
                        
						<a href="../../owner/myinfo/address_info.do">변경하기</a>
                        
					 </div>
				</div>	 
				
				

</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">
 <!-- id, 패스워드 입력 검사 후 진행하도록  작성  -->
 
 $(document).ready(function(){
	   
	 $("form").on("submit",function(event){		
		 var userid = $("#userid").val();
		 var passwd = $("#passwd").val();
	   		if(userid.length==0){
	   			alert("userid 필수")
	   			$("#userid").focus();
	   			event.preventDefault();
	   		}else if(passwd.length==0){
	   			alert("passwd 필수")
	   			$("#passwd").focus();
	   			event.preventDefault();
	   		}
	   	});
});

 
 
</script>  
<style>


	.loginForm{
		width: 300px;
		height: 500px;
		position: absolute;
		left: 43%;
    	top: 23%;
    	text-align: center;
	}
	
	input{
		width: 300px;
		height: 50px;
		border: 2px solid #EEE;
		color: gray;
		
		
	}
	
	#userid{
	padding: 15px;
	border-bottom: none;
	}
	
	
	#passwd{
	margin-bottom: 20px;
	padding: 15px;
	}
	
	#login{
		background: #35c5f0;
		border: none;
		color: #fff;
		font-weight: bold;
		font-size: 19px;
		border-radius: 5px;
	}
	a{
		text-align:center;
		list-style: none;
		color: black;
	}
	
	.ADD{
		text-align: center;
	}
	#login_img{
		margin-bottom: 30px;
	}
	
</style>
<div class="loginForm_container">
	<div class="loginForm">
		<a> <img alt="" src="img/gagulife.png" width="150px;" height="50px;" id="login_img"> </a>
		<form action="LoginServlet" method="post">
		<input type="text" name="userid" id="userid" placeholder="아이디"><br>
		<input type="text" name="passwd" id="passwd" placeholder="비밀번호"><br> 
		<input type="submit" value="로그인" id="login"><br>
	</form>
	<div class="ADD">
		<a href="memberform" value="회원가입">회원가입</a><br>
	</div>
	</div>

</div>


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
<form action="LoginServlet" method="post">
<input type="text" name="userid" id="userid" placeholder="아이디"><br>
<input type="text" name="passwd" id="passwd" placeholder="비밀번호"><br> 
<input type="submit" value="로그인"><br>
</form>
<!-- <input href="passwd" value="비밀번호 재설정"> -->
<a href="memberForm" value="회원가입"></a><br>
<!-- <input href="" value="로그인에 문제가 있으신가요?"><br> -->
<hr>
<!-- <input href="" value="비회원 주문 조회하기"><br>
<form action="" method="post">
<input type="text" name="" id="" placeholder="주문번호"><br>
<input type="text" name="" id="" placeholder="이메일"><br> 
<input type="submit" value="주문조회"><br>
</form> -->


<%@page import="gagu.dto.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="css/main.css">
<link rel="stylesheet" type="text/css" href="css/reset.css">

<style>
.contentbtn{
	background: #3fc5f0;
    border: none;
    cursor: pointer;
    width: 100px;
    height: 40px;
    border-radius: 5px;
    color: #fff;
    font-weight: bold;
    font-size: 16px;
}

</style>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link
	href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500&display=swap"
	rel="stylesheet">

<div class="body_container">

		<header class="section">

			<div class="header-top clearfix">


				<div class="header--menu float--left">

					<div class="logo">
						<a href="main" ><img alt=""
							src="img/gagulife.png" width="75px" height="45px"></a>
					</div>
					<ul class="header--mainmenu">
						<li id="comu"><a href="">커뮤니티</a></li>
						<li id="store"><a href="">스토어</a></li>
					</ul>

				</div>

				<div class="header--menu float--right">

					<div class="search-bar">
						<input type="text" value="오늘의집 통합검색" style="color: gray;"> <input type="submit"
							value="">
					</div>
					<ul class="header--submenu">
						<li><a href="#" id="search"><img src="img/돋보기.jpg" alt=""></a></li>
						<li id="cart"><a href="CartOrderServlet"><img src="img/장바구니3.png" alt=""></a></li>
					</ul>
					<ul class="header--submenu2">
					<%
   MemberDTO dto =(MemberDTO)session.getAttribute("login");

   if(dto != null){
	 String username = dto.getUsername();
%>
<li><a href="LogoutServlet">로그아웃</a></li>
						<li><a href="cuCenterServlet">고객센터</a></li>
						<li><a href="MyPageServlet">MY PAGE</a></li>

<%} else{%>
						<li><a href="loginForm.jsp">로그인</a></li>
						<li><a href="memberform.jsp">회원가입</a></li>
						<li><a href="#">고객센터</a></li>
						
						<%} %>
					</ul>
		<button class="contentbtn">글쓰기</button>


				</div>

			</div>
		

			<div class="header-bottom clearfix">

				<div class="header--menu float--left">

					<div class="hideba">
						
							<ul class="list1" >
								<li><a href="main">홈</a></li>
								<li><a>팔로잉</a></li>
								<li><a>사진</a></li>
								<li><a>집들이</a></li>
								<li><a href="quaServlet">Q&A</a></li>
							</ul>

							<ul class="list2" >
								<li><a>스토어홈</a></li>
								<li><a>카테고리</a></li>
								<li><a>베스트</a></li>
								<li><a>오늘의딜</a></li>
								<li><a>구스단독특가</a></li>
							</ul>

				
					</div>

				</div>

			</div>
			
			
			

		</header>
		</div>
		<script type="text/javascript">
		document.getElementById("search").addEventListener("click",function(ev){  
	        $('.search-bar').fadeToggle('slow');  
	        ev.preventDefault();
	        
	});


	/*document.getElementById("comu").addEventListener("mouseover",function(ev){  
	        $('.list1').addClass("init");  
		 ev.preventDefault();
	     
	        
	});*/
	 $('.list2').hide();
	document.getElementById("store").addEventListener("mouseover",function(ev){  
	        $('.list1').hide();
	        $('.list2').show();
		 ev.preventDefault();
	});


	document.getElementById("comu").addEventListener("mouseover",function(ev){  
	        $('.list1').show();
	        $('.list2').hide();
		 ev.preventDefault();
	});
		</script>
		<!-- <script type="text/javascript" src="../js/main.js"></script> -->

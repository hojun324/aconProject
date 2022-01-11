<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="css/main.css">
<link rel="stylesheet" type="text/css" href="css/reset.css">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link
	href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500&display=swap"
	rel="stylesheet">
<title>Insert title here</title>
</head>
<body>
<div class="body_container">

		<header class="section">

			<div class="header-top clearfix">


				<div class="header--menu float--left">

					<div class="logo">
						<a href="main.jsp" ><img alt=""
							src="img/logo.png" width="75px" height="45px"></a>
					</div>
					<ul class="header--mainmenu">
						<li id="comu"><a href="">커뮤니티</a></li>
						<li id="store"><a href="">스토어</a></li>
					</ul>

				</div>

				<div class="header--menu float--right">

					<div class="search-bar init1">
						<input type="text" value="오늘의집 통합검색"> <input type="submit"
							value="">
					</div>
					<ul class="header--submenu">
						<li><a href="#" id="search"><img src="img/돋보기.jpg" alt=""></a></li>
						<li id="cart"><a href="CartOrderServlet"><img src="img/장바구니3.png" alt=""></a></li>
					</ul>
					<ul class="header--submenu2">
						<li><a href="">로그인</a></li>
						<li><a href="#">회원가입</a></li>
						<li><a href="#">고객센터</a></li>
					</ul>
	


				</div>

			</div>
		

			<div class="header-bottom clearfix">

				<div class="header--menu float--left">

					<div class="hideba">
						
							<ul class="list1" >
								<li><a>홈</a></li>
								<li><a>팔로잉</a></li>
								<li><a>사진</a></li>
								<li><a>집들이</a></li>
								<li><a>Q&A</a></li>
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
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ page import="gagu.dto.MemberDTO" %>
<!DOCTYPE html>

<%
   MemberDTO dto =(MemberDTO)session.getAttribute("login");

   if(dto != null){
	 String username = dto.getUsername();
%>
<div class="body_container">

		<header class="section">

			<div class="header-top clearfix">


				<div class="header--menu float--left">

					<div class="logo">
						<a href="main" ></a>
					</div>
					<ul class="header--mainmenu">
						<li id="profile"><a href="">프로필</a></li>
						<li id="myshopping"><a href="">나의 쇼핑</a></li>
						<li id="review"><a href="">나의 리뷰</a></li>
						<li id="setting"><a href="">설정</a></li>
					</ul>

				</div>

			</div>
		

			<div class="header-bottom clearfix">

				<div class="header--menu float--left">

					<div class="hideba">
						
							<ul class="list5" >
								<li><a>모두보기</a></li>
								<li><a>사진</a></li>
								<li><a>집들이</a></li>
								<li><a>노하우</a></li>
								<li><a>질문과답변</a></li>
								<li><a>스크랩북</a></li>
								<li><a>좋아요</a></li>
							</ul>

							<ul class="list6" >
								<li><a>주문배송내역 조회</a></li>
								<li><a>상품 스크랩북</a></li>
								<li><a>상품문의내역</a></li>
								<li><a>포인트</a></li>
								<li><a>공지사항</a></li>
								<li><a>고객센터</a></li>
							</ul>
							
							<ul class="list3" >
								<li><a>리뷰쓰기</a></li>
								<li><a>내가 작성한 리뷰</a></li>
							</ul>
							
							<ul class="list4" >
								<li><a>회원정보수정</a></li>
								<li><a>알림 설정</a></li>
								<li><a>전문가 신청</a></li>
								<li><a>비밀번호 변경</a></li>
								<li><a>추천코드</a></li>
							</ul>
				
					</div>

				</div>

			</div>
			
			
			

		</header>
		</div>
		
			<%
   }//end if~else
%>

<script type="text/javascript" src="js/jquery-3.3.1.js"></script>
<script type="text/javascript">	

$('.list5').hide();
document.getElementById("profile").addEventListener("click",function(ev){  
        $('.list5').show();
        $('.list6').hide();
        $('.list3').hide();
        $('.list4').hide();
	 ev.preventDefault();
});


document.getElementById("myshopping").addEventListener("click",function(ev){  
        $('.list5').hide();
        $('.list6').show();
        $('.list3').hide();
        $('.list4').hide();
	 ev.preventDefault();
});

document.getElementById("review").addEventListener("click",function(ev){  
    $('.list5').hide();
    $('.list6').hide();
    $('.list3').show();
    $('.list4').hide();
 ev.preventDefault();
});

document.getElementById("setting").addEventListener("click",function(ev){  
    $('.list5').hide();
    $('.list6').hide();
    $('.list3').hide();
    $('.list4').show();
 ev.preventDefault();
});
	</script>

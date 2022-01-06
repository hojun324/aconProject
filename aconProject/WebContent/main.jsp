<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/main.css">
<link rel="stylesheet" type="text/css" href="css/reset.css">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link
	href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500&display=swap"
	rel="stylesheet">
</head>
<body>

	<div class="body_container">
<jsp:include page="common/header.jsp" flush="true" /><br>

		        <!-- bener -->
        <div class="visual-container">
            <nav class="section bener">
                <div class="slideimg">
                    <a href=""><img src="img/benner1.jpg" alt=""></a>
                </div>
                <div class="slideimg">
                    <a href=""><img src="img/benner2.jpg" alt=""></a>
                </div>
                <div class="slideimg">
                    <a href=""><img src="img/benner3.jpg" alt=""></a>
                </div>
               
                
            </nav>

                <a href="#" id="prev"></a>
                <a href="#" id="next"></a>


            <div class="imgb">
                <ul>
                    <!-- <li data-idx="0">1</li>
                    <li data-idx="1">2</li>
                    <li data-idx="2">3</li> -->
                </ul>
            </div>

        </div>
        
        
         <footer class="section">

            <div class="inner clearfix">

           

                <div class="center">
                    <ul>
                        <li><a href="">브랜드 스토리</a></li>
                        <li><a href="">회사소개</a></li>
                        <li><a href="">채용정보</a></li>
                        <li><a href="">이용약관</a></li>
                        <li><a href="">개인정보처리방침</a></li>
                        <li><a href="">공지사항</a></li>
                        <li><a href="">고객센터</a></li>
                        <li><a href="">고객의 소리</a></li>
                        <li><a href="">전문가 등록</a></li>
                        <li><a href="">사업자 구매회원</a></li>
                        <li><a href=""> 제휴/광고 문의 </a></li>
                        <li><a href="">   입점신청 문의 </a></li>
                    </ul>
                    <p>
                        상호명(주)버킷플레이스이메일(고객문의) cs@bucketplace.net (제휴문의) contact@bucketplace.net대표이사이승재사업자등록번호119-86-91245통신판매업신고번호제2018-서울서초-0580호 사업자정보확인
			주소서울 서초구 서초대로74길 4 삼성생명서초타워 25, 27층우리은행 채무지급보증안내(주)버킷플레이스는 고객님이 현금결제한  금액에 대해 우리은행과 채무지급보증 계약을 체결하여 안전거래를 보장하고 있습니다. 서비스가입사실 확인
			오늘의집은 개별 판매자가 상품을 판매하는 오픈마켓이며 (주)버킷플레이스는 통신판매중개자로 거래 당사자가 아니므로, 판매자가 등록한 상품정보 및 거래 등에 대해 일체 책임을 지지 않습니다.
			단 ㈜버킷플레이스가 판매자로 등록 판매한 상품의 경우는 판매자로서 책임을 부담합니다.
			
				</p><br>
				<p>
				Copyright 2014. bucketplace, Co., Ltd. All rights reserved
				</p>
				
                </div>

                
            </div>


        </footer>

	</div>

	<!-- <script type="text/javascript" src="js/main.js"></script> -->
	<script type="text/javascript">
	var currentIndex = 0,
    sliderContainer = document.getElementsByClassName('bener'),
    slider = document.getElementsByClassName('slideimg'),
    sliderConta = slider.length,
    timer,
    imgbHTML = '',
    imgb = document.querySelector('.imgb ul'),
    // imgBtn = document.querySelectorAll('.imgb li'),
    navPrev = document.getElementById('prev'),
    navNext = document.getElementById('next');




for(var a = 0; a < sliderConta; a++){
    imgbHTML += '<li data-idx="'+a+'">'+(a+1)+'</li>';
    imgb.innerHTML = imgbHTML;
}
var imgBtn = document.querySelectorAll('.imgb li');



function goToslide(idx){
    sliderContainer[0].style.transform = 'translate(' + idx * -100 +'vw'+')';
    currentIndex = idx;

    for(var y = 0; y < imgBtn.length; y++){
        imgBtn[y].classList.remove('active');
    }
    imgBtn[idx].classList.add('active');

    


}
goToslide(0);



navPrev.addEventListener('click',function(ev){
    ev.preventDefault();
    if(currentIndex != 0){
        goToslide(currentIndex -1);  
    }else{
        goToslide(sliderConta-1);  
    }
    
});


navNext.addEventListener('click',function(ev){
    ev.preventDefault();
    if(currentIndex < sliderConta -1){
        goToslide(currentIndex +1);  
    }else{
        goToslide(0);  
    }
    // goToslide(currentIndex +1);
    
 });

// goToslide(0);



function startAutoSlide() {

     timer = setInterval(function(){
        var nextIdx = (currentIndex + 1) % sliderConta; 
        goToslide(nextIdx);
    },5000);

}

startAutoSlide();

// function stopAutoslide(){
//     clearInterval(timer);
// }

sliderContainer[0].addEventListener('mouseenter',function(){
    clearInterval(timer);
});
navNext.addEventListener('mouseenter',function(){
    clearInterval(timer);
});

navPrev.addEventListener('mouseenter',function(){
    clearInterval(timer);
});

navNext.addEventListener('mouseleave',function(){
    startAutoSlide();
});

navPrev.addEventListener('mouseleave',function(){
    startAutoSlide();
});
sliderContainer[0].addEventListener('mouseleave',function(){
    startAutoSlide();
});


//imgb
for(var x = 0; x < imgBtn.length; x++){
    imgBtn[x].addEventListener('click',function(event){
        

         // var imgNum = event.target.getAttribute('data-idx');
        var imgNum = event.target.innerText -1;
        goToslide(imgNum);
    });
}

	</script>
	</body>
</html>
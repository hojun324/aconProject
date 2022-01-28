<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<meta charset="UTF-8">

<link rel="stylesheet" type="text/css" href="css/main.css">
<link rel="stylesheet" type="text/css" href="css/reset.css">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link
	href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500&display=swap"
	rel="stylesheet">
<style>
.bennerfooter {
	    max-width: 1200px;
    margin: auto;
    font-size: 13px;
    position: relative;
    border: 1px solid gainsboro;
    top: -2px;
    display: flex;
    flex-direction: row;
    justify-content: space-between;
    border-top: none;
}

.bennerfooter a {
	display: inline-block;
    padding: 4px;
    height: 32px;
    /* line-height: 31px; */
    /* border: 1px solid gray; */
    line-height: 31px;
}




.bennerfooter a:not(:nth-child(n+9))::after{
	content: "";
	width:1px;
	height:18px;
	margin-left: 8px;
    top: 10px;
	background: #bbbaba;
    position: absolute;
}







}
</style>

<jsp:include page="common/header.jsp" flush="true" />


<div class="body_container">
	<!-- bener -->
	<div class="visual-container">


		<nav class="section bener">
			<div class="slideimg">
				<a href=""><img src="img/benners1.jpg" alt=""></a>
			</div>
			<div class="slideimg">
				<a href=""><img src="img/benners2.jpg" alt=""></a>
			</div>
			<div class="slideimg">
				<a href=""><img src="img/benners3.jpg" alt=""></a>
			</div>
		</nav>
		<a href="#" id="prev"></a> <a href="#" id="next"></a>
		<div class="imgb">
			<ul>
				<!-- <li data-idx="0">1</li>
                    <li data-idx="1">2</li>
                    <li data-idx="2">3</li> -->
			</ul>
		</div>



	</div>

	<div class="bennerfooter">

		<a href="" class="bar" style="margin-left: 7px;">트렌드 가구 ~85% </a> <a href="" class="bar">생활용품 할인쿠폰</a> <a href="" class="bar">테팔
			브랜드 빅세일</a> <a href="">인기 홈데코 특가</a> <a href="">해외가구 빠른배송</a> <a href="">리모델링
			특별할인</a> <a href="">겨울캠핑템 ~70%</a> <a href="">새해 렌탈 대축제</a> <a href="">신규브랜드
			특가!</a> 
			
			<a style="width: 35px; border-left: 1px solid #eee; padding-left: 0px;" >
				<img alt="" src="img/leftbtm.jpg" style="position: relative;left: 11px;top: 4px;">
			</a> 
			
			<a style="width: 35px; border-left: 1px solid #eee; margin-right: 5px;">
				<img alt="" src="img/rightbtn.jpg" style="    position: relative;left: 8px;top: 2px;">
			</a>


	</div>
</div>


<jsp:include page="gagu/body.jsp" flush="true" />
<jsp:include page="common/footer.jsp" flush="true" />

<!-- <script type="text/javascript" src="js/main.js"></script> -->
<script type="text/javascript">
	var currentIndex = 0, sliderContainer = document
			.getElementsByClassName('bener'), slider = document
			.getElementsByClassName('slideimg'), sliderConta = slider.length, timer, imgbHTML = '', imgb = document
			.querySelector('.imgb ul'),
	// imgBtn = document.querySelectorAll('.imgb li'),
	navPrev = document.getElementById('prev'), navNext = document
			.getElementById('next');

	for (var a = 0; a < sliderConta; a++) {
		imgbHTML += '<li data-idx="'+a+'">' + (a + 1) + '</li>';
		imgb.innerHTML = imgbHTML;
	}
	var imgBtn = document.querySelectorAll('.imgb li');

	function goToslide(idx) {
		sliderContainer[0].style.transform = 'translate(' + idx * -100 + 'vw'
				+ ')';
		currentIndex = idx;

		for (var y = 0; y < imgBtn.length; y++) {
			imgBtn[y].classList.remove('active');
		}
		imgBtn[idx].classList.add('active');

	}
	goToslide(0);

	navPrev.addEventListener('click', function(ev) {
		ev.preventDefault();
		if (currentIndex != 0) {
			goToslide(currentIndex - 1);
		} else {
			goToslide(sliderConta - 1);
		}

	});

	navNext.addEventListener('click', function(ev) {
		ev.preventDefault();
		if (currentIndex < sliderConta - 1) {
			goToslide(currentIndex + 1);
		} else {
			goToslide(0);
		}
		// goToslide(currentIndex +1);

	});

	// goToslide(0);

	function startAutoSlide() {

		timer = setInterval(function() {
			var nextIdx = (currentIndex + 1) % sliderConta;
			goToslide(nextIdx);
		}, 5000);

	}

	startAutoSlide();

	// function stopAutoslide(){
	//     clearInterval(timer);
	// }

	sliderContainer[0].addEventListener('mouseenter', function() {
		clearInterval(timer);
	});
	navNext.addEventListener('mouseenter', function() {
		clearInterval(timer);
	});

	navPrev.addEventListener('mouseenter', function() {
		clearInterval(timer);
	});

	navNext.addEventListener('mouseleave', function() {
		startAutoSlide();
	});

	navPrev.addEventListener('mouseleave', function() {
		startAutoSlide();
	});
	sliderContainer[0].addEventListener('mouseleave', function() {
		startAutoSlide();
	});

	//imgb
	for (var x = 0; x < imgBtn.length; x++) {
		imgBtn[x].addEventListener('click', function(event) {

			// var imgNum = event.target.getAttribute('data-idx');
			var imgNum = event.target.innerText - 1;
			goToslide(imgNum);
		});
	}
</script>

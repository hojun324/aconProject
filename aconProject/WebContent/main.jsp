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
<jsp:include page="common/header.jsp" flush="true" /><br>
	<div class="body_container">
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
	</div>
	<jsp:include page="common/footer.jsp" flush="true" /><br>
	
	</body>
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
</html>
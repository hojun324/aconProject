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





/*document.getElementById("search").addEventListener("click",function(ev){  
        $('.search-bar').fadeToggle('slow');  
        ev.preventDefault();
        
});*/


/*document.getElementById("comu").addEventListener("mouseover",function(ev){  
        $('.list1').addClass("init");  
	 ev.preventDefault();
     
        
});*/
/* $('.list2').hide();
document.getElementById("store").addEventListener("mouseover",function(ev){  
        $('.list1').hide();
        $('.list2').show();
	 ev.preventDefault();
});


document.getElementById("comu").addEventListener("mouseover",function(ev){  
        $('.list1').show();
        $('.list2').hide();
	 ev.preventDefault();
});*/
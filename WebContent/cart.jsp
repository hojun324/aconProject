<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="css/main.css">
<link rel="stylesheet" type="text/css" href="css/reset.css">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link
	href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500&display=swap"
	rel="stylesheet">
<title>Insert title here</title>
<style type="text/css">


</style>

<jsp:include page="common/header.jsp" flush="true" />
<jsp:include page="gagu/cart.jsp" flush="true" />
<jsp:include page="common/footer.jsp" flush="true" />





















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
		
</body>

</html>
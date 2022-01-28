<%@page import="gagu.dto.MemberDTO"%>
<%@page import="java.io.Console"%>
<%@page import="gagu.dto.CartDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	

	

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="js/jquery-3.3.1.js"></script>
<style type="text/css">
header {
	position: static;
}

.cart_container {
	text-align: center;
	background: #f5f5f5;
	position: relative;
	padding-top: 30px;
	padding-bottom: 100px;
	display: flex;
	margin: 0 auto;
}

.session {
	width: 800px;
	margin-left: 150px;
	background-color: #fff;
	 height: 375px; 
	margin-bottom: 20px;
	position: relative;
}

.cart_header {
	width: 800px;
	margin-left: 150px;
	height: 5px;
}

.cartbutton {
	border: none;
	cursor: pointer;
	background: #fff;
}

.cart-content h1 {
	font-size: 14px;
	border-top: 1px solid #eee;
	height: 30px;
	line-height: 31px;
	margin-top: 30px;
}

.cartImg {
	width: 60px;
	height: 60px;
	border-radius: 5px;
	margin-right: 10px;
}

.cart-content {
	width: 100%;
	height: 250px;
}

.cart-content ul {
	padding-top: 20px;
}

.cart-content ul li {
	    float: left;
    margin-top: 0px;
    padding-top: 0px;
    display: flex;
    flex-direction: column;
    align-items: flex-start;
}

.cartdelbutton {
	width: 15px;
	height: 15px;
	margin-right: 10px;
	padding-top: 20px;
}

#cart-content_checkbox {
	margin: 0px 10px 0px 15px;
}

.cart-color {
	width: 704px;
	height: 50px;
	background: #eee;
	border-radius: 5px;
	padding: 10px;
	display: inline-block;
	text-align: left;
	margin-top: 10px;
}

.cart-option {
	display: block;
	margin-top: 15px;
}

.cart-footer{
	width: 723px;
	margin-top:20px;
	display: inline-block;
}
#besongpay{
	font-size: 14px;
	border-top: 1px solid #eee;
	height: 30px;
	line-height: 31px;
	border-bottom: none;
	margin-top: 30px;
}

.cart-price{
	width: 305px;
	height: 150px;
	background: #fff;
    margin-left: 40px;
    margin-top: 40px;
    display: flex;
    flex-direction: column;
    align-items: flex-start;
    padding: 30px;
    text-align: left;
        border: 1px solid #eee;
        border-radius: 5px;
    
}

.cart-price div{
	width:300px;
	margin-bottom: 22px;
}

.cart-price span{
	float: right;
}

.commerce-cart_content{
	    width: 950px;
	    margin-left: 200px;
	    
}

.cart-buy_button{
	    width: 361px;
    height: 50px;
    margin-left: 40px;
    margin-top: 20px;
    background: #35c5f0;
    border: none;
    color: #fff;
    font-weight: bold;
    font-size: 16px;
    border-radius: 5px;
    
}
}


.cartchar{

}

.session2{
	width: 500px;
    height: 403px;
    margin: 0 auto;
    
    display: flex;
    flex-wrap: wrap;
    flex-direction: column;
    justify-content: center;
    align-items: center;
}


#cart_order-btn{
	border: none;
	cursor: pointer;
	background: #35C5f0;
	width: 220px;
	height: 50px;
	color: #fff;
	font-size: 18px;
	font-weight: bold;
	margin-top: 15px;
	border-radius: 5px;
}


.session{
	border-radius: 10px;
}

#allcheck, .check{
 -ms-transform: scale(1.5); /* IE */
  -moz-transform: scale(1.5); /* FF */
  -webkit-transform: scale(1.5); /* Safari and Chrome */
  -o-transform: scale(1.5); /* Opera */
  padding: 5px;
	    width: 13px;


}
</style>
</head>
<body>
	
<%

  List<CartDTO> list2 = (List<CartDTO>)request.getAttribute("cartList");  	
if(list2.size() !=0){
%>

<div class="cart_container">

		
<div class="commerce-cart_content">
<div class="cart_header">

			<label style="float: left"> <input type="checkbox" id="allcheck" /> <span>모두선택</span>
			</label>

			<button class="cart_delete cartbutton"
				style="float: right; background: #f5f5f5;" id="delbtn">선택삭제</button>

		</div>
		
<%
	  List<CartDTO> list = (List<CartDTO>)request.getAttribute("cartList"); 	



	 	 for(int i = 0; i <list.size() ;i++){
	 		  CartDTO dto = list.get(i); 
	 		int cartno = dto.getCartno();  
	 		String userid = dto.getUserid();  
	 		int productno = dto.getProductno();  
	 		int amount = dto.getAmount();
	 		int delivery = dto.getDelivery();
	 		String caddress = dto.getCaddress();  
	 		String pimage = dto.getPimage();
	 		String pname = dto.getPname();
	 		String poption = dto.getPoption()  ;
	 		String poption2 = dto.getPoption2() ; 
	 		int price = dto.getPrice();
	 		String pcolor = dto.getPcolor();
	 		int salesrate = dto.getSalesrate();  
	 		
	 		
	 
		
	%> 
	

		<div class="session">

	
			<div class="cart-content">
			
			

				<h1 style="border-bottom: 1px solid gray; border-bottom-color: #eee"><%=caddress %></h1>
				

				<ul style="float: left;">
					<li><input type="checkbox" id="cart-content_checkbox" class="check" name="check" value="<%=cartno%>" 	></li>
					<li><img alt="" src="img/<%=pimage %>.jpg" class="cartImg"></li>
					<li>
						<p><%=pname%></p><br>
						<%-- <p style="font-size: 12px"> <%=delivery %></p> --%>
						<%
					 	if(delivery ==0){ 
					 	%> 
					 	<p style="font-size: 12px; color: gray;"  >무료배송</p>
					 	
					 	 <%}else{ %> 
					 	 <p  style="font-size: 12px;color: gray;">배송비 <%=list.get(i).getDelivery() %>원</p>
					 	 <%} %> 
					</li>
					
				</ul>

				<button class="cartbutton" style="float: right;" >
					<img alt="" src="img/cartdelbutton2.jpg" class="cartdelbutton" id="delonebutton" data-xxx="<%= cartno %>">
				</button>


	
				<div class="cart-color">
					<%=poption %>
					<!-- <button class="cartbutton" style="float: right; background: #eee;">
						<img alt="" src="img/cartdelbutton.jpg">
					</button> -->


					<div class="cart-option">
						<select size="1">
							<option value="1">1</option>
							<option value="2">2</option>
							<option value="3">3</option>
							<option value="4">4</option>
							<option value="5">5</option>
							<option value="6">6</option>
							<option value="7">7</option>
							<option value="8">8</option>
							<option value="9">9</option>
							<option value="10">10+</option>
						</select>
						<%-- <p style="float: right;"><%=price%></p> --%>
					</div>

				</div>


	<%if(poption2 !=null) {%>	
				<div class="cart-color">
					<%=poption2 %>

					<!-- <button class="cartbutton" style="float: right; background: #eee;">
						<img alt="" src="img/cartdelbutton.jpg">
					</button> -->


					<div class="cart-option">
						<select size="1">
							<option value="1">1</option>
							<option value="2">2</option>
							<option value="3">3</option>
							<option value="4">4</option>
							<option value="5">5</option>
							<option value="6">6</option>
							<option value="7">7</option>
							<option value="8">8</option>
							<option value="9">9</option>
							<option value="10">10+</option>
						</select>
						<%-- <p style="float: right;"><%=price %></p> --%>

					</div>
					
				</div>
			<%}else{ %>
				
			<%} %>
			
				
			
				
				<div class="cart-footer">
						<button class="cartbutton" style="float: left">옵션변경</button>
						<button class="cartbutton" style="float: left">바로구매</button>
						
						<p style="float: right;"><%=price  %>원</p>
						
						
					
						
						
				</div>
				
						<%
					 	if(delivery ==0){ 
					 	%> 
					 	<h1>배송비 무료</h1>
					 	
					 	 <%}else{ %> 
					 	 <h1 >배송비 <%=list.get(i).getDelivery() %>원</h1>
					 	 <%} %> 
					 	 <input type="hidden" value="<%=list.get(i).getDelivery() %>" class="deliveryAll">
					 	 <input type="hidden" value="<%=list.get(i).getPrice() %>" class="priceAll">
					 	 
					
		
			
			</div>
			
		
	
		 </div> 
		  <%} %>
		  
		</div>
		
		<div class="cart-buy">
			<div class="cart-price" >
				<div>총 상품금액<span id="allsum" class="priceSum"></span></div>
				<div>총 배송비<span id="all" class="deliverySum"></span></div>
				<div>총 할인금액<span>-0원</span></div>
				<div style="font-weight: bold; margin-top: 15px;" >
				결제금액
				<span style="font-size: 25px" class="totalSum"> 12345원</span>
				</div>
			</div>
			
			
			<button  class="cart-buy_button">구매하기</button>
			
			
			
		
		</div>
		
	</div>
	
	
	<%} else{%>
	
	
	
		<div class="cart_container">
		<div class="session2">
		
		<a><img alt="" src="img/cartchar.jpg" width="160px" height="120px" id="cartchar"></a>
		
		<button id="cart_order-btn">상품 담으러 가기</button>
		</div>
		
		</div>
		
		
	<%} %>
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
<script type="text/javascript">
$(document).ready(function() {
	
		//배송비 합계
		var deliverysum = 0;
	    
		$('.deliveryAll').each(function(){ //클래스가 money인 항목의 갯수만큼 진행
			deliverysum += Number($(this).val()); 
		});
		console.log(deliverysum);
		
		$(".deliverySum").text("+"+deliverysum + "원");
		
		//가격 합계
	
		var pricesum = 0;
	    
		$('.priceAll').each(function(){ //클래스가 money인 항목의 갯수만큼 진행
			pricesum += Number($(this).val()); 
		});
		console.log(pricesum);
		
		$(".priceSum").text(pricesum + "원");
		
		//총 합계
		$(".totalSum").text(pricesum + deliverysum+ "원");
		
		
		
		
	
	//전체선택
	$("#allcheck").on("click", function() {
		var result = this.checked;
		$(".check").each(function(idx, data) {
			this.checked = result;
		});
	});
	
	//선택된 녀석만 삭제
	$("#delbtn").on("click", function() {
		var num=[];
		$("input:checkbox[name='check']:checked").each(function(idx, data) {
			num[idx]=$(this).val();
		});
			
		
		
		location.href = "/aconProject/CartDelservlet?data="+num;
		
	});
	
	
	//삭제 버튼 클릭시 삭제
	$(".cartdelbutton").on("click",function(){
		
		var num= $(this).attr("data-xxx");
    	location.href= "/aconProject/CartOneDelservlet?cartno="+num;
		
	});
	
	
	
	
	//전체 주문버튼
   // $(".cart-buy_button").on("click",function(){
    	
    	/* var num=[];
    	$("input:checkbox[name='check']:checked").each(function(idx,ele){
    		num[idx]=$(this).val();
    	});
    	console.log(num);
		 */
	  
    /* 
			   	$("form").attr("action", "orderCartservlet");
			  	$("form").submit();// trigger */
			  	 
    
    	
   // }); 
	
	
  $(".cart-buy_button").on("click",function(){
    	var num=[];
    	$("input:checkbox[name='check']:checked").each(function(idx,ele){
    		num[idx]=$(this).val();
    	});
    	console.log(num);
    	
    	
    	if(num.length!=0){
	  
    		location.href="/aconProject/orderCartservlet?data="+num;
    		
    	}else{
    		
    		alert("선택한 상품이 없습니다");
    	}
    	  
    	 
    }); 
	

	
});


</script>
</body>
</html>
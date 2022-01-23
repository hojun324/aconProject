<%@page import="gagu.dto.gaguDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style type="text/css">
.productions_container{
	padding-top: 150px;
		position: relative;
		display: flex;
		flex-direction: column;
		text-align: center;
		background: #f5f5f5;

}

.productions{
	 display: flex;
    flex-direction: row;
    flex-wrap: wrap;
        margin: auto;
}

</style>
<title>Insert title here</title>
</head>
<body>
<%

		gaguDTO gdto = (gaguDTO)request.getAttribute("gDTO");
		


%>
	<div class="productions_container">
		<div class="productions">
		
		
		
		
			<div>
				<img alt="" src="img/1.jpg">
			</div>
		
			<div>
				<span>제조사</span><br>
				<span>pname</span>
				<span>disper</span> <span>price</span>
				<span>delivery</span>  
				<select>
					<option>option1</option>
					<option>option2</option>
				</select>
				
				<div>
					<span>주문금액</span>
					<span>상품가격</span>
				</div>
				<form action="goodsAddServlet">
				    <input type="hidden" name="productno" value="<%=gdto.getProductno()%>">
				     <input type="hidden" name="pname" value="<%=gdto.getPname()%>"> 
				     <input type="hidden" name="price" value="<%=gdto.getPrice()%>"> 
				     <input type="hidden" name="pimage" value="<%=gdto.getPimage()%>">
				     <input type="hidden" name="delivery" value="<%=gdto.getDelivery()%>">
				     <input type="hidden" name="salesrate" value="<%=gdto.getSalesrate()%>">
				     <input type="hidden" name="amount" value="<%=gdto.getAmount()%>">
				     <input type="hidden" name="category" value="<%=gdto.getCategory()%>">
				     <input type="hidden" name="brand" value="<%=gdto.getBrand()%>">
				     <input type="hidden" name="vcount" value="<%=gdto.getVcount()%>">
				     <input type="hidden" name="option1" value="<%=gdto.getOption1()%>">
				     <input type="hidden" name="option2" value="<%=gdto.getOption2()%>">
				     <input type="hidden" name="disper" value="<%=gdto.getDisper()%>">
				<button >장바구니</button>
				</form>
				<button class="nowbuy" value="<%= gdto.getProductno()%>">바로구매</button>
			</div>
		
		
		
		</div>
		
		
		<div>
			<form action="CartOrderServlet">
			<h1>장바구니에 상품을 담았습니다.</h1>
			<button class="cartmove" >장바구니 보러가기</button>
			</form>
		</div>
		
		
		
	
	</div>
	<script type="text/javascript">
	$(document).ready(function(){
		
		var num;
		$(".nowbuy").on("click", function(){
			num = $(this).val();
			console.log(num);
			
			location.href="/aconProject/orderCartservlet?data="+num;
			
			
	
		});
		
	
		
	});
	
	
	
	</script>
</body>
</html>
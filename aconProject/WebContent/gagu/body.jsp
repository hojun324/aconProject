<%@page import="gagu.dto.gaguDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">


<style type="text/css">
.gagulist_container{
		padding-top: 127px;
		position: relative;
		display: flex;
		flex-direction: column;
		text-align: center;
		background: #f5f5f5;
	
}

.goodslist{
    display: flex;
    flex-direction: row;
    flex-wrap: wrap;
    
    
}

/* .goods{
	margin-right: 10px;
} */

.gagulist{
	    max-width: 1200px;
	    margin: auto;

    
</style>


<title>Insert title here</title>
</head>
<body>
<%
List<gaguDTO> glist = (List<gaguDTO>)request.getAttribute("gagulist");
List<gaguDTO> slist = (List<gaguDTO>)request.getAttribute("salelist");
List<gaguDTO> blist = (List<gaguDTO>)request.getAttribute("bestlist");
%>

	<div class="gagulist_container">
	
		<div class="gagulist">
		
		
		<h1>오늘의딜</h1>
			<div class="todaysale goodslist">	
				<% 
				
				  for(int i = 0; i <slist.size() ;i++){
					 gaguDTO dto = slist.get(i); 
			 		 int delivery = dto.getDelivery(); 
			 		 
			 		
			 		if(i<4){
				%>
				
				<div style="width: 300px;" class="goods">
					
				 	<a href="goodsSerlvet?productno=<%=slist.get(i).getProductno()%>"><img alt="" src="img/1.jpg" width="269px;" height="269px;"></a>
				 	<div>
					 	 <span><%=slist.get(i).getBrand() %></span><br> 
					 	<span>상품이름</span><br>
					 	<span>할인율</span>
					 	<span>가격</span><br>
					 	<span>reviewcount</span>
					 	<%
					 	if(delivery ==0){ 
					 	%> 
					 	<span>배송비 무료</span>
					 	 <%}else{ %> 
					 	<span>배송비 <%=slist.get(i).getDelivery() %>원</span>
					 	 <%} %> 
				 	</div>
					
				</div>
				
				<%} %>
			<%} %> 
			
			</div>
			
			
			<h1>베스트</h1>
			<div class="bestsale goodslist">
			
				
				
				<% 
				
				  for(int i = 0; i <blist.size() ;i++){
					 gaguDTO dto = blist.get(i); 
			 		 int delivery = dto.getDelivery(); 
			 		 
			 		if(i<4){
			 		
				%>
				
				<div style="width: 300px;" class="goods">
					
				 	<a href="goodsSerlvet?productno=<%=blist.get(i).getProductno()%>"><img alt="" src="img/1.jpg" width="269px;" height="269px;"></a>
				 	<div>
					 	 <span><%=blist.get(i).getBrand() %></span><br> 
					 	<span>상품이름</span><br>
					 	<span>할인율</span>
					 	<span>가격</span><br>
					 	<span>reviewcount</span>
					 	<%
					 	if(delivery ==0){ 
					 	%> 
					 	<span>배송비 무료</span>
					 	 <%}else{ %> 
					 	<span>배송비 <%=blist.get(i).getDelivery() %>원</span>
					 	 <%} %> 
				 	</div>
					
				</div>
				
				<%} %>
				<%} %> 
			</div>
			
			
			
			<h1>전체상품</h1>
			<div class="allgoos goodslist">
			
				
				
				<% 
				
				  for(int i = 0; i <glist.size() ;i++){
					 gaguDTO dto = glist.get(i); 
			 		 int delivery = dto.getDelivery(); 
			 		 
			 		
			 	
				%>
				
				<div style="width: 300px;" class="goods">
					
				 	<a href="goodsSerlvet?productno=<%=glist.get(i).getProductno()%>"><img alt="" src="img/1.jpg" width="269px;" height="269px;"></a>
				 	<div>
					 	 <span><%=glist.get(i).getBrand() %></span><br> 
					 	<span>상품이름</span><br>
					 	<span>할인율</span>
					 	<span>가격</span><br>
					 	<span>reviewcount</span>
					 	<%
					 	if(delivery ==0){ 
					 	%> 
					 	<span>배송비 무료</span>
					 	 <%}else{ %> 
					 	<span>배송비 <%=glist.get(i).getDelivery() %>원</span>
					 	 <%} %> 
				 	</div>
					
				</div>
				
				<%} %>
			 
			
			
			</div>
			
			
			
			
			
			
		</div>
	</div>

</body>
</html>
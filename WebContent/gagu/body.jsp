<%@page import="gagu.dto.gaguDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">


<style type="text/css">
.gagulist_container {
	padding-top: 55px;
	position: relative;
	display: flex;
	flex-direction: column;
	text-align: center;
	/* background: #f5f5f5; */
}

.goodslist {
	display: flex;
    flex-direction: row;
    flex-wrap: wrap;
    justify-content: space-between;
    padding: 0px;
    
}
.goods{
	text-align: left;
}
.goodslist img{
	border-radius: 5px;
}
.gagulist {
	max-width: 1200px;
	margin: auto;
}

.gagulist h1 {
	font-size: 19px;
	font-weight: bold;
	text-align: left;
	margin-bottom: 30px;
}

.todaysale ,.bestsale{
	margin-bottom: 95px;
}


.allgoods .goods{
	margin-bottom: 30px;
}
.brand{
	font-size: 12px;
	color: gray;
}

.pname{
	font-size: 13px;
	color: black;
}

.price{
font-weight: bold;

}
.delivery{
	font-size: 12px;
	color: gray;
}

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


			<h1>할인상품</h1>
			<div class="todaysale goodslist">
				<% 
				
				  for(int i = 0; i <slist.size() ;i++){
					 gaguDTO dto = slist.get(i); 
			 		 int delivery = dto.getDelivery(); 
			 		 
			 		
			 		if(i<4){
				%>

				<div style="width: 269px;" class="goods" >

					<a href="goodsSerlvet?productno=<%=slist.get(i).getProductno()%>"><img
						alt="" src="img/<%=slist.get(i).getPimage() %>.jpg" width="269px;"
						height="269px;"></a>
					<div>
						<span class="brand"><%=slist.get(i).getBrand() %></span><br> <span class="pname"><%=slist.get(i).getPname() %></span><br>
						<span style="color: #35c5f0; font-weight: bold;" ><%=slist.get(i).getDisper()%>%</span> 
						<span class="price"><%=slist.get(i).getPrice() %>원</span><br> <span></span>
						<%
					 	if(delivery ==0){ 
					 	%>
						<span class="delivery">무료 배송</span>
						<%}else{ %>
						<span class="delivery">배송비 <%=slist.get(i).getDelivery() %>원
						</span>
						<%} %>
					</div>

				</div>

				<%} %>
				<%} %>

			</div>


			<h1>베스트 상품</h1>
			<div class="bestsale goodslist">



				<% 
				
				  for(int i = 0; i <blist.size() ;i++){
					 gaguDTO dto = blist.get(i); 
			 		 int delivery = dto.getDelivery(); 
			 		 
			 		if(i<4){
			 		
				%>

				<div style="width: 269px;" class="goods">

					<a href="goodsSerlvet?productno=<%=blist.get(i).getProductno()%>"><img
						alt="" src="img/<%=blist.get(i).getPimage() %>.jpg" width="269px;" height="269px;"></a>
					<div>
						<span class="brand"><%=blist.get(i).getBrand() %></span><br> <span class="pname"><%=blist.get(i).getPname() %></span><br>
						<span  style="color: #35c5f0; font-weight: bold;"><%=blist.get(i).getDisper()%>%</span> 
						<span class="price"><%=blist.get(i).getPrice() %>원</span><br> <span></span>
						<%
					 	if(delivery ==0){ 
					 	%>
						<span class="delivery">무료 배송</span>
						<%}else{ %>
						<span class="delivery">배송비 <%=blist.get(i).getDelivery() %>원
						</span>
						<%} %>
					</div>

				</div>

				<%} %>
				<%} %>
			</div>



			<h1>전체상품</h1>
			<div class="allgoods goodslist">



				<% 
				
				  for(int i = 0; i <glist.size() ;i++){
					 gaguDTO dto = glist.get(i); 
			 		 int delivery = dto.getDelivery(); 
			 		 
			 		
			 	
				%>

				<div style="width: 269px;" class="goods">

					<a href="goodsSerlvet?productno=<%=glist.get(i).getProductno()%>"><img
						alt="" src="img/<%=glist.get(i).getPimage() %>.jpg" width="269px;" height="269px;"></a>
					<div>
						<span class="brand"><%=glist.get(i).getBrand() %></span><br> <span class="pname"><%=glist.get(i).getPname() %></span><br>
						<span  style="color: #35c5f0; font-weight: bold;"><%=glist.get(i).getDisper()%>%</span> 
						<span class="price"><%=glist.get(i).getPrice() %>원</span><br> <span></span>
						<%
					 	if(delivery ==0){ 
					 	%>
						<span class="delivery">무료 배송</span>
						<%}else{ %>
						<span class="delivery">배송비 <%=glist.get(i).getDelivery() %>원
						</span>
						<%} %>
					</div>

				</div>

				<%} %>



			</div>






		</div>
	</div>

</body>
</html>
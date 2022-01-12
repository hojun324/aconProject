<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
  header{
	position: static;
}   
.cart_container{
	text-align: center;
	
	
}
</style>
</head>
<body>
	<div class="cart_container">
	
	
		<input type="checkbox">모두선택<br>
		<p>선택삭제</p>
		<form style="border: 1px solid black; width: 500px; float: left;">
			<input type="checkbox"> <a><img alt="" src=""></a>
			"상품이름" <br> 색상 : "=color" / 사이즈 : "=size"<br> <select
				size="1">
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
			</select> 가격 : "=price"
		</form>

		<form action="#"
			style="border: 1px solid black; width: 500px; float: right;">
			총 상품금액<br> 총 배송비<br> 총 할인금액<br> 결제금액 <input
				type="submit" value="1개 상품 구매하기">
		</form>



	</div>

</body>
</html>
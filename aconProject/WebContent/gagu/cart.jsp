<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
header {
	position: static;
}

.cart_container {
	text-align: center;
	background: #eee;
	position: relative;
	padding-top: 30px;
	padding-bottom: 100px;
	display: flex;
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
	height: 24px;
}

.cartbutton {
	border: none;
	cursor: pointer;
	background: #fff;
}

.cart-content h1 {
	font-size: 14px;
	border-bottom: 1px solid #eee;
	height: 30px;
	line-height: 31px;
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
    margin-left: 50px;
    margin-top: 24px;
    display: flex;
    flex-direction: column;
    align-items: flex-start;
    padding: 30px;
    text-align: left;
    
}

.cart-price div{
	width:300px;
	margin-bottom: 28px;
}

.cart-price span{
	float: right;
}

.commerce-cart_content{
	    width: 950px;
	    margin-left: 146px;
	    
}

.cart-buy_button{
	width: 360px;
	height: 50px;
	    margin-left: 51px;
    margin-top: 20px;
}
</style>
</head>
<body>
	<div class="cart_container">

		

<div class="commerce-cart_content">
<div class="cart_header">

			<label style="float: left"> <input type="checkbox" /> <span>모두선택</span>
			</label>

			<button class="cart_delete cartbutton"
				style="float: right; background: #eee;">선택삭제</button>

		</div>
	<%-- 	<%for(int i = 0; i < 5;i++){
		
	%> --%>

		<div class="session">


			<div class="cart-content">

				<h1>주식회사 보보 배송</h1>
				<!-- h1 의 제목값은 %= 배송지%>" -->

				<ul style="float: left;">
					<li><input type="checkbox" id="cart-content_checkbox"></li>
					<li><img alt="" src="img/cartimg_test1.jpg" class="cartImg"></li>
					<li>
						<p>[로보락] [4.8만원쿠폰] 로보락 S7 Plus 물걸레 로봇청소기(1/17~순차배송)</p>
					</li>
				</ul>

				<button class="cartbutton" style="float: right;">
					<img alt="" src="img/cartdelbutton2.jpg" class="cartdelbutton">
				</button>

				<div class="cart-color">
					블리바 휴지통 단품 (아이보리 화이트)

					<button class="cartbutton" style="float: right; background: #eee;">
						<img alt="" src="img/cartdelbutton.jpg">
					</button>


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
						<p style="float: right;">19,900원</p>
					</div>

				</div>

				<div class="cart-color">
					블리바 휴지통 단품 (아이보리 화이트)

					<button class="cartbutton" style="float: right; background: #eee;">
						<img alt="" src="img/cartdelbutton.jpg">
					</button>


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
						<p style="float: right;">19,900원</p>

					</div>
					
				</div>
				
				<div class="cart-footer">
						<button class="cartbutton" style="float: left">옵션변경</button>
						<button class="cartbutton" style="float: left">바로구매</button>
						
						<p style="float: right;">69,900원</p>
				</div>
				
				<h1 id="besongpay">배송비 여부</h1>
					


			</div>

		</div>
		<%-- <%} %> --%>
		</div>
		<div class="cart-buy">
			<div class="cart-price" >
				<div>총 상품금액<span>12345</span></div>
				<div>총 배송비<span>12345</span></div>
				<div>총 할인금액<span>12345</span></div>
				<div>결제금액<span>12345</span></div>
			</div>
			
			
			<button class="cart-buy_button">4개 상품 구매하기</button>
			
		
		</div>
		
	</div>

</body>
</html>
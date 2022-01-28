<%@page import="java.util.List"%>
<%@page import="gagu.dto.CartDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style type="text/css">

button{
	border: none;
}
.order_container {
	text-align: center;
	background: #fff;
	position: relative;
	padding-top: 200px;
	padding-bottom: 100px;
	display: flex;
	margin: 0 auto;
	    margin-left: 45px;
}

#orders {
	border: 1px solid gray;
	width: 300px;
	height: 300px;
	text-align: left;
}

.order-payment {
	width: 700px;
	margin-left: 304px;
	text-align: left;
}

.Tid{
	margin-left: 105px;
	
	    width: 400px;
}
.Tid div {
	margin-bottom: 10px;

}


.order_container input,select{
	padding: 8px;	
    width: 250px;
    border-radius: 5px;
    border: 2px solid #eee;
    margin-bottom: 12px;
 
    }
    
    .daddress{
    	    font-size: 19px;
    font-weight: bold;
    color: #424242;
    }
    
    .cart-orderhtn{
    	    background: #35c5f0;
    padding: 12px;
    color: #eee;
    font-weight: bold;
    font-size: 17px;
        width: 400px;
        border-radius: 3px;
    }
    
  .orderform-price{
  	display: flex;
    justify-content: space-between;

  }
    
    
</style>
</head>





<body>
	<div class="order_container">
		<div class="order-payment">
			<h1 style="font-size: 22px;font-weight: bold; margin-bottom: 40px;">주문/결제</h1><br>
			<div style=" color: #424242;font-size: 19px;font-weight: bold;border-bottom: 1px solid #eee;height: 33px; margin-bottom: 20px;">주문자</div>
			<section  style=" margin-bottom: 80px;"  >
				
				이름 <input type="text" id="mname" style="margin-bottom: 18px; margin-left: 33px;"><br> 
				이메일 <input type="text" value="이메일"  style=" margin-left: 18px;">@
				<select style="    padding: 8px;width: 250px;"></select><br>
				 <br> 휴대전화 <select id="mphone1" style="margin-left: 3px;"></select> <input
				 
					type="text" id="mphone2">
			
			</section>

			<section style=" margin-bottom: 80px;">
				<div>
					<div style=" color: #424242;font-size: 19px;font-weight: bold;border-bottom: 1px solid #eee;height: 33px; margin-bottom: 20px;">배송지</div>
					<div> 
							위와 동일하게 채우기<input type="checkbox" name="copybtn" id="copybtn"> 
					</div>
				</div>
				
				받는사람 <input type="text" id="ordername"> <br>
				연락처 <select id="phone1"></select> <input type="text" id="phone2"> <br> 
				주소 	<input type="text" name="post" id="sample4_postcode" placeholder="우편번호">
					<input type="button" onclick="sample4_execDaumPostcode()" value="우편번호 찾기"><br>
					<input type="text" name="addr1" id="sample4_roadAddress" placeholder="도로명주소">
					<input type="text" name="addr2" id="sample4_jibunAddress" placeholder="지번주소">
					<br>
				<select>
					<option>배송시 요청사항을 선택해주세요</option>
				</select>
			</section>
<div  style=" color: #424242;font-size: 19px;font-weight: bold;border-bottom: 1px solid #eee;height: 33px; margin-bottom: 20px;">주문상품</div>
			<section style=" margin-bottom: 80px; border: 1px solid #eee" >
				
				
				
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
				<div class="orderbox">
					<div style="display: flex;justify-content: space-between; background: #f7f8fa; padding: 11px; margin-bottom: ">
						<div><%=caddress %></div>
						
						<div>
							<%
								 	if(delivery ==0){ 
								 	%> 
								 	<h1>배송비 무료</h1>
								 	
								 	 <%}else{ %> 
								 	 <h1 >배송비 <%=list.get(i).getDelivery() %>원</h1>
							 <%} %> 
						
						</div>
					</div>
					
					
					<div style="  padding: 20px;display: flex;flex-direction: row;">
						<div>	
								<img alt="" src="img/<%=pimage%>.jpg" width="64px;" height="64px;" style="border-radius: 5px; margin-right: 10px;" >						
						</div>
						<div style="padding-top: 8px;">
							<span> <%=pname %></span><br>
							<span style="font-size: 13px;color: #757575;"> <%=poption %>&nbsp;/</span><span  style="font-size: 13px;color: #757575;"> <%=poption2 %></span><br>
							<span style="font-weight: bold;"> <%=price %>원</span>&nbsp;<span style="color: #757575;">&nbsp;| <%=amount %>개</span>						
						</div>
						
					</div>
				</div>
				
				
				
				
				<%} %> 

			</section>

			<section style=" margin-bottom: 80px;">
				<div style=" color: #424242;font-size: 19px;font-weight: bold;border-bottom: 1px solid #eee;height: 33px; margin-bottom: 20px;">포인트</div>
			

				<div>
					<input type="text">
					<button></button><br>
					<span>사용 가능 포인트 "point"+"p"</span>
				</div>

			</section>


			<section style=" margin-bottom: 80px;">
				<div style=" color: #424242;font-size: 19px;font-weight: bold;border-bottom: 1px solid #eee;height: 33px; margin-bottom: 20px;">결제수단</div>
	
				<div>
					<ul>
						<li></li>
						<li></li>
						<li></li>
						<li></li>

					</ul>
				</div>

				<select></select><br>
				 <select></select>
			</section>
			
			<div>
			<h1>카드 결제 혜택</h1>
			- 삼성전자 세일 페스타, 우리카드/롯데카드 결제 시 5% 즉시할인 (최대 3만원), 1/12~1/26
			- 삼성전자 노특북&디지털가전 기획전, 우리카드 결제 시 5% 즉시할인 (최대 3만원), 1/17~1/23
			
			</div>
			
			


		</div>
		
		
		<section class="Tid">
				<div class="cart-orderform" style="border: 1px solid #eee; margin-bottom: 25px; text-align: left; padding: 20px;" >
					<div style="color: #424242; font-weight: bold; font-size: 20px; margin-bottom: 30px">결제금액</div>
					<div class="orderform-price">
						<div>총 상품금액</div>
						<div>totalprice</div>
					</div>
	
					<div class="orderform-price" >
						<div>배송비</div>
						<div>delpay</div>
					</div>
	
					<div class="orderform-price">
						<div>포인트 사용</div>
						<div>-point</div>
					</div>
	
					
					<div class="orderform-price" style="border-top: 1px solid #eee; padding-top: 27px;">
						<div>최종 결제 금액</div>
						<div>398,000원</div>
					</div>
					<hr>
	
					<div >
						<label> <input type="checkbox"> <span>아래 내용에
								모두 동의합니다.(필수)</span>
						</label>
						
						<div>
							<button>개인정보 수집 이용 및 제 3자 제공 동의</button><br>
							<button>결제대행 서비스 이용약관 동의</button>
							<div>본인은 만 14세 이상이며, 주문 내용을 확인하였습니다.</div>
						</div>
					</div>
				</div>
				
				<button onclick="location.href='orderDoneServlet'"  class="cart-orderhtn" >
				(총 상품금액 + 배송비 - 포인트) 원 결제하기</button>

			</section>
		
	</div>
	
	<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
	<script type="text/javascript">
		$(document).ready(function (){
			
			
			$("#copybtn").on("click", function(){
				if(this.checked){
					$("#ordername").val($("#mname").val());
					$("#phone1").val($("#mphone1").val());
					$("#phone2").val($("#mphone2").val());
					
				}else{
					$("#ordername").val("");
					$("#phone1").val("");
					$("#phone2").val("");
					
				}
					
			});
			
			
		
		});
		
	
	    //본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
	    function sample4_execDaumPostcode() {
	        new daum.Postcode({
	            oncomplete: function(data) {
	                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

	                // 도로명 주소의 노출 규칙에 따라 주소를 조합한다.
	                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
	                var fullRoadAddr = data.roadAddress; // 도로명 주소 변수
	                var extraRoadAddr = ''; // 도로명 조합형 주소 변수

	                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
	                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
	                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
	                    extraRoadAddr += data.bname;
	                }
	                // 건물명이 있고, 공동주택일 경우 추가한다.
	                if(data.buildingName !== '' && data.apartment === 'Y'){
	                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
	                }
	                // 도로명, 지번 조합형 주소가 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
	                if(extraRoadAddr !== ''){
	                    extraRoadAddr = ' (' + extraRoadAddr + ')';
	                }
	                // 도로명, 지번 주소의 유무에 따라 해당 조합형 주소를 추가한다.
	                if(fullRoadAddr !== ''){
	                    fullRoadAddr += extraRoadAddr;
	                }

	                // 우편번호와 주소 정보를 해당 필드에 넣는다.
	                document.getElementById('sample4_postcode').value = data.zonecode; //5자리 새우편번호 사용
	                document.getElementById('sample4_roadAddress').value = fullRoadAddr;
	                document.getElementById('sample4_jibunAddress').value = data.jibunAddress;

	                // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
	                if(data.autoRoadAddress) {
	                    //예상되는 도로명 주소에 조합형 주소를 추가한다.
	                    var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
	                    document.getElementById('guide').innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';

	                } else if(data.autoJibunAddress) {
	                    var expJibunAddr = data.autoJibunAddress;
	                    document.getElementById('guide').innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';

	                } else {
	                    document.getElementById('guide').innerHTML = '';
	                }
	            }
	        }).open();
	    }
	
	
	</script>
</body>
</html>
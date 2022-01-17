<%@page import="java.sql.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.text.SimpleDateFormat" %>
    
<script type="text/javascript" src="js/jquery-3.3.1.js"></script>
<script type="text/javascript">
    $(document).ready(function(){
    	//form 서브밋
 $("form").on("submit",function(event){		
	 var userid = $("#userid").val();
	 var passwd = $("#passwd").val();
    		if(userid.length==0){
    			alert("userid 필수")
    			$("#userid").focus();
    			event.preventDefault();
    		}else if(passwd.length==0){
    			alert("passwd 필수")
    			$("#passwd").focus();
    			event.preventDefault();
    		}
    	});
//비번일치확인
 $("#passwd2").on("keyup",function(){
		var passwd = $("#passwd").val();
		var mesg = "비밀번호가 일치하지 않습니다.";
		if(passwd == $(this).val()){
			mesg = "비밀번호가 일치합니다.";
		}
		$("#result2").text(mesg);
	});
//비번확인
 $("#passwd").on("keyup",function(){
		var passwd = $("#passwd").val();
		if(passwd.length <= 7){
		var	mesg = "필수 입력 항목입니다.";
		}
		$("#result3").text(mesg);
	});
	
//아이디확인
 $("#userid").on("keyup",function(event){	
	 $.ajax({
			type : "GET",
			url : "MemberIdCheckServlet",
			dataType : "text",
			data : {
				userid : $("#userid").val()
			},
			success : function(responseData, status, xhr) {
			    $("#result").text(responseData);
			},
			error : function(xhr, status, error) {
				console.log("error");
			}
		});
	 
 });
</script>    
<form action="MemberAddServlet" method="get">
아이디<br>
<input type="text" name="userid" id="userid"><br> 
비밀번호<br>
영문, 숫자를 포함한 8자 이상의 비밀번호를 입력해주세요.<br>
<input type="text" name="passwd" id="passwd"><br> 
<span id="result3"></span>
비밀번호확인<br>
<input type="text" name="passwd2" id="passwd2"><br>
<span id="result2"></span>
이름<br>
<input type="text" name="username"><br>
생년월일<br>
ex)YYYY/MM/DD<br>
<input type="text" name="brith"><br>
성별<br>
<select name="gender">
	<option value="male">남</option>
	<option value="female">여</option>
</select><br>
전화번호<br>
<input type="text" name="phone"><br>
이메일<br>
<input type="text" name="email"><br>

<input type="text" name="post" id="sample4_postcode" placeholder="우편번호">
<input type="button" onclick="sample4_execDaumPostcode()" value="우편번호 찾기"><br>
<input type="text" name="address" id="sample4_roadAddress" placeholder="도로명주소">
<input type="text" name="address2" id="sample4_jibunAddress" placeholder="지번주소">
<span id="guide" style="color:#999"></span>
<br>
직업<br>
<select name="job">
	<option value="학생">학생</option>
	<option value="직장인">직장인</option>
	<option value="자영업">자영업</option>
	<option value="프리랜서">프리랜서</option>
	<option value="무직">무직</option>
</select><br>
lifestyle<br>
<select name="lifestyle">
	<option value="딜라이트모먼트">딜라이트모먼트</option>
	<option value="디지털시크">디지털시크</option>
	<option value="소셜쇼오프">소셜쇼오프</option>
	<option value="미들스탠다드">미들스탠다드</option>
	<option value="포텐셜에너지">포텐셜에너지</option>
</select><br>

<!-- 포인트 -->
<input type="hidden" name="point" value=1000>
<input type="submit" value="회원가입하기">

</form>
이미 아이디가 있으신가요?<a href="LoginUIServlet">로그인</a>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script>
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
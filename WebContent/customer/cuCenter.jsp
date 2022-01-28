<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="gagu.dto.cuCenterDTO" %>
    <%@ page import="java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.cuCenter_container{
		padding-top: 150px;
	}
</style>
</head>
<body>
<div class="cuCenter_container">
	<p>고객센터</p><br>
	<p>운영시간 : 평일 09:00 ~ 18:00 (주말 & 공휴일 제외)</p>
	<p>이메일 : </p><a href="">이메일 문의하기</a><input type="button" value="이메일 주소 복사">
	<p>전화 : 1111-1111</p><br><br>
	
	<div class="contents_container">
	<a href="cuCenterServlet?category=배송관련">배송은 얼마나 걸리나요?</a><br><br>
	<a href="cuCenterServlet?category=취소/환불">주문 취소는 어떻게 하나요?</a><br><br>
	<a href="cuCenterServlet?category=서비스/기타">제품의 자세한 정보를 알고 싶어요.</a><br><br>
	<a href="cuCenterServlet?category=반품/교환">제품이 불량일 때는?</a><br><br>
	<a href="cuCenterServlet?category=로그인/회원정보">카카오 계정으로 로그인하면 이미 가입되었다고 합니다.</a><br><br><br>
	</div>
</div>
<jsp:include page="../common/cuTop.jsp" flush="true" /><br><br><br>
 <%
    List<cuCenterDTO> list = (List<cuCenterDTO>)request.getAttribute("contentsList");
    System.out.print(list);
    for(int i=1;i<=list.size();i++){
  		cuCenterDTO dto = list.get(i-1);
    	String title = dto.getTitle();
    	String content = dto.getContent();
 %>
		
		<a href="">
		Q <%=title %><br>
		</a>
		<br>
		<a href="">
		A <%=content %><br>
		</a>
		
 	<%
		if(i%1==0){
	%>	
	 	<tr>
			<td height="10">
			<hr>
		</tr>
	<%
    	} // end if
	%>

<%
    } // end for
%>


</body>
</html>
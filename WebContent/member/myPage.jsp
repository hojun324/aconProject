<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="gagu.dto.MemberDTO"%>
<script type="text/javascript" src="js/jquery-3.3.1.js"></script>
<script type="text/javascript">

</script>
<style>
	.mypage_container{
		padding-top: 200px;
		width: 200px;
		height: 300px;
		border: 2px solid black; 
	}
</style>
<%
   MemberDTO dto =(MemberDTO)session.getAttribute("login");
   String userid = dto.getUserid();
   String username = dto.getUsername();
   String post = dto.getPost();
   String address = dto.getAddress();
   String address2 = dto.getAddress2();
   String phone = dto.getPhone();
   String brith = dto.getBrith();
   String gender = dto.getGender();
   String email = dto.getEmail();
   String passwd = dto.getPasswd();
   String userdate = dto.getUserdate();
   String job = dto.getJob();
   String lifestyle = dto.getLifestyle();
   int point = dto.getPoint();
%>
<div class="mypage_container">
<table>
	<div>
		<ul>
			<a href=""><img src="img/mypageprofile1.png" alt="" width="100"></a><br>
			<h1 id="userid"><%=userid %></h1><br>
			<input type="button" value="설정" class="memberUpdate"><br><br>
			<hr><br>
			<input type="button" value="스크랩북" class="scrapbook">
			<input type="button" value="좋아요" class="like">
			<input type="button" value="내 쿠폰" class="myCoupon">
			
		</ul>
	</div>
</table>
</div>
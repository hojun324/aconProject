<%@page import="gagu.dto.QnaDTO"%>
<%@page import="gagu.dto.CommDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.questions_container {
	padding-top: 170px;
	position: relative;
	display: flex;
	flex-direction: column;
	text-align: center;
}

.questions {
	width: 1200px;
	margin: 0 auto;
}

.questions_content {
	width: 800px;
	text-align: left;
}
</style>
</head>
<body>
<%
	String wichino = (String)request.getAttribute("wichino");

	List<CommDTO> list = (List<CommDTO>)request.getAttribute("cDTO");
														

%>




	<div class="questions_container">

		<div class="questions">

			<div class="questions_content">


				<div class="questions_header">
					<div>
						<h1>질문과 답변</h1>
					</div>
					<div>title</div>
				</div>

				<div>
					<img alt="" src="img/qimg.jpg">

					<p>content</p>
					<ul>
						<li>cate</li>
					</ul>

					<div>wdate vcount</div>
				</div>


			
					<div>
						댓글 :  <%=list.size() %>  개<br>
						
						<input type="text" data-xxx="${wichino }" id="comment"><button class="commentAdd"></button>
						
						
					</div>
<%
			List<CommDTO> list2 = (List<CommDTO>)request.getAttribute("cDTO");

				for(int i=0; i<list.size();i++){
					CommDTO dto = list.get(i);
										

%>
 
				<div>
					<div>
							<span><%=dto.getUserid() %></span> <span><%=dto.getContent() %></span>
						</div>
						<div>
							<span><%=dto.getCdate() %></span> <span>좋아요</span>
						</div>

					</div>


<%} %>
				</div>





			</div>











			<div class="sidebar"></div>


		</div>









	
	<script type="text/javascript">
	$(document).ready(function(){
		
		
		$(".commentAdd").on("click", function() {
			var num = $("#comment").attr("data-xxx");
			var commtext = $("#comment").val();
			console.log(commtext);
			
			$.ajax({
			url: 'commentAddServlet',
			type:'get',
    		dataType:'text',
    		data:{
    			num:num,
    			commtext : commtext
    		},
    		success:function(data){
    			alert('댓글 추가 완료');
    			location.href="/aconProject/commentServlet?wichino="+${wichino};
    			
    			
    		},
    		error:function(xhr,status,error){
    			
    		}
				
				
			}) // end ajax
			
		
		});
		
		
		
		
		
		
		
		
		
	});
	
	</script>
</body>
</html>
<%@page import="gagu.dto.PageDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.io.Console"%>
<%@page import="gagu.dto.QnaDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>


    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>Insert title here</title>

<style type="text/css">
	.Qna_container{
		padding-top: 127px;
		position: relative;
/* 		display: flex; */
		flex-direction: column;
		text-align: center;
	}
	
	
	.Qna-header{
		height: 300px;
		background: #f7f8fa;
		text-align: center;
	
	}
	.Qna-header--content{
		padding-top: 10px;
		width: 500px;
		margin: auto;
		display: flex;
   		flex-direction: column;
	}
	
	.keyword{
		    display: flex;
    flex-direction: row;
    justify-content: space-between;
	
	}
	.feedcontent{
		width: 750px;
		padding-top: 20px;
		margin: auto;
	}
	
	.feedcontent-header{
		display: flex;
		justify-content: space-between;
	}
	
	
	.Notice{
	    display: flex;
 		flex-direction: column;
    	align-items: flex-start;
	}
	
	.questions{
		margin-top: 15px;
	}
	
</style>
</head>
<body>

<%
/* 	List<QnaDTO> list2 = (List<QnaDTO>)request.getAttribute("Qnalist");
	

	 for(int i=0; i<list2.size();i++){
		QnaDTO dto = list2.get(i);
		int wichino = dto.getWichino();
		int productno = dto.getProductno();
		String userid = dto.getUserid();
		String cate = dto.getCate();
		String writer = dto.getWriter();
		String wpasswd = dto.getWpasswd();
		String title = dto.getTitle();
		String content = dto.getContent();
		String wdate = dto.getWdate();
		int vcount = dto.getVcount(); 
	 	
	 }
	  */
	/*  List<QnaDTO> extractList = new ArrayList();
     for(int i=0; i<list.size();i++){
         if (i < 4 ){
             extractList.add(list.get(i));
         }
     } */
     PageDTO pDTO = (PageDTO) request.getAttribute("pDTO");
     List<QnaDTO> list2 = pDTO.getList();
     String seachval = (String)request.getAttribute("seachval");
	 
%>







	<div class="Qna_container">
	
	
		<div class="Qna-header">
	
			<div class="Qna-header--content">
				<h1>????????? ??????</h1>
				<p>???????????? ???????????? ???????????? ?????????????????? ????????? ???????????????.</p>
				<form action="quaServlet">
				<%if((seachval == null) || (seachval == "")) {%>
					<input type="text" name="seachval" value="????????? ?????? ??????????????????.">
				
				<%}else{ %>
					<input type="text" name="seachval" value="${seachval }">	
					<%} %>
				</form>
				
				
		
				<div class="keyword">
					<div> 
						<ul>
							<li>
								<%-- <%
							
								

								 for(int i=0; i<list2.size();i++){
									 if(i<4){
									QnaDTO dto = list2.get(i);
									String cate = dto.getCate();
									 
								%> --%>
							
								<a style="width: 100px; height: 30px; display: inline-block; border: 1px solid gray " >
								??????????????? ?????? ????????? ?????? ???
								
								</a>
				
								<%-- <%} %>
								<%} %> --%>
							</li>
						</ul>
					</div>
					
					<div>
						<button>????????? ?????????</button>
					</div>	
					
				</div>
				
				
				
			</div>
		</div>
		
		<div class="feedcontent">
		
			<div class="feedcontent-header">
				<div>
					<select></select>
				</div>
				<div>
					<button>????????? ??????????????????</button>
					<a>????????????</a>
				</div>
			</div>
			
			<div class="Notice">			
				<div >
					<span>??????</span>
					<a href="">????????? ??? ???????????? ????????? 	??????????????? ????</a>
					
				</div>
				<div>
					<span>??????</span>
					<a href="">?????? ????????? ?????? ??? ?????? ???????????? ????</a>
				</div>
				<div>
					<span>??????</span>
					<a href="">????????? ????????? ???????????? ????????? ?????? ??????????</a>
				</div>
			</div>
			
			
			<%
			for(int i=0; i<list2.size();i++){
				QnaDTO dto = list2.get(i);
				int wichino = dto.getWichino();
				int productno = dto.getProductno();
				String userid = dto.getUserid();
				String cate = dto.getCate();
				String writer = dto.getWriter();
				String wpasswd = dto.getWpasswd();
				String title = dto.getTitle();
				String content = dto.getContent();
				String wdate = dto.getWdate();
				int vcount = dto.getVcount(); 
				 
			
			%>
			<div class="questions">
				<a style="display: block; width: 100%; cursor: pointer; text-align: left;" href="commentServlet?wichino=<%=wichino %>">
					<div style="float: right;"><img alt="" src="img/.jsp"> </div>
					<div><%=title %></div>
					<div><%=content %></div>
					<div>
						<span>username</span>		
						<span><%=wdate %></span>
						<span>????????????</span>
						<span><%=vcount %></span>
						
				
					</div>
					
				
				</a>
			</div>
			<%} %>
			<%
				if(list2.size()==0){
			%>			
			<div>?????? ????????? ????????????</div>
			<%} %>
		
		</div>
		
		<%
			int curPage = pDTO.getCurPage();
	        int perPage = pDTO.getPerPage();
			int totalCount = pDTO.getTotalCount();
			int totalPage = totalCount/perPage;
			if(totalCount%perPage!=0) totalPage++;
			  for(int i=1; i<= totalPage; i++){
		          	if(i== curPage){
		          		out.print(i+"&nbsp;");
		          	}else{
		          		
		          			
		          		out.print("<a href='quaServlet?curPage="+i+"&seachval="+seachval+"'>"+i+"</a>&nbsp;");
		          		/* if(seachval==null){
		          			out.print("<a href='quaServlet?curPage="+i+"&seachval="+" "+"'>"+i+"</a>&nbsp;");
		          		} */
		          		
		          		
		          		/* ?curPage="+i+"&seachval="+seachval+"'>"+i+"</a>&nbsp;" */
		          	}
		        }//end for
		
		%>
		
		
		
		
		
	</div>
</body>
</html>
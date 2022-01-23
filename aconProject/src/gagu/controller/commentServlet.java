package gagu.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import gagu.dto.CommDTO;
import gagu.dto.MemberDTO;
import gagu.dto.QnaDTO;
import gagu.service.CommService;
import gagu.service.qnaService;

/**
 * Servlet implementation class commentServlet
 */
@WebServlet("/commentServlet")
public class commentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


		HttpSession session = request.getSession();
		MemberDTO dto = (MemberDTO)session.getAttribute("login");
		String nextPage = null;
		if(dto!=null) {
			String userid =dto.getUserid();	   
			String wichino = request.getParameter("wichino");
			/* System.out.println(wichino); */	
			/*
			 * qnaService qservice = new qnaService(); List<QnaDTO> qDTO =
			 * qservice.qnaList(null);
			 */
			/*
			 * for (QnaDTO qnaDTO : qDTO) { System.out.println(qnaDTO); }
			 */  		
			CommService cservice = new CommService(); 
			List<CommDTO> cDTO =cservice.commList(wichino);
			/* for (CommDTO commDTO : cDTO) { System.out.println(commDTO); } */
			request.setAttribute("wichino", wichino);
			request.setAttribute("cDTO", cDTO); 
			nextPage = "questions.jsp";
		}else {
			  nextPage = "LoginUIServlet";
			  session.setAttribute("mesg", "로그인이 필요한 작업입니다.");
		}







		RequestDispatcher dis = request.getRequestDispatcher(nextPage);
		dis.forward(request, response);

	}


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

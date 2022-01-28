package gagu.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import gagu.dto.CommDTO;
import gagu.dto.PageDTO;
import gagu.dto.QnaDTO;
import gagu.service.CommService;
import gagu.service.qnaService;

/**
 * Servlet implementation class questionsServlet
 */
@WebServlet("/quaServlet")
public class quaServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String curPage = request.getParameter("curPage");
		if(curPage == null) curPage = "1";

		String seachval = request.getParameter("seachval");
		System.out.println(seachval);
		if((seachval == null) || (seachval == "")) {
			seachval = "";
		}
		/*
		 * HashMap<String, String> map = new HashMap<String, String>();
		 * map.put("seachval", seachval);
		 */
		qnaService service = new qnaService();
		/* List<QnaDTO> qDTO = service.qnaList(map); */
		PageDTO pDTO = service.select(seachval, Integer.parseInt(curPage));
		/*
		 * for (QnaDTO qnaDTO : qDTO) { System.out.println(qnaDTO); }
		 */
		System.out.println(pDTO);
		/* for (QnaDTO qnaDTO : qDTO) { System.out.println(qnaDTO); } */
		/* for (CommDTO commDTO : cDTO) { System.out.println(commDTO + "<br>"); } */
		/* request.setAttribute("Qnalist", qDTO); */
		request.setAttribute("pDTO", pDTO);
		request.setAttribute("seachval", seachval);
		System.out.println(seachval);




		RequestDispatcher dis = request.getRequestDispatcher("Qna.jsp");
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

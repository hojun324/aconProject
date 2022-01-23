package gagu.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import gagu.dto.CommDTO;
import gagu.dto.MemberDTO;
import gagu.service.CommService;

/**
 * Servlet implementation class commentAddServlet
 */
@WebServlet("/commentAddServlet")
public class commentAddServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String num = request.getParameter("num");
		String commtext = request.getParameter("commtext");
		//System.out.println(num);
		//System.out.println(commtext);

		HttpSession session = request.getSession();
		MemberDTO dto = (MemberDTO)session.getAttribute("login");
		String userid =dto.getUserid();
		//String userid = (String) session.getAttribute("userid");
		//System.out.println(userid);
		CommDTO cDTO = new CommDTO();
		cDTO.setWichino(Integer.parseInt(num));
		cDTO.setContent(commtext);
		cDTO.setUserid(userid);

		CommService cService = new CommService(); 
		int n = cService.commInsert(cDTO);
		System.out.println(n);	 

		List<CommDTO> cdto =  cService.commList2();
		/*
		 * for (CommDTO commDTO : cdto) { System.out.println(commDTO); }
		 */
		request.setAttribute("dto", cdto);



	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

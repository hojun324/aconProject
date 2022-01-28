package gagu.controller.main;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import gagu.dto.gaguDTO;
import gagu.service.gaguService;

/**
 * Servlet implementation class MainServlet
 */
@WebServlet("/main")
public class MainServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		gaguService gService = new gaguService();
		List<gaguDTO> glist = gService.gagulist();	
		List<gaguDTO> salelist = gService.salelist();
		List<gaguDTO> bestlist = gService.bestlist();
		
		  for (gaguDTO g : glist) { System.out.println(g); }
		
		/*
		 * for (gaguDTO b : bestlist) { System.out.println(b); }
		 */
		/*
		 * for (gaguDTO s : salelist) { System.out.println(s); }
		 */

		request.setAttribute("salelist", salelist);
		request.setAttribute("gagulist", glist);
		request.setAttribute("bestlist", bestlist);
		
		RequestDispatcher dis = request.getRequestDispatcher("main.jsp");
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

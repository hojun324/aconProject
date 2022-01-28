package gagu.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import gagu.dto.gaguDTO;
import gagu.service.gaguService;

/**
 * Servlet implementation class goodsSerlvet
 */
@WebServlet("/goodsSerlvet")
public class goodsSerlvet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String productno = request.getParameter("productno");
		/* System.out.println(productno); */
		gaguService gService = new gaguService();
		gaguDTO gDTO = gService.goodsselect(productno);
		/* System.out.println(gDTO); */
		
		request.setAttribute("gDTO", gDTO);
		
		
		RequestDispatcher dis = request.getRequestDispatcher("productions.jsp");
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

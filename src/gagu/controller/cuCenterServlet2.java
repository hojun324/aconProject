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

import gagu.dto.cuCenterDTO;
import gagu.service.CuCenterService;

/**
 * Servlet implementation class cuCenterServlet
 */
@WebServlet("/cuCenterServlet2")
public class cuCenterServlet2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		CuCenterService service = new CuCenterService();
		List<cuCenterDTO> list = service.contentsList1("category");
		request.setAttribute("contentsList", list);
		RequestDispatcher dis = request.getRequestDispatcher("cuCenter.jsp");
		dis.forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

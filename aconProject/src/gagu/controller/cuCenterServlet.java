package gagu.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import gagu.dto.cuCenterDTO;
import gagu.service.CuCenterService;

/**
 * Servlet implementation class cuCenterServlet
 */
@WebServlet("/cuCenterServlet")
public class cuCenterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String category = request.getParameter("category");
		if (category==null) {
			category = "주문/결제";
		}
		CuCenterService service = new CuCenterService();
		List<cuCenterDTO> list = service.contentsList(category);
		request.setAttribute("contentsList", list);
		
		RequestDispatcher dis = request.getRequestDispatcher("cuCenter.jsp");
		dis.forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

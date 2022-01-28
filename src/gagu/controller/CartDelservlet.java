package gagu.controller;

import java.io.IOException;
import java.util.Arrays;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import gagu.service.CartService;

/**
 * Servlet implementation class CartDelservlet
 */
@WebServlet("/CartDelservlet")
public class CartDelservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String data = request.getParameter("data");
		System.out.println(data);

		String[] x = data.split(",");
		List<String> list = Arrays.asList(x);

		CartService service = new CartService();
		int n = service.cartdelAll(list);
		//	       System.out.println(n);

		response.sendRedirect("CartOrderServlet");
		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

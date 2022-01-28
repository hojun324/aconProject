package gagu.controller;

import java.io.IOException;
import java.sql.Date;
import java.util.HashMap;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import gagu.dto.MemberDTO;

import gagu.dto.CartDTO;
import gagu.service.CartService;

/**
 * Servlet implementation class CartOrder
 */
@WebServlet("/CartOrderServlet")
public class CartOrderServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		   
		 HttpSession session = request.getSession();
		 MemberDTO dto = (MemberDTO)session.getAttribute("login");
		 System.out.println(dto);
		 String nextPage = null;
		 
		 if(dto!=null) {
		String userid =dto.getUserid();
		System.out.println(userid);
		
		CartService service = new CartService();
		List<CartDTO> list = service.cartList(userid);
		for (CartDTO cartDTO : list) {
			System.out.println(cartDTO);
		}
		/* for (CartDTO dto : list) { System.out.println(dto); } */
		 
		request.setAttribute("cartList", list);
		nextPage = "cart.jsp";
		
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

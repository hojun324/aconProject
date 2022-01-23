package gagu.controller;

import java.io.IOException;
import java.util.Arrays;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import gagu.dto.MemberDTO;
import gagu.service.MemberService;

import gagu.dto.CartDTO;
import gagu.service.CartService;

/**
 * Servlet implementation class orderCartservlet
 */
@WebServlet("/orderCartservlet")
public class orderCartservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


		HttpSession session = request.getSession();
		MemberDTO dto = (MemberDTO)session.getAttribute("login");
		String nextPage = null;
		if(dto!=null) {
			String userid =dto.getUserid();

			String data = request.getParameter("data");
			String[] x = data.split(",");
			List<String> list= Arrays.asList(x); 

			CartService cService = new CartService();
			List<CartDTO> cList = cService.orderAllConfirm(list);
			request.setAttribute("cartList", cList); 
			System.out.println(cList);
			nextPage = "orderform.jsp";
		}else {
			nextPage = "LoginUIServlet";
			session.setAttribute("mesg", "로그인 필요!.");
		}




		/*
		 * HttpSession session = request.getSession(); MemberDTO dto =
		 * (MemberDTO)session.getAttribute("login"); MemberService mService = new
		 * MemberService(); String userid=dto.getUserid(); MemberDTO mDTO =
		 * mService.mypage(userid); request.setAttribute("memberDTO", mDTO);
		 * System.out.println(mDTO);
		 */



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

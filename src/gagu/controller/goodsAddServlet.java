package gagu.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import gagu.dto.CartDTO;
import gagu.dto.MemberDTO;
import gagu.service.CartService;

/**
 * Servlet implementation class goodslistServlet
 */
@WebServlet("/goodsAddServlet")
public class goodsAddServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		HttpSession session = request.getSession();
		MemberDTO dto = (MemberDTO)session.getAttribute("login");
		String nextPage = null;
		if(dto!=null) {
			String userid =dto.getUserid();  

			String productno = request.getParameter("productno");
			String pname  = request.getParameter("pname");
			String  price  = request.getParameter("price");
			String pimage  = request.getParameter("pimage");
			String delivery  = request.getParameter("delivery");
			String salesrate  = request.getParameter("salesrate");
			String amount  = request.getParameter("salesrate");
			String category  = request.getParameter("category");
			String brand  = request.getParameter("brand");
			String vcount  = request.getParameter("vcount");
			String option1  = request.getParameter("option1");
			String option2  = request.getParameter("option2");
			String disper  = request.getParameter("disper");

			CartDTO cDTO = new CartDTO();
			
			cDTO.setUserid(userid);
			cDTO.setProductno(Integer.parseInt(productno));
			cDTO.setPname(pname);
			cDTO.setPrice(Integer.parseInt(price));
			cDTO.setPimage(pimage);
			cDTO.setDelivery(Integer.parseInt(delivery));
			cDTO.setSalesrate(Integer.parseInt(salesrate));
			cDTO.setAmount(Integer.parseInt(amount));
			cDTO.setCaddress(brand);
			cDTO.setPoption(option1);
			cDTO.setPoption2(option2);

			CartService cService = new CartService();
			int n = cService.cartAdd(cDTO);

			System.out.println(n);


			nextPage = "goodsSerlvet?productno="+productno;

		}else {
			nextPage = "LoginUIServlet";
			session.setAttribute("mesg", "로그인이 필요한 작업입니다.");
		}




		response.sendRedirect(nextPage);






	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

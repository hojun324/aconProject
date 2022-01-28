package gagu.controller.member;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import gagu.dto.MemberDTO;
import gagu.service.MemberService;

/**
 * Servlet implementation class MyPageServlet
 */
@WebServlet("/MyPageServlet")
public class MyPageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MyPageServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 HttpSession session = request.getSession();
	      MemberDTO dto = (MemberDTO)session.getAttribute("login");
		 String nextPage = null;
	      if(dto!=null) {
			  nextPage = "myPage.jsp";
             String userid = dto.getUserid();
             
             MemberService service = new MemberService();
             MemberDTO x = service.mypage(userid);
             session.setAttribute("login", x);
             System.out.println("mypage이동");
	      }else {
			  nextPage = "LoginUIServlet";
			  request.setAttribute("mesg", "로그인이 필요한 작업입니다.");
		  }
	      RequestDispatcher dis =
	    		  request.getRequestDispatcher(nextPage);
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

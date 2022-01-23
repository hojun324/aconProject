package gagu.controller.member;

import java.io.IOException;
import java.sql.Date;
import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import gagu.dto.MemberDTO;
import gagu.service.MemberService;
import com.sun.media.sound.EmergencySoundbank;
import com.sun.org.apache.xerces.internal.impl.xpath.regex.ParseException;

/**
 * Servlet implementation class MemberUIServlet
 */
@WebServlet("/MemberAddServlet")
public class MemberAddServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
		String userid = request.getParameter("userid");
		String passwd = request.getParameter("passwd");
		String username = request.getParameter("username");
		String post = request.getParameter("post");
		String address = request.getParameter("address");
		String address2 = request.getParameter("address2");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		int point = Integer.parseInt(request.getParameter("point"));
		String gender = request.getParameter("gender");
		String job = request.getParameter("job");
		String lifestyle = request.getParameter("lifestyle");
		String brith = request.getParameter("brith");
		String userdate = request.getParameter("userdate");
		
		//sysout확인 
		
		
		
		MemberDTO dto =
				new MemberDTO(userid, passwd, username, post, address, address2,
						phone, email, point, brith, gender, userdate, job,
						lifestyle);
		//sysout
	
		
		MemberService service = new MemberService();
		int n = service.memberAdd(dto);
		//sysout
		
		
		HttpSession session = request.getSession(); if(n>0)
		{session.setAttribute("memberAdd", "회원가입성공");};
		session.setMaxInactiveInterval(60*60);
		response.sendRedirect("main");
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

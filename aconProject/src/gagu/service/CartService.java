package gagu.service;

import java.util.List;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;

import org.apache.ibatis.session.SqlSession;

import gagu.dao.MemberDAO;

import gagu.config.MySqlSessionFactory;
import gagu.dao.CartDAO;
import gagu.dto.CartDTO;

public class CartService {
	
	
	private CartDAO dao;
	
	
	public CartService() {
		dao = new   CartDAO();
	}


	public List<CartDTO> cartList(String userid) {
		SqlSession session = MySqlSessionFactory.getSession();
		List<CartDTO> list = null;
	
		try {
			list = dao.cartList(session, userid);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}
		
		
		return list;
	}


	public int cartdelAll(List<String> list) {
		SqlSession session =  MySqlSessionFactory.getSession();
		int n = 0 ;
		
		try {
			CartDAO dao = new CartDAO();
			n = dao.cartdelAll(session, list);
			session.commit();
		} catch (Exception e) {
				e.printStackTrace();
		}finally {
			session.close();
		}

		return n;
	}


	public int cartdel(int num) {
		SqlSession session = MySqlSessionFactory.getSession();
		int n = 0;
		
		try {
			CartDAO dao = new CartDAO();
			n = dao.cartdel(session, num);
			session.commit();
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}

		return n;
	}


	
	
	public List<CartDTO> orderAllConfirm(List<String> x) {
		
		SqlSession session = MySqlSessionFactory.getSession();
		List<CartDTO> list = null;
		try {
			CartDAO dao = new CartDAO();
			 list = dao.orderAllConfirm(session, x);
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}
		return list;
		
	}


	public int cartAdd(CartDTO cDTO) {
		SqlSession session = MySqlSessionFactory.getSession();
		int n = 0;
		
		try {
			CartDAO dao = new CartDAO();
			n = dao.cartAdd(session, cDTO);
			session.commit();
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}

		return n;
	}

	


	

}

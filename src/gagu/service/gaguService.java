package gagu.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import gagu.config.MySqlSessionFactory;
import gagu.dao.gaguDAO;
import gagu.dto.QnaDTO;
import gagu.dto.gaguDTO;

public class gaguService {
	
private gaguDAO dao;
	
	
	public gaguService() {
		dao = new gaguDAO();
	}
	
	
	

	public List<gaguDTO> gagulist() {
		SqlSession session = MySqlSessionFactory.getSession();
		List<gaguDTO> list = null;
		
		try {
			list = dao.gagulist(session);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}
		
		
		return list;
	}




	public List<gaguDTO> salelist() {
		SqlSession session = MySqlSessionFactory.getSession();
		List<gaguDTO> list = null;
		
		try {
			list = dao.salelist(session);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}
		
		
		return list;
	}




	public List<gaguDTO> bestlist() {
		SqlSession session = MySqlSessionFactory.getSession();
		List<gaguDTO> list = null;
		
		try {
			list = dao.bestlist(session);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}
		
		
		return list;
	}




	public gaguDTO goodsselect(String productno) {
		SqlSession session = MySqlSessionFactory.getSession();
		gaguDTO list = null;
		
		try {
			list = dao.goodsselect(session, productno);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}
		
		
		
		return list;
	}

}

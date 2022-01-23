package gagu.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import gagu.config.MySqlSessionFactory;

import gagu.dao.CartDAO;
import gagu.dao.QnaDAO;
import gagu.dto.CartDTO;
import gagu.dto.PageDTO;
import gagu.dto.QnaDTO;

public class qnaService {
	
private QnaDAO dao;
	
	
	public qnaService() {
		dao = new QnaDAO();
	}


	public List<QnaDTO> qnaList(HashMap<String, String> map) {
		SqlSession session = MySqlSessionFactory.getSession();
		List<QnaDTO> list = null;
		
		try {
			list = dao.qnaList(session,map);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}
		
		
		return list;
	}


	public PageDTO select(String seachval, int curPage) {
		HashMap<String, String> map = new HashMap<>();
		map.put("seachval", seachval);
		
		
		 SqlSession session = MySqlSessionFactory.getSession();
		 PageDTO pDTO = null;
		 try {
			 pDTO = dao.select(session,map, curPage);
	    	  
//	      }catch(Exception e) {
//	    	  e.printStackTrace();
	      }finally {
			session.close();
	      }
	      return pDTO;
	}

}

package gagu.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import gagu.config.MySqlSessionFactory;
import gagu.dao.CommDAO;
import gagu.dao.QnaDAO;
import gagu.dto.CommDTO;
import gagu.dto.QnaDTO;

public class CommService {
	
private CommDAO dao;
	
	
	public CommService() {
		dao = new CommDAO();
	}

	public List<CommDTO> commList(String wichino) {
		SqlSession session = MySqlSessionFactory.getSession();
		List<CommDTO> list = null;
		
		try {
			list = dao.commList(session, wichino);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}
		
		
		return list;
	}

	

	public int commInsert(CommDTO cDTO) {
		SqlSession session = gagu.config.MySqlSessionFactory.getSession();
		int n = 0;
		
		try {
			n  = dao.commInsert(session, cDTO);
			session.commit();
		} catch (Exception e) {
				e.printStackTrace();
		}finally {
			session.close();
		}
		
		return n;
	}

	public List<CommDTO> commList2() {
		SqlSession session = MySqlSessionFactory.getSession();

		List<CommDTO> list = null;
		
		try {
			list = dao.commList2(session);
		} catch (Exception e) {
			// TODO: handle exception
		}finally {
			session.close();
		}
		return list;
	}

}

package gagu.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import gagu.config.MySqlSessionFactory;
import gagu.dao.cuCenterDAO;
import gagu.dto.cuCenterDTO;

public class CuCenterService {

	 public List<cuCenterDTO> contentsList(String category) {
			SqlSession session = MySqlSessionFactory.getSession();
			List<cuCenterDTO> list = null;
			try {
				 cuCenterDAO dao = new cuCenterDAO();
				 list = dao.contentsList(session, category);
			}catch(Exception e) {
				e.printStackTrace();
			}finally {
				session.close();
			}
			return list;
		}//end idCheck
	
	 public List<cuCenterDTO> contentsList1(String category) {
			SqlSession session = MySqlSessionFactory.getSession();
			List<cuCenterDTO> list = null;
			try {
				 cuCenterDAO dao = new cuCenterDAO();
				 list = dao.contentsList1(session, category);
			}catch(Exception e) {
				e.printStackTrace();
			}finally {
				session.close();
			}
			return list;
		}//end idCheck
}

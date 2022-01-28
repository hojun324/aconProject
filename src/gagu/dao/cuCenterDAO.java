package gagu.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import gagu.dto.cuCenterDTO;

public class cuCenterDAO {

	public List<cuCenterDTO> contentsList(SqlSession session, String category) {
		List<cuCenterDTO> list = 
				session.selectList("cuCenterMapper.contentsList", category);
		return list;
	}

	public List<cuCenterDTO> contentsList1(SqlSession session, String category) {
		List<cuCenterDTO> list = 
				session.selectList("cuCenterMapper.contentsList1", category);
		return list;
	}

	
}

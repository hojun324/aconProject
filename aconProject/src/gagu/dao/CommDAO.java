package gagu.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import gagu.dto.CommDTO;
import gagu.dto.QnaDTO;

public class CommDAO {

	public List<CommDTO> commList(SqlSession session, String wichino) {
		List<CommDTO> list = session.selectList("CommMapper.commList", wichino);
		return list;
		
	}

	public int commInsert(SqlSession session, CommDTO cDTO) {
		int n = session.insert("CommMapper.commInsert", cDTO);
		return n;
	}

	public List<CommDTO> commList2(SqlSession session) {
		List<CommDTO> list = session.selectList("CommMapper.commList2");
		return list;
	}

}

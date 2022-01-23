package gagu.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import gagu.dto.CommDTO;
import gagu.dto.gaguDTO;

public class gaguDAO {

	public List<gaguDTO> gagulist(SqlSession session) {
		List<gaguDTO> list = session.selectList("gaguMapper.gagulist");
		return list;
	}

	public List<gaguDTO> salelist(SqlSession session) {
		List<gaguDTO> list = session.selectList("gaguMapper.salelist");
		return list;
	}
	
	public List<gaguDTO> bestlist(SqlSession session) {
		List<gaguDTO> list = session.selectList("gaguMapper.bestlist");
		return list;
	}

	public gaguDTO goodsselect(SqlSession session, String productno) {
		gaguDTO list = session.selectOne("gaguMapper.goodsselect", productno);
		return list;
	}

	

}

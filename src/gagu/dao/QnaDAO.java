package gagu.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;

import gagu.dto.PageDTO;
import gagu.dto.QnaDTO;

public class QnaDAO {

	public List<QnaDTO> qnaList(SqlSession session, HashMap<String, String> map) {
		List<QnaDTO> list = session.selectList("QnaMapper.qnaList", map); 
		/* System.out.println(map); */
		return list;
	}

	public PageDTO select(SqlSession session, HashMap<String, String> map, int curPage) {
		
		
		PageDTO pDTO = new PageDTO();
		int perPage = pDTO.getPerPage();
		int offset = (curPage - 1) * perPage;
		
		List<QnaDTO> list =  session.selectList("QnaMapper.selectAll" , map , new RowBounds(offset, perPage));
		
		pDTO.setCurPage(curPage);
		pDTO.setList(list);
		pDTO.setTotalCount(totalCount(session,map));
		
		return pDTO;
	}

	private int totalCount(SqlSession session, HashMap<String, String> map) {
		return session.selectOne("QnaMapper.totalCount",map);
	}

	/*
	 * public List<QnaDTO> qnaList(SqlSession session) {
	 * 
	 * List<QnaDTO> list = session.selectList("QnaMapper.qnaList",session); return
	 * list;
	 * 
	 * }
	 */

}

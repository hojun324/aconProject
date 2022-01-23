package gagu.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import gagu.dto.CartDTO;

public class CartDAO {

	public List<CartDTO> cartList(SqlSession session, String userid) {
		List<CartDTO> list = session.selectList("CartMapper.cartList",userid);
		return list;
	}

	public int cartdelAll(SqlSession session, List<String> list) {
		int  n = session.delete("CartMapper.cartdelete", list);
		return n;
	}

	public int cartdel(SqlSession session, int num) {
		int n = session.delete("CartMapper.cartDel", num);
		return n;
	}

	public List<CartDTO> orderAllConfirm(SqlSession session, List<String> x) {
		List<CartDTO> n = session.selectList("CartMapper.orderAllConfirm", x);
		return n;
	}

	public int cartAdd(SqlSession session, CartDTO cDTO) {
		int  n = session.delete("CartMapper.cartAdd", cDTO);
		return n;
	}

	

}

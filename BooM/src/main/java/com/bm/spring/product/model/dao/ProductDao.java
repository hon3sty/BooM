package com.bm.spring.product.model.dao;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.bm.spring.common.model.vo.PageInfo;
import com.bm.spring.product.model.vo.Cart;
import com.bm.spring.product.model.vo.Product;

@Repository
public class ProductDao {

	public ArrayList<Cart> cartGetList(SqlSessionTemplate sqlSession) {
		return (ArrayList) sqlSession.selectList("productMapper.selectCart");
	}

	public int productGetListCount(SqlSessionTemplate sqlSession) {
		return sqlSession.selectOne("productMapper.productGetListCount");
	}

	public ArrayList<Product> productGetList(SqlSessionTemplate sqlSession, PageInfo pi) {

		int limit = pi.getBoardLimit();
		int offset = (pi.getCurrentPage() - 1) * limit;

		RowBounds rowBounds = new RowBounds(offset, limit);

		return (ArrayList) sqlSession.selectList("productMapper.productGetList", null, rowBounds);
	}

	public int changeCount(SqlSessionTemplate sqlSession,Cart c) {
		return sqlSession.update("productMapper.changeCount",c);
	}

	public int cartDelete(SqlSessionTemplate sqlSession, int cno) {
		return sqlSession.delete("productMapper.cartDelete", cno);
	}

	public ArrayList<Cart> checkedCartList(SqlSessionTemplate sqlSession, ArrayList list) {
		return (ArrayList)sqlSession.selectList("productMapper.checkedCartList", list);
	}
}

package com.bm.spring.product.model.dao;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.bm.spring.common.model.vo.PageInfo;
import com.bm.spring.product.model.vo.Cart;
import com.bm.spring.product.model.vo.DateChk;
import com.bm.spring.product.model.vo.Order;
import com.bm.spring.product.model.vo.OrderList;
import com.bm.spring.product.model.vo.Product;

@Repository
public class ProductDao {

	public ArrayList<Cart> cartGetList(SqlSessionTemplate sqlSession, int mno) {
		return (ArrayList) sqlSession.selectList("productMapper.selectCart",mno);
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

	public int purchaseInsert(SqlSessionTemplate sqlSession, Order order) {
		return sqlSession.insert("productMapper.purchaseInsert",order);
	}

	public int orderDetailInsert(SqlSessionTemplate sqlSession, Order order) {
		return sqlSession.insert("productMapper.orderDetailInsert", order);
	}

	public ArrayList<Order> purchaseList(SqlSessionTemplate sqlSession, int mno) {
		return (ArrayList)sqlSession.selectList("productMapper.purchaseList",mno);
		}

	public ArrayList<Order> dateGet(SqlSessionTemplate sqlSession, Order order) {
		return (ArrayList)sqlSession.selectList("productMapper.dateList", order);
	}

	public ArrayList<Order> detailGetList(SqlSessionTemplate sqlSession, int ono) {
		return (ArrayList)sqlSession.selectList("productMapper.detailList",ono);
	}

	public Product productDetail(SqlSessionTemplate sqlSession, int pno) {
		return sqlSession.selectOne("productMapper.productDetail", pno);
	}
}

package com.bm.spring.product.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bm.spring.common.model.vo.PageInfo;
import com.bm.spring.product.model.dao.ProductDao;
import com.bm.spring.product.model.vo.Cart;
import com.bm.spring.product.model.vo.DateChk;
import com.bm.spring.product.model.vo.Order;
import com.bm.spring.product.model.vo.OrderList;
import com.bm.spring.product.model.vo.Product;

@Service
public class ProductServiceImpl implements ProductService {

	@Autowired
	private SqlSessionTemplate sqlSession;

	@Autowired
	private ProductDao productDao;

	@Override
	public ArrayList<Cart> cartGetList(int mno) {
		return productDao.cartGetList(sqlSession,mno);
	}

	@Override
	public int orderInsert() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int orderDelete() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public ArrayList<Order> orderGetList() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int productGetListCount() {
		return productDao.productGetListCount(sqlSession);
	}

	@Override
	public ArrayList<Product> productGetList(PageInfo pi) {
		return productDao.productGetList(sqlSession, pi);
	}

	@Override
	public Product productDetail(int pno) {
		return productDao.productDetail(sqlSession, pno);
	}

	@Override
	public int changeCount(Cart c) {
		return productDao.changeCount(sqlSession,c);
	}

	@Override
	public int cartDelete(int cno) {
		return productDao.cartDelete(sqlSession,cno);
	}

	@Override
	public ArrayList<Cart> checkedCartList(ArrayList list) {
		return productDao.checkedCartList(sqlSession,list);
	}

	@Override
	public int purchaseInsert(Order order) {
		return productDao.purchaseInsert(sqlSession,order);
	}

	@Override
	public int orderDetailInsert(Order order) {
		return productDao.orderDetailInsert(sqlSession,order);
	}

	@Override
	public ArrayList<Order> purchaseList(int mno) {
		return productDao.purchaseList(sqlSession,mno);
	}

	@Override
	public ArrayList<Order> dateGet(Order order) {
		return productDao.dateGet(sqlSession,order);
	}

	@Override
	public ArrayList<Order> detailGetList(int ono) {
		return productDao.detailGetList(sqlSession,ono);
	}

}

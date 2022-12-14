package com.bm.spring.product.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bm.spring.product.model.dao.ProductDao;
import com.bm.spring.product.model.vo.Cart;
import com.bm.spring.product.model.vo.Order;
import com.bm.spring.product.model.vo.Product;

@Service
public class ProductServiceImpl implements ProductService {

	@Autowired
	private SqlSessionTemplate sqlSession;

	@Autowired
	private ProductDao productDao;

	@Override
	public ArrayList<Cart> cartGetList() {
		return productDao.cartGetList(sqlSession);
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
	public ArrayList<Product> productGet() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int productDetail() {
		// TODO Auto-generated method stub
		return 0;
	}

	

}

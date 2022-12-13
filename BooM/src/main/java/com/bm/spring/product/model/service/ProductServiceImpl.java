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
	private ProductDao boardDao;

	@Override
	public ArrayList<Cart> cartGetList() {
		return null;
	}

	@Override
	public int orderInsert() {
		return 0;
	}

	@Override
	public int orderDelete() {
		return 0;
	}

	@Override
	public ArrayList<Order> orderGetList() {
		return null;
	}

	@Override
	public ArrayList<Product> productGet() {
		return null;
	}

	@Override
	public int productDetail() {
		return 0;
	}

}

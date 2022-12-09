package com.bm.spring.product.model.service;

import java.util.ArrayList;

import com.bm.spring.product.model.vo.Product;

public class ProductServiceImpl implements ProductService {

	@Override
	public ArrayList<Product> productListGet() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Product productDetailGet(int productNo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ArrayList<Cart> cartGet(int productNo, int MemberNo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int cartInsert(int productNo, int MemberNo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public ArrayList<Order> orderListGet(int MemberNo) {
		// TODO Auto-generated method stub
		return null;
	}

}

package com.bm.spring.product.model.service;

import java.util.ArrayList;

import com.bm.spring.product.model.vo.Product;

public interface ProductService {

	// 전체 상품 조회
	ArrayList<Product> productListGet();

	// 상품 디테일 조회
	Product productDetailGet(int productNo);

	// 장바구니 조회
	ArrayList<Cart> cartGet(int productNo, int MemberNo);

	// 장바구니 삽입
	int cartInsert(int productNo, int MemberNo);

	// 주문상품 조회
	ArrayList<Order> orderListGet(int MemberNo);
	
	
	//변경

}

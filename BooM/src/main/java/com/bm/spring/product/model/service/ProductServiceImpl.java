package com.bm.spring.product.model.service;

import java.util.ArrayList;

import com.bm.spring.product.model.vo.Cart;
import com.bm.spring.product.model.vo.Order;

public class ProductServiceImpl {
	
	//장바구니 목록
	ArrayList<Cart> cartGetList;
	
	//상품 주문
	int orderInsert;
	
	//주문 취소
	int orderDelete;
	
	//구매 목록
	ArrayList<Order> orderGetList;
}

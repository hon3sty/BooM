package com.bm.spring.product.model.service;

import java.util.ArrayList;

import com.bm.spring.common.model.vo.PageInfo;
import com.bm.spring.product.model.vo.Cart;
import com.bm.spring.product.model.vo.DateChk;
import com.bm.spring.product.model.vo.Order;
import com.bm.spring.product.model.vo.OrderList;
import com.bm.spring.product.model.vo.Product;

public interface ProductService {

	// 장바구니 목록
	ArrayList<Cart> cartGetList(int mno);

	// 상품 주문
	int orderInsert();

	// 주문 취소
	int orderDelete();

	// 구매 목록
	ArrayList<Order> orderGetList();

	// 상품 개수
	int productGetListCount();

	// 상품 목록
	ArrayList<Product> productGetList(PageInfo pi);

	// 상품 상세
	int productDetail();
	
	//장바구니 수량 변경
	int changeCount(Cart c);
	
	//장바구니 삭제
	int cartDelete(int cno);
	
	//장바구니에서 체크된 목록 리스트
	ArrayList<Cart> checkedCartList(ArrayList list);
	
	//구매페이지에서 결제하기(order Info)
	int purchaseInsert(Order order);
	
	//구매페이지에서 결제하기(order Detail)
	int orderDetailInsert(Order order);
	
	//구매목록 리스트
	ArrayList<Order> purchaseList(int mno);
	
	//날짜 조회 후 구매목록 리스트
	ArrayList<Order> dateGet(Order order);

	ArrayList<Order> detailGetList(int ono);

}

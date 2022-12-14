package com.bm.spring.product.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bm.spring.product.model.service.ProductService;
import com.bm.spring.product.model.vo.Cart;

@Controller
public class ProductController {
	
	@Autowired
	private ProductService productService;
	
	//상품 목록
	@RequestMapping("productList.pd")
	public String productList() {
		return "product/PD_0010";
	}
	
	// 상품 상세
	@RequestMapping("productDetail.pd")
	public String productDetail() {
		return "product/PD_0020";
	}
	
	//결제하기 페이지
	@RequestMapping("productPurchase.pd")
	public String productPurchasList() {
		return "product/PD_0030";
	}
	
	//장바구니
	@RequestMapping("wishList.me")
	public String wishList(Model model) {
		ArrayList<Cart> list = productService.cartGetList();
		
		model.addAttribute("list",list);
		
		System.out.println(list);
		
		return "mypage/MY_0030";
	}
	
	//구매목록
	@RequestMapping("purchaseList.me")
	public String purchaseList() {
		return "mypage/MY_0020";
	}
	
	
}

package com.bm.spring.product.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ProductController {
	
	//상품 목록
	@RequestMapping("productList.pd")
	public String myPage() {
		return "product/PD_0010";
	}
	
	//결제하기 페이지
	@RequestMapping("productPurchase.pd")
	public String productPurchasList() {
		return "product/PD_0030";
	}
	
	
}

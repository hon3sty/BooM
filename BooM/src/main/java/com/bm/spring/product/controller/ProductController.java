package com.bm.spring.product.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ProductController {
	
	// ī�װ� �̵�
	@RequestMapping("productList.pd")
	public String myPage() {
		return "product/PD_0010";
	}
}

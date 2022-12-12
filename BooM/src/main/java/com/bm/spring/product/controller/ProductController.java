package com.bm.spring.product.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ProductController {
	
	// 카테고리 이동
	@RequestMapping("productList.pd")
	public String myPage() {
		return "product/PD_0010";
	}
}

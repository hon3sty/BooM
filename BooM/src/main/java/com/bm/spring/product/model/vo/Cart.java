package com.bm.spring.product.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class Cart {
	private int cartNo;
	private int productNo;
	private int memberNo;
	private int cartCount;
	private Product product;
}

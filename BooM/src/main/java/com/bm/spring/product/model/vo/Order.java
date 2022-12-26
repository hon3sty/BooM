package com.bm.spring.product.model.vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class Order {
	private int orderDetailNo;
	private int orderNo;
	private String orderName;
	private int productNo;
	private int productCount;
	private int productPrice;
	private int memberNo;
	private String memberPhone;
	private Date orderDate;
	private String orderStatus;
	private Date expiryDate;
	private Product product;
	
	public Order(int productNo, int productCount, int productPrice) {
		super();
		this.productNo = productNo;
		this.productCount = productCount;
		this.productPrice = productPrice;
	}
	
	
}

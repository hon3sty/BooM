package com.bm.spring.product.model.vo;

import java.sql.Date;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class Product {
	private int productNo; 		// PRODUCT_NO
	private int categoryNo; 	// CATEGORY_NO
	private String productName; // PRODUCT_NAME
	private int productPrice;	// PRODUCT_PRICE
	private String productImg; 	// PRODUCT_IMG
	private String productDesc; // PRODUCT_DESC
	private Date productDate; 	// PRODUCT_DATE
	private String status; 		// STATUS
}
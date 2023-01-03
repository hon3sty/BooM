package com.bm.spring.movie.model.vo;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data
public class Multiplex {

	private int mpNo;
	private String lcCode;
	private String mpName;
	private String status;
}

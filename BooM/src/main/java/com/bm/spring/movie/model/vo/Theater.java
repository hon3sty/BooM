package com.bm.spring.movie.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class Theater {
	private int theaterNo;
	private int mpNo;
	private String theaterName;
	private int seatCount;
}

package com.bm.spring.movie.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data
public class ScheduleTimetable {

	private String timeNo;
	private String mpNo;
	private String theaterNo;
	private String mvNo;
	private String openDate;
	private String openTime; 
}

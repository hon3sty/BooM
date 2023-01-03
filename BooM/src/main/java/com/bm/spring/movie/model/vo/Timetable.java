package com.bm.spring.movie.model.vo;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data
public class Timetable {

	private int timeNo;
	private int mpNo;
	private String theaterNo;
	private int mvNo;
	private Date openDate;
	private int openTime; 
}

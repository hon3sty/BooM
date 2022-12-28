package com.bm.spring.movie.model.vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class Movie {
	private int mvNo;
	private String mvTitle;
    private String mvSubtitle;
	private String director;
	private String actor;
	private String rating;
	private String mvContent;
	private String mvKeyword;
	private String mvImg;
	private int mvCount;
	private int playTime;
	private Date openDate;
	private Date closeDate;
	private String dateStatus;
	private String mvStatus;
}
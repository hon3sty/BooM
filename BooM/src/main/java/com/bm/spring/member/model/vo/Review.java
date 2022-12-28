package com.bm.spring.member.model.vo;

import java.sql.Date;

import com.bm.spring.movie.model.vo.Movie;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class Review {
	private int reNo;
	private int memberNo;
	private int mvNo;
	private int reStar;
	private String reContent;
	private Date createDate;
	private String reStatus;
	private Movie movie;
}

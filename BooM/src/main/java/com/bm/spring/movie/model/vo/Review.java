package com.bm.spring.movie.model.vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data
public class Review {
	
private int reNo;//	RE_NO
private int memberNo;//	MEMBER_NO
private int mvNo;//	MV_NO
private double reStar;//	RE_STAR
private String reContent;//	RE_CONTENT
private Date reCreateDate; //RE_CREATEDATE
private String reStatus;//RE_STATUS
private Movie movie;

//리뷰 보여줄때 보여줄 작성자 Id 담아줄 변수
private String memberId;


}

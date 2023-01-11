package com.bm.spring.movie.model.vo;

import java.sql.Date;

import com.bm.spring.product.model.vo.DateChk;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data
public class Tsuccess {
	
private String tkNo;//	TK_NO 예매번호
private String memberNo;//	MEMBER_NO 주문자
private String mvNo;//	MV_NO 영화이름
private String theaterNo;//	THEATER_NO 상영관명 (멀티플렉스명)
private String timeNo;//	TIME_NO 오픈시간
private String mvPay;//	MV_PAY 결제수단
private int totalPrice;//	TOTALPRICE 총 가격
private String fieltkCancled;//	FIELTK_CANCLED 취소여부
private Date tsCreateDate;//	TS_CREATEDATE 예매일
private String status;//	STATUS

private String mvImg;//무비 이미지
private Date openDate; //관람일자
private DateChk mvDateChk; //예매내역 날짜검색할때 쓸거

}

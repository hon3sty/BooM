package com.bm.spring.movie.model.vo;

import java.sql.Date;
import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data
public class Tdetail {
	
private String tkDetailNo;//	TK_DETAILNO 예매상세번호
private String tkCode;//	TK_CODE 아이/어른
private String memberNo;//	MEMBER_NO 예매자명
private String tkNo;//	TK_NO 예매번호
private String theaterNo;//	THEATER_NO 상영관명(1관 2관...)
private String tkSeatNo;//	TK_SEATNO 좌석명
private Date tdCreateDate;//	TD_CREATEDATE 예매일(수정일)
private String status;//	STATUS  'Y'=예매 'N'=취소
private String mpName;//멀티플렉스 명
private int tkPrice; //한 사람당 가격 담아줄 변수 
private List<String> mvNoArray; // 에이젝스로 전달받은 tkDetailNo 배열



}

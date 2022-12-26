package com.bm.spring.product.model.vo;
//구매목록 날짜 조회용 VO

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class DateChk {
	private String startDate;
	private String endDate;
}

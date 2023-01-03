package com.bm.spring.movie.model.vo;

import java.util.ArrayList;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data
public class SelectValue {
	
	private String title;
	private String mvImg;
	private String playTime;
	private String mvLocation;
	private String multiplex;
	private String theaterNo;
	private String timetableNo;
	private String period;
	private String selectDay;
	private String selectTime;
	private String seatNo;
	private String adultNum;
	private String childNum;
	private String selectedSeats;
	private ArrayList<Ticket> ticketList;
	private String priceText;
	private String payment;
	private String memberNo;
	private String tsuccessNo;
}

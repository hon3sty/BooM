package com.bm.spring.movie.model.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.bm.spring.common.model.vo.PageInfo;
import com.bm.spring.movie.model.vo.Location;
import com.bm.spring.movie.model.vo.MLike;
import com.bm.spring.movie.model.vo.Movie;
import com.bm.spring.movie.model.vo.Multiplex;
import com.bm.spring.movie.model.vo.Review;
import com.bm.spring.movie.model.vo.ScheduleTimetable;
import com.bm.spring.movie.model.vo.Tdetail;
import com.bm.spring.movie.model.vo.Theater;
import com.bm.spring.movie.model.vo.Ticket;
import com.bm.spring.movie.model.vo.Timetable;
import com.bm.spring.movie.model.vo.Tsuccess;

public interface MovieService {
	
	//현재 상영중인 영화 제목 및 이미지 리스트
		ArrayList<Movie> nowScreenMoviegetList();
		
		//영화 제목 및 이미지 리스트
		ArrayList<Movie> movieGetList();
		
		//지역 리스트
		ArrayList<Location> locationGetList(String mvTitle);
		
		//영화관 리스트
		ArrayList<Multiplex> multiplexGetList(Map map);

		//시간표 리스트
		ArrayList<Timetable> timetableGetList(Map map);

		//가격표 리스트
		ArrayList<Ticket> ticketGetList();

		//TSUCCESS테이블 INSERT
		int ticketInsert(Map<String, String> map);

		//TSUCCESS테이블 NO가져오기
		String tsuccessNoInsert(Map<String, String> map);

		//현제 좌석 조회
		ArrayList<String> tDetailGetList(String timetableNo);
		
		//movie 수정
			int movieUpdate(Movie m);
			
		//movie 추가
			int movieInsert(Movie m);

		//movie 삭제
			int movieDelete(List<String> mvNoArr);
			
			
	//230109 도균
			//timetable 추가시 필요한 location 조회
			ArrayList<Location> scheduleLocationGetList();

			//timetable 추가시 필요한 Multiplex 조회
			ArrayList<Multiplex> scheduleMultiplexGetList(String lcName);

			//timetable 추가시 필요한 Theater 조회
			ArrayList<Theater> movieScheTheater(int mpNo);

			//timetable 추가
			int movieScheduleInsert(Map<String, String> map);

			//timetable 개수
			int selectTimetableCount();
			
			//timetable get
			ArrayList<ScheduleTimetable> scheduleTimetableGetList(PageInfo pi);

			//timetable delete
			int movieScheduleDelete(List<String> timeNoArr);		
	
	//----------------도균 끝

	//------------------연 시작
	ArrayList<Movie> movieGetAllList(PageInfo pi);

	Movie movieGetDetail(int mvNo);

	int increaseCount(int mvNo);

	ArrayList<Movie> sameKeywordMvGetList(int mvNo);

	int selectMovieCount();

	ArrayList<Movie> movieGetmvBest(PageInfo pi);

	ArrayList<Movie> movieGetmvHigh(PageInfo pi);

	ArrayList<Movie> movieGetmvNow(PageInfo pi);

	ArrayList<Movie> movieGetmvNew(PageInfo pi);

	int selectSearchMovieCount(String searchKeyword);

	ArrayList<Movie> movieGetmvSearch(PageInfo pi, String searchKeyword);

	int selectNowMovieCount();

	ArrayList<Review> movieReviewGetList(int mvNo);

	int movieReviewInsert(Review re);

	double movieStarAvgGet(int mvNo);

	int movieLikeInsert(MLike ml);

	MLike movieLikeCheckGet(MLike ml);

	int movieLikeDelete(MLike ml);

	ArrayList<Review> movieMyReviewGetList(int memberNo);


	//무비 리뷰 업데이트
	int movieReviewUpdate(Review r);

	//무비리뷰 삭제(업데이트)
	int movieReviewDelete(Review r);

	//마이페이지 영화 좋아요리스트
	ArrayList<Movie> movieMyMLikeGetList(int memberNo, PageInfo pi);

	//마이페이지 영화 좋아요 갯수  
	int selectMyMLikeMovieCount(int memberNo);

	//회원의 전체 예매내역 갯수 조회
	int selectMyTSuccessCount(int memberNo);

	//회원의 전체 예매내역 조회
	ArrayList<Tsuccess> movieMyTSuccessGetList(int memberNo, PageInfo pi);

	//예매내역 날짜검색결과 갯수
	int selectTicketDateCount(Tsuccess ts);

	//예매내역 날짜검색결과 리스트
	ArrayList<Tsuccess> movieTicketDateGetList(Tsuccess ts, PageInfo pi);

	//선택한 예매번호의 상세정보 조회1
	Tsuccess movieTSuccessGet(Tdetail td);
	
	//선택한 예매번호의 상세정보 조회2
	ArrayList<Tdetail> movieMyTDetailGetList(Tdetail td);

	//좋아요기반 추천영화리스트
	ArrayList<Movie> movieRecommendGetList(int memberNo);

	//예매내역 취소
	int myTicketDelete(Tdetail td);

	//예매 전체취소
	int myTicketAllDelete(Tdetail td);

	//예매 전체취소2
	int myTicketAlldelete2(Tdetail td);

	//예매부분취소2
	int myTicketDelete2(Tdetail td);

	//취소된 티켓 수
	int myCancleTicketCount(Tdetail td);
	
	//메인페이지 뮤비 리스트
	ArrayList<Movie> mainMovieGetList();

	

	

}

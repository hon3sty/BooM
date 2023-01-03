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
import com.bm.spring.movie.model.vo.Ticket;
import com.bm.spring.movie.model.vo.Timetable;

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

	//timetable 추가시 필요한 location 조회
	ArrayList<Location> scheduleLocationGetList();

	

	

}
